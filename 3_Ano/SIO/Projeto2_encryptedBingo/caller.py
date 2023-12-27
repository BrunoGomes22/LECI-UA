import sys
import socket
import json
import random
import messages as m
import symCrypt as sym
import asymCrypt as asym

def show_player_info(lst):
    for i in lst:
        print("Player {} has the following card: {}".format(i[0], i[1]))

def convert_list_to_tuple(lst):
    new_list = []
    for i in lst:
        i = tuple(i)
        new_list.append(i)
    return new_list

def validate_winner(lst, deck):
    winners = []
    for card_number in deck:
        for idx, (player_id, card) in enumerate(lst):
            if card_number in card:
                card.remove(card_number)
                if not card: 
                    winners.append(player_id) #list of winners ids
        if winners:   #checks if list is not empty
            break
    
    for i in lst:
        if i[0] in winners:
            print("Player {} won!".format(i[0]))
        else:
            print("Player {} lost!".format(i[0]))

def generate_deck():
    #generate random sequence of 16 numbers from 1 to 16
    deck = []
    N = 16
    for i in range(1,N+1):
        deck.append(i)
    random.shuffle(deck)
    return deck
    
def main(): 
    if len(sys.argv) != 2:
        print( 'Usage: %s port' % (sys.argv[0]) )
        sys.exit( 1 )
    
    ''' symmetric encryption of the deck (not used)
    symKey = sym.genSymKey() #NOTE need to send this to player/playing area(?)
    deck = generate_deck()
    encryptedDeck = [sym.encrDeck(symKey, x) for x in deck]

    message = {'type' : 'Caller', 'header': 'something', 'body': '' ,'id': 0, 'deck' : encryptedDeck}  #caller always has id 0
    '''

    caller_keypair = asym.generate_rsa_key_pair() #generate caller key pair
    public_key = asym.convert_pem_to_str(asym.public_key_to_pem(caller_keypair[0])) #caller public key
    private_key = caller_keypair[1] #caller private key

    
    message = {'type' : 'Caller', 'header': 'something', 'body': '' ,'id': 0, 'deck' : generate_deck()}  #caller always has id 0
    
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect( ( '127.0.0.1', int(sys.argv[1]) ) )
        m.send_msg( s, json.dumps( message ).encode( 'UTF-8' ) ) #sends the deck to the playing area
        while True:
            data = m.recv_msg( s )
            safe_copy = data
            if data == None:
                break

            try:
                data = json.loads( data.decode( 'UTF-8' ) )
            except:
                data = safe_copy


            if not isinstance(data, dict):
                decrypted_message = asym.decrypt_msg(bytes(data), private_key) #decrypts the message and i need to cast data to bytes because it comes in bytearray format
                original_message = json.loads(decrypted_message) #turns the decrypted message into a dictionary
                new_players = convert_list_to_tuple(original_message['all_players']) #this solves the problem as it converts the previous list to a list of tuples
                show_player_info(new_players)
                print(validate_winner(new_players, original_message['deck']))
                

            elif 'public_key' in data: 
                playing_area_pbl_key = data['public_key'] #saves the public key of the playing area
                caller_pbl_key = {"public_key": public_key}
                m.send_msg( s, json.dumps( caller_pbl_key ).encode( 'UTF-8' ) ) #sends the public caller key to the playing area
            

if __name__ == '__main__':
    main()