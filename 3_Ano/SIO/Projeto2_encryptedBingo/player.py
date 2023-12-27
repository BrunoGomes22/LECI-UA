#!/bin/python

import sys
import socket
import json
import messages as m
import random
import atexit
import os
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

#function to delete the file that contains player ids after the game is over
def delete_id_file():
    try:
        script_dir = os.path.dirname(os.path.abspath(__file__))
        file_path = os.path.join(script_dir, "id.txt")
        if os.path.exists(file_path):
            os.remove(file_path)
            
        atexit.register(delete_id_file)
    except:
        pass

def generate_player_card():
    N = 16
    card_size = N / 4
    numbers = list(range(1,N+1))
    random_player_card = random.sample(numbers, int(card_size))
    return random_player_card


def generate_id():
    try:                                   #make every player have a distinct id 
        with open( 'id.txt', 'r' ) as f:
            curr_id = int( f.read() )
    except:
        curr_id = 0
    
    curr_id += 1

    with open( 'id.txt', 'w' ) as f:
        f.write( str(curr_id) )

    return curr_id


def main():
    
    if len(sys.argv) != 2:
        print( 'Usage: %s port' % (sys.argv[0]) )
        sys.exit( 1 )
    
    player_keypair = asym.generate_rsa_key_pair() #generate player key pair
    public_key = asym.convert_pem_to_str(asym.public_key_to_pem(player_keypair[0])) #player public key
    private_key = player_keypair[1] #player private key

    

    message = {'type' : 'Player', 'header': 'something', 'body': '' , 'id': generate_id(), 'card': generate_player_card()}
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect( ( '127.0.0.1', int(sys.argv[1]) ) )
        m.send_msg( s, json.dumps( message ).encode( 'UTF-8' ) )
        
        while True:
            #players.append((message['id'], message['card']))
            data = m.recv_msg( s )
            safe_copy = data
            if data == None:
                break
            
            try:
                data = json.loads( data.decode( 'UTF-8' ) )
            except:
                data = safe_copy
            


            if not isinstance(data, dict):
                decrypted_message = asym.decrypt_msg(bytes(data), private_key) #decrypts the message (data comes in bytearray thats why i casted to bytes)
                original_message = json.loads(decrypted_message) #converts the decrypted message to a dictionary
                new_players = convert_list_to_tuple(original_message['all_players']) #this solves the problem as it converts the previous list to a list of tuples
                show_player_info(new_players)
                print(validate_winner(new_players, original_message['deck']))
                

            elif 'public_key' in data:
                playing_area_pbl_key = data['public_key'] #saves the public key of the playing area
                player_pbl_key = {"public_key": public_key} 
                m.send_msg( s, json.dumps(player_pbl_key).encode( 'UTF-8' ) ) #sends the player public key to the playing area

        delete_id_file() 
                   
        

if __name__ == '__main__':
    main()
