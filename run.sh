#!/bin/sh

clear
echo -e "\033[0;92m
  ___ ___   _   ___  ___ _  _   _   ___ ___
 | _ ) __| /_\ | _ \/ __| || | /_\ | _ \ __|
 | _ \ _| / _ \|   /\__ \ __ |/ _ \|   / _|
 |___/___/_/ \_\_|_\|___/_||_/_/ \_\_|_\___|
\033[0m"

echo -e "\nLOGIN USER: \033[0;91m${EMAIL}\033[0m\n"

URL="https://www.bearshare.app/bearshare-cli-linux"
ARCH=$(uname -m)

case $ARCH in
    x86_64|amd64)
        LINK="$URL-x86-64" ;;
    aarch64|arm64)
        LINK="$URL-arm" ;;
    *)
    echo "Unsupported architecture: $ARCH"
    exit 1
    ;;
esac

wget -q -O cli $LINK
chmod +x cli
./cli -email "$EMAIL" -password "$PASSWORD"
