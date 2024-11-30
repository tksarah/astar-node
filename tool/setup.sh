#!/bin/bash
apt-get update
apt-get -y upgrade
apt install -y adduser libfontconfig1
useradd --no-create-home --shell /usr/sbin/nologin astar

wget https://github.com/AstarNetwork/Astar/releases/download/v5.45.0/astar-collator-v5.45.0-ubuntu-x86_64.tar.gz
tar -xvf astar-collator*.tar.gz

chown astar:astar astar-collator
mv ./astar-collator /usr/local/bin
chmod +x /usr/local/bin/astar-collator

cp astar.service /etc/systemd/system/astar.service

mkdir /var/lib/astar 
chown astar:astar /var/lib/astar

