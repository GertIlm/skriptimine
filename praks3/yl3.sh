#!/bin/bash
# Skript ekskursiooni korraldajale: arvutab täidetud busside ja mahajäänud inimeste arvu.

echo -n "Sisesta reisijate arv grupis: "
read reisijad
echo -n "Sisesta kohtade arv ühes bussis: "
read kohad

# Arvutame täidetud bussid ja üle jäänud reisijad
tais_busse=$(expr $reisijad / $kohad)
maha_jaanud=$(expr $reisijad % $kohad)

echo "Täielikult täidetud busse on: $tais_busse"
echo "Maha jäänud inimesi on: $maha_jaanud"
