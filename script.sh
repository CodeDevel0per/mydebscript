echo "Please wait here!"
sudo apt install nala -y

sudo nala install tasksel
sudo exec tasksel

sudo apt install wget -y
sudo nala fetch
mkdir DebInstall
cd DebInstall
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo nala install ./google-chrome-stable_current_amd64.deb

sudo nala install micro neofetch -y
cd ~
echo "noefetch" >> .bashrc

sudo nala install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala update

sudo nala install brave-browser
