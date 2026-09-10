#!/bin/bash
# Kui argument puudub, väljastab suvalise sõna. 
# Kui antakse arv (pikkus), filtreerib grep-iga vaid selle pikkusega sõnad.

LEN=$1

if [ -z "$LEN" ]; then
    shuf -n 1 /usr/share/dict/words
else
    grep -E "^[a-zA-Z]{$LEN}$" /usr/share/dict/words | shuf -n 1
fi
