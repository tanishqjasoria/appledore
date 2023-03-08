echo "[Setup]: Setup DNS - Cloudflare & Google"
sudo apt install -y resolvconf
sudo systemctl start resolvconf.service
sudo systemctl enable resolvconf.service

echo "nameserver 1.1.1.1\nnameserver 8.8.8.8\nnameserver 8.8.4.4\nnameserver 1.0.0.1" | sudo tee /etc/resolvconf/resolv.conf.d/head

sudo systemctl restart resolvconf
sudo dpkg-reconfigure resolvconf
sudo resolvconf --enable-updates
sudo resolvconf -u
cat /etc/resolv.conf
