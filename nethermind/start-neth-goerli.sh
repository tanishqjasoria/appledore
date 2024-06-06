[ -f /tmp/jwtsecret ] && openssl rand -hex 32 | tr -d "\n" > /tmp/jwtsecret
dotnet run -c Release --config goerli --JsonRpc.Enabled true \
--HealthChecks.Enabled true --HealthChecks.UIEnabled true \
--JsonRpc.JwtSecretFile=/tmp/jwtsecret --JsonRpc.Host=0.0.0.0

dotnet run -c Release --config goerli --JsonRpc.Enabled true \
--HealthChecks.Enabled true --HealthChecks.UIEnabled true \
--JsonRpc.JwtSecretFile=/tmp/jwtsecret --JsonRpc.Host=0.0.0.0 \
--Init.DiscoveryEnabled=false --Network.DiagTracerEnabled=false \
--Network.OnlyStaticPeers=true --Discovery.Bootnodes=""