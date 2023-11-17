# bluetooth
systemctl enable bluetooth
systemctl start bluetooth
# pcscd (for yubico-authenticator)
systemctl enable pcscd.service
systemctl start pcscd.service

