#!/bin/bash
# Tekitab koopia kujul: failinimi_YYYY-MM-DD.ext

KUUPAEV=$(date +%Y-%m-%d)
FAIL=$1

NIMI=$(basename "$FAIL")
NIMI_ILMA_EXT="${NIMI%.*}"
EXT="${NIMI##*.}"

if [ "$NIMI_ILMA_EXT" = "$EXT" ]; then
    UUS_NIMI="${NIMI_ILMA_EXT}_${KUUPAEV}"
else
    UUS_NIMI="${NIMI_ILMA_EXT}_${KUUPAEV}.${EXT}"
fi

cp "$FAIL" "$UUS_NIMI"
echo "Loodud koopia: $UUS_NIMI"
