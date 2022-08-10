#!/bin/bash

#Pokes my build server to make a pacman package

curl --header "Authorization: $POKE_TOKEN" https://packages.cabotmc.dev/poke