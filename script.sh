#!/bin/bash


# Utilities function

encryptMessage() {
    openssl pkeyutl -encrypt -inkey $1 -pubin -in $2 -out $3
}

decryptMessage() {
    openssl pkeyutl -decrypt -inkey $1 -in $2 -out $3
}

# Specifies keys

pub_key=./pubB.pem
pvt_key=./pvtA.pem

if [[ $1 == "encrypt" ]]; then
    encryptMessage $pub_key $2 out.bin
elif [[ $1 == "decrypt" ]]; then
    decryptMessage $pvt_key $2 out.txt
else
    echo "Either encrypt or decrypt"
    exit 1
fi
