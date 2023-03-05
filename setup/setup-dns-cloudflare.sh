echo "[Setup]: Setup DNS - Cloudflare & Google"
sudo apt install -y resolvconf
sudo systemctl start resolvconf.service
sudo systemctl enable resolvconf.service

echo "nameserver 1.1.1.1" | sudo tee /etc/resolvconf/resolv.conf.d/head
echo "nameserver 8.8.8.8" | sudo tee /etc/resolvconf/resolv.conf.d/head
echo "nameserver 8.8.4.4" | sudo tee /etc/resolvconf/resolv.conf.d/head
echo "nameserver 1.0.0.1" | sudo tee /etc/resolvconf/resolv.conf.d/head

sudo systemctl restart resolvconf
