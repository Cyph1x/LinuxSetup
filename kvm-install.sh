#!/bin/bash
# thanks https://sysguides.com/install-kvm-on-linux

sudo apt --fix-broken install -y

# qemu and kvm
sudo apt install qemu-system libvirt-daemon-system virtinst virt-manager virt-viewer ovmf swtpm qemu-utils guestfs-tools libosinfo-bin tuned qemu-user-static qemu-kvm -y

sudo systemctl enable libvirtd.service


# sudo apt-get install bridge-utils cpu-checker libvirt-clients libvirt-daemon-system -y

# ./qemu-install.sh

# allow the user access to the system connection
sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER

# allow access to images directory so that sudo isn't needed
sudo setfacl -R -b /var/lib/libvirt/images
sudo setfacl -R -m u:$USER:rwX /var/lib/libvirt/images
sudo setfacl -m d:u:$USER:rwx /var/lib/libvirt/images
