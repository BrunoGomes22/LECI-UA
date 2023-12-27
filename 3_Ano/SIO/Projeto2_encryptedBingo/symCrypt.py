import os
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives.padding import PKCS7
from cryptography.hazmat.backends import default_backend

def genSymKey():
    return os.urandom(16)

def encrDeck(key: bytes, data: bytes):
    iv = os.urandom(16) #init vector
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv), backend=default_backend())
    encryptor = cipher.encryptor()
    padder = PKCS7(128).padder() #add padding to the data
    padderData = padder.update(data) + padder.finalize()
    cipherData = encryptor.update(padderData) + encryptor.finalize()
    return iv + cipherData

def decrDeck(key: bytes, data: bytes):
    iv = data[:16]
    data = data[16:]
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv), backend=default_backend())
    decryptor = cipher.decryptor()
    padderData = decryptor.update(data) + decryptor.finalize()
    removePadd = PKCS7(128).unpadder() #remove the padding from decrypted data
    text = removePadd.update(padderData) + removePadd.finalize()
    return text