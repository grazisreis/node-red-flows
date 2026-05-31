#!/bin/sh
curl -o /usr/src/node-red/flows.json https://raw.githubusercontent.com/grazisreis/node-red-flows/refs/heads/main/flows_helios.json
node-red
