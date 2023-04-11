export CHECKPOINT_SYNC_URL=https://beaconstate-goerli.chainsafe.io
./prysm.sh beacon-chain --prater --execution-endpoint=http://localhost:8551 --datadir=prysm --jwt-secret=/tmp/jwtsecret \
--checkpoint-sync-url=$CHECKPOINT_SYNC_URL --genesis-beacon-api-url=$CHECKPOINT_SYNC_URL
