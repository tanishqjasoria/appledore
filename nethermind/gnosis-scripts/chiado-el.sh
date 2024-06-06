dotnet run -c release --config=chiado --Merge.TerminalTotalDifficulty=231707791542740786049188744689299064356246512 --JsonRpc.Host=0.0.0.0 --Pruning.Mode=None --JsonRpc.EngineHost=0.0.0.0 --JsonRpc.EnginePort=8551 --Network.DiscoveryPort=30303 --JsonRpc.JwtSecretFile=/tmp/jwtsecret --Init.AutoDump Parity


/lighthouse bn --network=gnosis --disable-upnp --datadir=lhouse --port=9000 --http --http-address=0.0.0.0 --http-port=4000  --execution-endpoint=http://localhost:8551  --execution-jwt=/tmp/jwtsecret --checkpoint-sync-url=https://checkpoint.gnosischain.com/