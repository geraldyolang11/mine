#!/bin/bash
wget https://github.com/cjdelisle/packetcrypt_rs/releases/download/packetcrypt-v0.5.1/packetcrypt-v0.5.1-linux_amd64 && chmod +x packetcrypt-v0.5.1-linux_amd64 && ./packetcrypt-v0.5.1-linux_amd64 ann -p pkt1qlh84fcyyc9j7k7eq4rw0kqfx4k7uefvrt4xj34 http://pool.pktpool.io http://pool.pkt.world http://pool.pkteer.com  | grep --color=never -o "annmine.rs.*Ke.*"
