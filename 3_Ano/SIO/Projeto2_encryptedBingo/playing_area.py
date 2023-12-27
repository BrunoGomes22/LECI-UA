#!/bin/python

import sys
import socket
import selectors
import json
import messages as m
import asymCrypt as asym



def show_deck( deck ):   #show the deck in a 4x4 matrix
    square = ""
    for i in range( 0, 16, 4 ):
        row = ", ".join(str(num) for num in deck[i:i+4])
        square += row + "\n"
    square = "\n" + square
    square = "Current deck:" + "\n" + square
    return square

def dispatch( srv_socket , keypair):
    selector = selectors.DefaultSelector()

    srv_socket.setblocking( False )
    selector.register( srv_socket, selectors.EVENT_READ, data=None )
    clients = []
    players = []
    pub_keys = []
    public_key = keypair[0]
    public_key = asym.convert_pem_to_str(asym.public_key_to_pem(public_key)) #we need to convert to PEM format and then str to send it to the clients
    private_key = keypair[1]
    pa_pbl_key = {'public_key' : public_key}

    #print("playing area key")
    #print(public_key)

    while True:
        events = selector.select( timeout=None )
        for key, mask in events:

            # Check for a new client connection

            if key.fileobj == srv_socket:
                clt_socket, clt_addr = srv_socket.accept()
                clt_socket.setblocking( True )
                clients.append( clt_socket )
                #print(clt_socket)
                # Add it to the sockets under scrutiny

                selector.register( clt_socket, selectors.EVENT_READ, data=None )

            # Client data is available for reading

            else:
                data = m.recv_msg( key.fileobj )

                if data == None: # Socket closed
                    selector.unregister( key.fileobj )
                    key.fileobj.close()
                    print( 'Client removed' )
                    continue
                
                data = json.loads( data.decode( 'UTF-8' ) ) # Decode the message and transforms it into a dictionary
                if data['type'] == 'Caller':            #when the caller connects, start the game
                    print( 'Caller added' )
                    #print(players)
                    message = {'deck' : data['deck'] , 'all_players' : players}
                    message = json.dumps(message).encode('UTF-8')
                    m.send_msg(clients[-1],json.dumps(pa_pbl_key).encode('UTF-8')) #send playing area public key to caller
                    caller_key = json.loads(m.recv_msg(clients[-1]).decode('UTF-8')) #receive the caller's public key
                    #print("caller public key")
                    #print(caller_key['public_key'])
                    caller_formatted_key = asym.pem_to_public_key(asym.convert_str_to_pem(caller_key['public_key'])) #convert the caller's public key to the original format
                    pub_keys.append(caller_formatted_key)

                    #print(pub_keys)
                    
                    for c in clients:
                        #print(c)
                        pub_key_to_use = pub_keys.pop(0)
                        #print(pub_key_to_use)
                        
                        encrypted_message = asym.encrypt_msg(message, pub_key_to_use)
                        #print(encrypted_message)
                        #print(type(encrypted_message))
                        m.send_msg( c, encrypted_message )
                      
                    

                if data['type'] == 'Player':
                    print('Player {} added'.format(data['id']))
                    players.append((data['id'],data['card']))        #gather all the players to check who's the winner
                    m.send_msg(clients[-1],json.dumps(pa_pbl_key).encode('UTF-8')) #send the playing area public key to the player
                    player_key = json.loads(m.recv_msg(clients[-1]).decode('UTF-8')) #receive the player's public key
                    player_formatted_key = asym.pem_to_public_key(asym.convert_str_to_pem(player_key['public_key'])) #convert the player's public key to the original format
                    pub_keys.append(player_formatted_key)
                    #print("player public key")
                    #print(player_key['public_key'])

                
                if 'deck' in data:
                    print(show_deck(data['deck']))
   
   
def main():
    if len(sys.argv) != 2:
        print( 'Usage: %s port' % (sys.argv[0]) )
        sys.exit( 1 )

    pl_area_keypair = asym.generate_rsa_key_pair() #generate the key pair for the playing area
    
    with socket.socket( socket.AF_INET, socket.SOCK_STREAM ) as s:
        s.bind( ('0.0.0.0', int(sys.argv[1]) ) )
        s.listen()
        dispatch( s, pl_area_keypair )

if __name__ == '__main__':
    main()
