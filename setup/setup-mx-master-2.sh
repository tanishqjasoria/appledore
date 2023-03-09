currentDir=$(pwd)
parentDir="$(dirname "$currentDir")"
cfgDir="$parentDir"/cfg/
sudo apt install -y cmake libevdev-dev libudev-dev libconfig++-dev
git clone https://github.com/PixlOne/logiops.git
cd logiops
mkdir build
cd build
cmake ..
make
sudo make install
cd ..
cd ..

sudo mv /etc/logid.cfg /etc/logid.cfg.old
sudo ln -s "$cfgDir"logid.cfg -s /etc/logid.cfg

sudo systemctl enable --now logid
sudo systemctl restart logid.service

rm -rf logiops
