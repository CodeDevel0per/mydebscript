gsettings set org.cinnamon.theme name 'Lavanda-Sea-Dark-Compact'
gsettings set org.cinnamon.desktop.interface icon-theme 'Colloid-teal-nord-dark'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Lavanda-Sea-Dark-Compact'
gsettings set org.cinnamon.desktop.interface gtk-theme 'Lavanda-Sea-Dark-Compact'

cp /home/$USER/Downloads/Lavanda-gtk-theme/wallpaper/wallpaper-wave-Sea-Dark.png /home/$USER
gsettings set org.cinnamon.desktop.background picture-uri file:///home/$USER/wallpaper-wave-Sea-Dark.png
echo "Please goto the .bashrc file and remove the last line!"
