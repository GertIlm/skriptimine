#!/bin/bash
# Genereerib suvalise arvu vahemikus 0 kuni 100 (kaasa arvatud)

ARV=$(( RANDOM % 101 ))
echo "Suvaline arv (0-100): $ARV"
