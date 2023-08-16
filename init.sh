######## install yay ########
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
##############################
yay -S \
neofetch \
terminator \
pulseaudio \
visual-studio-code-bin \
neovim \
btop \
evolution \
kubectl \
talosctl \
zsh \
ttf-hack-nerd-font \
kube-ps1 \
keepassxc \
bat \
dbeaver \
flameshot \
fwupd \
remmina \
telegram-desktop \
net-tools \
spotify \
bluez \
bluez-utils \
blueberry \
network-manager-applet \
meld \
piper \
discord \
joplin-appimage \
podman \
postman-bin \
chromium \
openlens-bin \
k9s \
libreoffice-fresh-de \
aws-cli \
whois \
tcpdump \
remmina-plugin-rdesktop \
matcha-gtk-theme \
papirus-icon-theme

# Settings->Hardware->Keyboard->Application > xfce4-popup-whiskermenu
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

systemctl enable bluetooth
systemctl start bluetooth

code --install-extension ms-vscode-remote.remote-ssh 
code --install-extension ipedrazas.kubernetes-snippets
code --install-extension kennylong.kubernetes-yaml-formatter
code --install-extension eamodio.gitlens
code --install-extension golang.Go
code --install-extension ms-python.python 
code --install-extension redhat.vscode-yaml

xfconf-query -c xsettings -p /Net/ThemeName -s  "Matcha-dark-azul"
xfconf-query -c xsettings -p /Net/IconThemeName -s  "Papirus-Dark"
xfconf-query -c xfwm4 -p /general/theme -s "Matcha-dark-azul"
