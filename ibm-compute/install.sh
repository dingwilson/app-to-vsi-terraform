#! /usr/bin/env bash

apt-get update;
apt-get install -f;
wget -qO- "https://deb.nodesource.com/setup_$nodeVer.x" | bash -;
apt-get install -y nodejs
