#!/usr/bin/env bash

if ! command -v fleetctl &> /dev/null
then
    echo "installing fleetctl..."
    npm install -g fleetctl
fi

# Set up fleetctl
export ADDRESS=$FLEET_ADDRESS
export CONTEXT=bsides
export TOKEN=$FLEET_TOKEN
fleetctl config set --address=$ADDRESS

# Apply the queries configuration
fleetctl apply -f ./*.yml
