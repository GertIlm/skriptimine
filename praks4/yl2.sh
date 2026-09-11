#!/bin/bash
# Arvutab vajaminevate busside arvu vastavalt reisijate ja kohtade arvule.
# Kui reisijaid jääb üle, lisab ühe bussi.

echo -n "Sisesta reisijate arv: "
read reisijad
echo -n "Sisesta kohtade arv bussis: "
read kohad

# Arvutame täisbussid ja ülejäänud reisijad
bussid=$(( reisijad / kohad ))
ylejaanud=$(( reisijad % kohad ))

# Kui on ülejääk, lisame ühe bussi juurde
if [ $ylejaanud -gt 0 ]; then
    bussid=$(( bussid + 1 ))
fi

echo "Kokku on vaja $bussid bussi"
