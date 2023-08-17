######## install yay ########
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
##############################
mkdir Documents GIT

yay -S --noconfirm \
  # settings
  bluez \
  bluez-utils \
  blueberry \
  network-manager-applet \
  pulseaudio \
  fwupd \
  # general
  zsh \
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
  joplin-appimage \
  # office
  evolution \
  libreoffice-fresh-de \
  chromium \
  keepassxc \
  flameshot \
  # OPS/Network
  net-tools \
  aws-cli \
  whois \
  tcpdump \
  remmina \
  remmina-plugin-rdesktop \
  podman \
  # K8s
  kubectl \
  kube-ps1 \
  talosctl \
  openlens-bin \
  k9s \
  # Dev
  visual-studio-code-bin \
  neovim \
  postman-bin \
  dbeaver

# OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# NvChad 
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# bluetooth
systemctl enable bluetooth
systemctl start bluetooth

# VS-CODE extension
code --install-extension ms-vscode-remote.remote-ssh 
code --install-extension ipedrazas.kubernetes-snippets
code --install-extension kennylong.kubernetes-yaml-formatter
code --install-extension eamodio.gitlens
code --install-extension golang.Go
code --install-extension ms-python.python 
code --install-extension redhat.vscode-yaml
