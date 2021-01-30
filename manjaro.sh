sudo pacman --noconfirm -S base-devel git go snapd
sudo systemctl enable --now snapd.socket
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si && cd .. && rm -rf yay/
yay -SYg --nocleanmenu --nodiffmenu terminator
yay -SYg --nocleanmenu --nodiffmenu visual-studio-code-bin
yay -SYg --nocleanmenu --nodiffmenu google-chrome
yay -SYg --nocleanmenu --nodiffmenu docker
yay -SYg --nocleanmenu --nodiffmenu docker-compose
yay -SYg --nocleanmenu --nodiffmenu nvm
yay -SYg --nocleanmenu --nodiffmenu jdk