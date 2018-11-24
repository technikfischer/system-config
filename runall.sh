#!/bin/sh

echo "=== Installing ALL given packages"
./packages/general.sh

./packages/communication.sh
./packages/developing.sh
