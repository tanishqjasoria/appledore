echo "[Installing]: GoLang"
wget https://dl.google.com/go/go1.19.4.linux-amd64.tar.gz
rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.19.4.linux-amd64.tar.gz
rm -rf go1.19.4.linux-amd64.tar.gz
