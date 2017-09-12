#!/bin/bash

cd `dirname $0`

DIRS=($(ls -d */))

for aapdir in "${DIRS[@]}"
do
    cd $aapdir
    if [ -d ".git" ]; then
        echo "-------------------------------------------------"
        echo "Pulling $aapdir"
        git pull
    fi
    cd ..
done
