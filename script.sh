echo "Please wait here!"
sudo apt install nala git -y

sudo nala install cinnamon-desktop-environment -y
sudo nala install cinnamon -y
sudo nala install lightdm -y

sudo apt install wget -y
sudo nala fetch
mkdir DebInstall
cd DebInstall
echo "Adding google-chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo nala install ./google-chrome-stable_current_amd64.deb -y

sudo nala install micro neofetch -y
cd ~
echo "neofetch --ascii_distro gentoo\ngsettings set org.gnome.desktop.background picture-uri file:///root/wallpaper-wave-Sea-Dark.png\necho \"Please open your .bashrc file and remove last 2 lines\"" >> .bashrc

echo "Adding brave"
sudo nala install curl -y

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala update
sudo nala install libcanberra-gtk* -y
sudo nala install brave-browser -y

echo "Theme Applying"
mkdir ~/Downloads
mkdir ~/Pictures
cd ~/Downloads
mkdir ~/.icons
mkdir ~/.themes
git clone "https://github.com/TeddyBearKilla/Afterglow-Cursors-Recolored"
cd Afterglow-Cursors-Recolored/colors/catppucin/macchiato
./install.sh

git clone "https://github.com/vinceliuice/grub2-themes/"
cd grub2-themes/
sudo nala install unzip -y
sudo ./install.sh -t tela -i color

cd ~/Downloads
git clone "https://github.com/vinceliuice/Lavanda-gtk-theme"
cd Lavanda-gtk-theme/
./install.sh -t sea -c dark -s compact -i debian
./install.sh -t sea -c dark -s compact -i debian -l
cd wallpaper
sudo mv wallpaper-wave-Sea-Dark.png /root

cd ~/Downloads
git clone "https://github.com/vinceliuice/Colloid-icon-theme"
cd "Colloid-icon-theme/"
./install.sh -s nord -t teal

gsettings set org.cinnamon.theme name 'Lavanda-Sea-Dark'
gsettings set org.cinnamon.desktop.interface icon-theme 'Colloid-teal-nord-dark'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Lavanda-Sea-Dark'
gsettings set org.cinnamon.desktop.interface gtk-theme 'Lavanda-Sea-Dark'

sudo nala install flatpak -y
sudo nala install gnome-software-plugin-flatpak gnome-software -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install com.visualstudio.code -y
sudo flatpak install com.spotify.Client -y
echo "Your system setup is now complete!"
sleep 1
printf "-"
sleep 1
printf "-"
sleep 1
printf "-"
sudo reboot
