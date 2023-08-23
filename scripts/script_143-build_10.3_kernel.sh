#!/bin/bash
set -o xtrace

cd $LFS/sources
tar xvf linux-6.1.11.tar.xz
cd /sources/linux-6.1.11

make mrproper
make defconfig
make
make modules_install
cp -iv arch/x86/boot/bzImage /boot/vmlinuz-6.1.11-lfs-11.3
cp -iv System.map /boot/System.map-6.1.11
cp -iv .config /boot/config-6.1.11
install -d /usr/share/doc/linux-6.1.11
cp -r Documentation/* /usr/share/doc/linux-6.1.11

install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF

rm -rf /sources/linux-6.1.11
