#!/bin/bash
# Väljastab homse kuupäeva käsu date abil

echo "Homne kuupäev:"
date -d "tomorrow" +%Y-%m-%d
