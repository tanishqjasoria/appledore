declare -a arr=($(curl https://rpc.verkle-gen-devnet-6.ethpandaops.io/ -X POST -H "Content-Type: application/json" --data '{"method":"eth_getBlockByNumber","params":["0x40117",false],"id":1,"jsonrpc":"2.0"}' | jq '.result.transactions' | tr -d '[],'))
for i in "${arr[@]}"; do    curl https://rpc.verkle-gen-devnet-6.ethpandaops.io   -X POST   -H "Content-Type: application/json"   --data "{\"method\":\"eth_getTransactionReceipt\",\"params\":[$i],\"id\":1,\"jsonrpc\":\"2.0\"}"; done

./lodestar beacon --dataDir lodestar-data --paramsFile custom_config_data/config.yaml --genesisStateFile custom_config_data/genesis.ssz --bootnodesFile custom_config_data/boot_enr.yaml --jwt-secret /tmp/jwtsecret