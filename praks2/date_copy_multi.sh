#!/bin/bash
# Võtab vastu mitu failinime ja kopeerib need kõik

for FAIL in "$@"; do
    ./date_copy_suffix.sh "$FAIL"
done
