#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

echo -e $GREEN
echo "stoping fabric..."
echo -e $NC
rm networkadmin.card
cd ..
./stopFabric.sh
./teardownFabric.sh
composer card delete -n PeerAdmin@hlfv1
composer card delete -n admin@vote

echo -e $GREEN
echo "fabric stopped successfully..."
echo -e $NC
