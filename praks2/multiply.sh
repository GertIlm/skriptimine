#!/bin/bash
# Korrutab kaks käsurea argumenti kolmel erineval viisil

ARG1=$1
ARG2=$2

# 1. Kasutades käsku 'let'
let TULEMUS1="ARG1 * ARG2"
echo "Tulemus (let): $TULEMUS1"

# 2. Kasutades käsku 'expr'
TULEMUS2=$(expr $ARG1 \* $ARG2)
echo "Tulemus (expr): $TULEMUS2"

# 3. Kasutades topeltsulge $(( ))
TULEMUS3=$(( ARG1 * ARG2 ))
echo "Tulemus (\$(( ))): $TULEMUS3"
