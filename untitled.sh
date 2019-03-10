#!/bin/bash

TYPE=$1 # Type of consensus 
ADDRESS=$2 # Address of prefunnd and seal
NETWORKID=$3 
BLOCKTIME=$4 #time to create a new block



if [[ "$TYPE" == "1" ]]; then
	#statements
	FILE="ethash.json"
elif [[ "$TYPE" == "2" ]]; then
	#statements
	FILE="clique.json"
else
	echo ERROR: NOT VALID!
	exit 1 	
fi


sed -i -e 's/alloc-address-fund/'"$ADDRESS"'/g' $FILE	
sed -i -e 's/chainid-value/'"$NETWORKID"'/g' $FILE	
sed -i -e 's/blocktime/'"$BLOCKTIME"'/g' $FILE	


