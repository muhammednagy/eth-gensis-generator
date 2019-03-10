#!/bin/bash

TYPE=$1
ADDRESS=$2
NETWORKID=$3
BLOCKTIME=$4



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
sed -i -e 's/chainid-value/'"$networkid"'/g' $FILE	
sed -i -e 's/blocktime/'"$blocktime"'/g' $FILE	



echo $FILE