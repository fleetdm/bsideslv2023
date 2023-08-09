#!/usr/bin/env bash

if ! command -v fleetctl &> /dev/null
then
    echo "installing fleetctl..."
    npm install -g fleetctl
fi

export ADDRESS=$FLEET_ADDRESS
export CONTEXT=bsides

fleetctl config set --address=$ADDRESS

export TOKEN=$FLEET_TOKEN

fleetctl apply -f queries.yml
