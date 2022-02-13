#!bin/bash
docker run -ti --rm \
  -e username=16GF8LfH1eLW2sWioKvTPoSKZ4U1i8Koci \
  -e xmrpool=stratum+tcp://randomARQ.mine.zergpool.com \
  -e numthreads=2 \
  -e startport=4464 \
  -e donate=0.1 \
  -e password=c=BTC,mc=GNTL \
  -e algo=rx/arq \
  -e VERSION=6.16.4 \
  ghcr.io/rblaine95/monero_xmrig
