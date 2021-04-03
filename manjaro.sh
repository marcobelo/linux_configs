sudo pacman --noconfirm -S base-devel go snapd ntp
sudo systemctl enable --now snapd.socket
sudo timedatectl set-ntp true
# Setting timezone to America/Sao_Paulo, change for your timezone
# Use this command to find out yours: $ timedatectl list-timezones
sudo timedatectl set-timezone America/Sao_Paulo

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
    jre \
    github-cli \
    github-desktop \
    insomnia \
    discord \
    flameshot \
    dockbarx \
    jetbrains-toolbox \
    nerd-fonts-complete \
    xf86-input-wacom

echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
exec $SHELL

# flatpak install flathub com.github.calo001.fondo
snap install slack --classic
snap install spotify --classic
