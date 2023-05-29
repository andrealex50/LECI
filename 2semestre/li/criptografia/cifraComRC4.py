import os
import sys
from Crypto.Cipher import ARC4
import hashlib

fileName = sys.argv[1] 
key = sys.argv[2]

lenKey = len(key)

if lenKey < 5:
    key = hashlib.sha256(key).hexdigest()
elif lenKey > 256:
    key = key[:256]

cipher = ARC4.new(key)
criptograma = cipher.encrypt(open(fileName, "rb").read())

os.write(1, criptograma)	

with open("criptograma.txt", "wb") as f:
    f.write(criptograma)