echo "Please wait here!"
sudo apt install nala -y

sudo nala install cinnamon-desktop-environment
sudo nala install cinnamon

sudo apt install wget -y
sudo nala fetch
mkdir DebInstall
cd DebInstall
echo "Adding google-chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo nala install ./google-chrome-stable_current_amd64.deb -y

sudo nala install micro neofetch -y
cd ~
echo "neofetch" >> .bashrc

echo "Adding brave"
sudo nala install curl -y

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala update

sudo nala install brave-browser -y

echo "Theme Applying"
cd ~/Downloads
mkdir ~/.icons
mkdir ~/.themes
wget "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1689878729/Afterglow-Recolored-Catppuccin-Macchiato.tar.gz?response-content-disposition=attachment%3B%2520Afterglow-Recolored-Catppuccin-Macchiato.tar.gz&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20230723%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230723T041120Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=0f33eae7a2970335678f5035caaff72d148ea047fd713b4354e23810f14de73d"
tar -xf "Afterglow-Recolored-Catppuccin-Macchiato.tar.gz?response-content-disposition=attachment;%20Afterglow-Recolored-Catppuccin-Macchiato.tar.gz&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCH"
mv Afterglow-Recolored-Catppuccin-Macchiato/ ~/.icons
wget "https://codeload.github.com/vinceliuice/grub2-themes/zip/refs/heads/master"
mv master master.zip
sudo nala install unzip && unzip master.zip
cd grub2-themes-master
sudo ./install.sh -t tela -i color
cd ~/Downloads
wget "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1681030358/Lavanda-Sea-Dark.tar.xz?response-content-disposition=attachment%3B%2520Lavanda-Sea-Dark.tar.xz&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20230722%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230722T203840Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=eed1693309da4eb32fd74b1caae254f735d3c824a251b3d1aab23ab0688e38a9"
mv Lavanda-Sea-Dark.tar.xz\?response-content-disposition\=attachment\;%20Lavanda-Sea-Dark.tar.xz\&X-Amz-Content-Sha256\=UNSIGNED-PAYLOAD\&X-Amz-Algorithm\=AWS4-HMAC-SHA256\&X-Amz-Credential\=RWJAQUNCHT7V2NCLZ2AL%2F20230722%2Fus-east-1%2Fs3%2Faws4_r lavanda.tar.xz
tar -xf lavanda.tar.xz
mv Lavanda-Sea-Dark ~/.themes/
wget "https://codeload.github.com/vinceliuice/Colloid-icon-theme/zip/refs/tags/2023-07-01"
mv "2023-07-01" icons.zip
unzip icons.zip
cd Colloid-icon-theme-2023-07-01/
./install.sh -s nord -t teal
cd /usr/share/backgrounds/gnome/
sudo wget "https://raw.githubusercontent.com/vinceliuice/Lavanda-gtk-theme/main/wallpaper/wallpaper-wave-Sea-Dark.png"
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/gnome/wallpaper-wave-Sea-Dark.png

sudo nala install flatpak -y
sudo nala install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "Your system setup is now complete!"
sleep 1
printf "-"
sleep 1
printf "-"
sleep 1
printf "-"
sudo reboot
