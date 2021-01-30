sudo pacman --noconfirm -S base-devel go snapd
sudo systemctl enable --now snapd.socket
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si --noconfirm && cd .. && rm -rf yay/
yay -Syyu --noconfirm \
    terminator \
    xclip \
    visual-studio-code-bin \
    google-chrome \
    docker \
    docker-compose \
    nvm \
    jdk \
    steam-manjaro
