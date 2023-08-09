#!/usr/bin/env bash

if ! command -v fleetctl &> /dev/null
then
    echo "installing fleetctl..."
    npm install -g fleetctl
fi

# Set up fleetctl
export CONTEXT=bsides
fleetctl config set --address="$FLEET_ADDRESS" --token="$FLEET_TOKEN"

# Apply the queries configuration
fleetctl apply -f ./*.yml
