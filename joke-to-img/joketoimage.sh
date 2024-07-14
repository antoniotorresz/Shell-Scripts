#!/usr/bin/bash

clear
joke=$(curl -s "https://geek-jokes.sameerkumar.website/api")
img_name=$(openssl rand -base64 6 | tr -dc 'a-zA-Z' | head -c 5)
tmp_img="./generated/.$img_name.png"
output_img="./generated/$img_name.png"
fontSize=10
fontColor="blue"
fontType="DejaVu-Sans-Bold"

if ! command -v convert > /dev/null; then
    echo "ImageMagick is not installed. Installing ImageMagick..."
    sudo zypper in -y ImageMagick
fi

if ! command -v jq > /dev/null; then
    echo "jq is not installed. Installing jq..."
    sudo zypper in -y jq
fi

if [ -n "$joke" ]; then
    wget -qO- "https://picsum.photos/600/800" > "./generated/.$img_name.png"
    convert -size 540x -font "$fontType" -pointsize $fontSize -fill "$fontColor" -gravity center caption:"$joke" "$tmp_img" +swap -composite "$output_img"
    rm "$tmp_img"
    echo check image "$output_img"
fi


