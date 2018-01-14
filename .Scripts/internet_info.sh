#!/bin/bash

IP=$(ipconfig getifaddr en0)
PUB_IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

INTERNET=''
echo -n "#[fg=colour120]$INTERNET  #[fg=colour8]$IP ⓦ  $PUB_IP"


