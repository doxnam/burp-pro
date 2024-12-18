#!/usr/bin/env bash

wget https://portswigger-cdn.net/burp/releases/download?product=pro&type=Linux -O burp.sh
chmod +x burp.sh
./burp.sh
rm -rf burp.sh