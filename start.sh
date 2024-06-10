#!/bin/bash

# Bepaal het pad naar de Conky-map
CONKY_DIR=$(dirname "$(readlink -f "$0")")

# Controleer of Conky al draait en stop het
if pidof conky > /dev/null; then
    killall conky
fi

# Start Conky met de juiste configuratie en log fouten
cd $CONKY_DIR
conky -c ./conky.conf
