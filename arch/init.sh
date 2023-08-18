#!/bin/bash

install-yay () {
  pacman -S --needed --noconfirm git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
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
   neofetch \
   terminator \
   btop \
   bat \
   ttf-hack-nerd-font \
   telegram-desktop \
   spotify \
   meld \
   piper \
   discord \
   joplin-appimage
}

install-office () {
  yay -S --noconfirm \
    evolution \
    libreoffice-fresh-de \
    chromium \
    keepassxc \
    flameshot
}

install-ops () {
  yay -S --noconfirm \
    net-tools \
    aws-cli \
    whois \
    tcpdump \
    remmina \
    remmina-plugin-rdesktop \
    podman
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
