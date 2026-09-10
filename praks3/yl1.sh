#!/bin/bash
# Skript küsib kasutaja ees- ja perenime, salvestab need eraldi muutujatesse ja tervitab.

echo -n "Sisesta oma ees- ja perenimi: "
read eesnimi perenimi

echo "Tere tulemast, $eesnimi $perenimi"
echo "Sinu eesnimi on $eesnimi ja perenimi on $perenimi"
