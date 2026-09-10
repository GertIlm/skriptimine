#!/bin/bash
# Skript abistab kokkasid küpsisetordi tegemisel, arvutades vajamineva pakkide arvu.

echo -n "Sisesta aluskandiku pikkus (cm): "
read k_pikkus
echo -n "Sisesta aluskandiku laius (cm): "
read k_laius
echo -n "Sisesta küpsise pikkus (cm): "
read kup_pikkus
echo -n "Sisesta küpsise laius (cm): "
read kup_laius
echo -n "Mitme kihiline tort tuleb: "
read kihte
echo -n "Mitu küpsist on ühes pakis: "
read pakis

# Arvutame mitu küpsist mahub kandiku pikkusesse ja laiusesse
pikkusesse=$(expr $k_pikkus / $kup_pikkus)
laiusesse=$(expr $k_laius / $kup_laius)

# Arvutame palju läheb vaja ühe kihi jaoks ja kogu tordi jaoks
kihis=$(expr $pikkusesse \* $laiusesse)
kokku=$(expr $kihis \* $kihte)

# Pakkide arvu leidmiseks ja üles ümardamiseks liidame enne jagamist jäägi vältimiseks (pakis - 1)
lisatud=$(expr $kokku + $pakis - 1)
pakke=$(expr $lisatud / $pakis)

echo "Tordi tegemiseks läheb vaja kokku $kokku küpsist."
echo "Poest tuleb osta $pakke pakk(i)."
