import base64
from cryptography.hazmat.primitives.asymmetric import rsa, padding
from cryptography.hazmat.primitives import serialization, hashes
from cryptography.hazmat.backends import default_backend

def generate_rsa_key_pair(size=2048):
    private_key = rsa.generate_private_key(public_exponent=65537, key_size=size, backend=default_backend()) #65537 is the public exponent
    public_key = private_key.public_key() #get public key from private key
    return public_key, private_key # return both keys


def public_key_to_pem(public_key):
    return public_key.public_bytes(encoding=serialization.Encoding.PEM, format=serialization.PublicFormat.SubjectPublicKeyInfo)   #convert public key to pem format


def pem_to_public_key(public_key_pem):
    return serialization.load_pem_public_key(public_key_pem, backend=default_backend())
    #convert pem format to public key object


def encrypt_msg(message, public_key):
    return public_key.encrypt( message, padding.OAEP( mgf=padding.MGF1(algorithm=hashes.SHA256()), algorithm=hashes.SHA256(), label=None))
    # encrypts the message using the public key


def decrypt_msg(encrypted_message, private_key):
    return private_key.decrypt(encrypted_message, padding.OAEP(mgf=padding.MGF1(algorithm=hashes.SHA256()), algorithm=hashes.SHA256(), label=None))
    # decrypts the message using the private key
    
    
def sign_msg(message, private_key):
    return private_key.sign(message, padding.PSS( mgf=padding.MGF1(hashes.SHA256()), salt_length=padding.PSS.MAX_LENGTH), hashes.SHA256())
    # signs the message using the private key, returns the signature


def check_signature(message, signature, public_key):
    try:
        public_key.verify(signature, message, padding.PSS(mgf=padding.MGF1(hashes.SHA256()), salt_length=padding.PSS.MAX_LENGTH), hashes.SHA256()) # verify the signature using the public key
        return True #if the signature is valid return True
    except:
        return False #if the signature is invalid return False


def convert_pem_to_str(pem):
    base64_data = base64.b64encode(pem) # encode pem to base64
    return base64_data.decode() # return the base64 encoded string


def convert_str_to_pem(base64_data):
    pem = base64.b64decode(base64_data) # decode base64 encoded data to pem
    return pem