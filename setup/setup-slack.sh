echo "[Installing]: Slack"
wget https://downloads.slack-edge.com/releases/linux/4.29.149/prod/x64/slack-desktop-4.29.149-amd64.deb
sudo dpkg -i slack-desktop-4.29.149-amd64.deb
rm -rf slack-desktop-4.29.149-amd64.deb
