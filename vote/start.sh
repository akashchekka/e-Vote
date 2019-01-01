#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

echo -e $GREEN
echo "starting fabric..."
echo -e $NC
echo " "
cd ..
./startFabric.sh
./createPeerAdminCard.sh
composer runtime install --card PeerAdmin@hlfv1 --businessNetworkName vote
cd vote
composer network start --card PeerAdmin@hlfv1 --networkAdmin admin --networkAdminEnrollSecret adminpw --archiveFile vote@0.0.1.bna --file networkadmin.card
composer card import --file networkadmin.card
xterm -hold -e 'composer-playground'
