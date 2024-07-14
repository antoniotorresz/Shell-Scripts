#!/usr/bin/bash

content="$1"
filename="${content// /}"

if [ -n "$content" ]; then
    wget -qO- "http://api.qrserver.com/v1/create-qr-code/?data=$content" > "./generated/$filename.png"
else
    echo "Por favor, proporciona un contenido para generar el código QR"
fi