#!/bin/bash

install-yay () {
  sudo pacman -S --needed --noconfirm git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
}

make-dirs () {
  mkdir /home/$USER/Documents
  mkdir /home/$USER/GIT
}

install-settings () {
  yay -S --noconfirm \
    bluez \
    bluez-utils \
    blueberry \
    network-manager-applet \
    pulseaudio \
    fwupd
}

install-general () {
  yay -S --noconfirm \
   zsh \
   lsd \
   keyring \
   neofetch \
   terminator \
   btop \
   bat \
   noto-fonts \
   noto-color-emoji-fontconfig \
   ttf-hack \
   ttf-meslo-nerd-font-powerlevel10k \
   telegram-desktop \
   spotify \
   meld \
   piper \
   discord \
   joplin-appimage \
   rpi-imager \
   wireguard-tools \
   mkinitcpio-pkcs11 \
   yubico-authenticator
}

install-office () {
  yay -S --noconfirm \
    evolution \
    libreoffice-fresh-de \
    chromium \
    #keepassxc \
    flameshot
}

install-ops () {
  yay -S --noconfirm \
    net-tools \
    gnu-netcat \
    aws-cli \
    mtr \
    whois \
    tcpdump \
    remmina \
    remmina-plugin-rdesktop \
    podman \
    cheese
}

install-k8s () {
  yay -S --noconfirm \
    kubectl \
    kube-ps1 \
    talosctl \
    openlens-bin \
    k9s \
    krew
}

install-dev () {
  yay -S --noconfirm \
    visual-studio-code-bin \
    neovim \
    postman-bin \
    dbeaver
}

echo "make std dirs"
make-dirs
echo "install yay"
install-yay
echo "install office"
install-office
echo "install extension"
install-extension
echo "install settings"
install-settings
echo "install dev"
install-dev
echo "install k8s"
install-k8s
echo "install ops"
install-ops
echo "install general"
install-general
