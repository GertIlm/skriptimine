#!/bin/bash
# Tekitab failist koopia kujul: YYYY-MM-DD_failinimi

KUUPAEV=$(date +%Y-%m-%d)
FAIL=$1

cp "$FAIL" "${KUUPAEV}_${FAIL}"
echo "Loodud koopia: ${KUUPAEV}_${FAIL}"
