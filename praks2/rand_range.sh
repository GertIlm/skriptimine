#!/bin/bash
# Genereerib suvalise arvu määratud vahemikus
# Kasutamine:
#   ./rand_range.sh MAX        (vahemikus 0 kuni MAX)
#   ./rand_range.sh MIN MAX    (vahemikus MIN kuni MAX)

if [ $# -eq 1 ]; then
    MIN=0
    MAX=$1
elif [ $# -eq 2 ]; then
    MIN=$1
    MAX=$2
else
    MIN=0
    MAX=100
fi

VAHE=$(( MAX - MIN + 1 ))
TULEMUS=$(( MIN + (RANDOM % VAHE) ))

echo "Suvaline arv vahemikus $MIN kuni $MAX: $TULEMUS"
