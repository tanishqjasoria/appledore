[ -f /tmp/jwtsecret ] && openssl rand -hex 32 | tr -d "\n" > /tmp/jwtsecret
dotnet run -c Release --config mainnet --JsonRpc.Enabled true \
--HealthChecks.Enabled true --HealthChecks.UIEnabled true \
--JsonRpc.JwtSecretFile=/tmp/jwtsecret --JsonRpc.Host=0.0.0.0