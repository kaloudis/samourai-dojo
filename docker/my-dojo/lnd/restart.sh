#!/bin/bash
set -e

echo "## Start lnd #############################"

lnd_options=(
  --noseedbackup # TODO: add backups
  --$CHAIN.active
  --$CHAIN.$NETWORK
  --$CHAIN.node="bitcoind"
  --$BACKEND.rpccert="/rpc/rpc.cert"
  --$BACKEND.rpchost="blockchain"
  --$BACKEND.rpcuser="$RPCUSER"
  --$BACKEND.rpcpass="$RPCPASS"
)

lnd "${lnd_options[@]}"
