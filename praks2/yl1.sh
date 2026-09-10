#!/bin/bash
# Skript väljastab kasutajale isikliku tervituse

# 1) Väljasta "Tere, " ilma reavahetuseta (-n võti)
echo -n "Tere, "

# 2) Tekita muutuja kasutajanimega (teeme esimese tähe suureks ^ sümboliga) ja väljasta
KASUTAJA=${USER^}
echo -n $KASUTAJA

# 3) Väljasta "!" reavahetusega
echo "!"
