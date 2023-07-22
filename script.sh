echo "Please wait here!"
sudo apt install nala -y

sudo nala install tasksel
sudo exec tasksel

sudo apt install wget -y
sudo nala fetch
mkdir DebInstall
cd DebInstall
echo "Adding google-chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo nala install ./google-chrome-stable_current_amd64.deb

sudo nala install micro neofetch -y
cd ~
echo "noefetch" >> .bashrc

echo "Adding brave"
sudo nala install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala update

sudo nala install brave-browser

echo "Downloading Afterglow Cursor to Downloads"
cd ~/Downloads
wget "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1689878729/Afterglow-Recolored-Catppuccin-Macchiato.tar.gz?response-content-disposition=attachment%3B%2520Afterglow-Recolored-Catppuccin-Macchiato.tar.gz&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20230722%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230722T143228Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=586b112265c265196e8f71012dcab0a7f38ae6546c8ea30e12050c111a0174ef"
echo "Extract file and add it to ~/.icons! And device setup done!"
