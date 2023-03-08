wget https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb
sudo apt install -y gnupg2
sudo dpkg -i 1password-latest.deb
rm -rf 1password-latest.deb
