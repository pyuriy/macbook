#!/bin/bash

echo "=== Updating system ==="
sudo apt update && sudo apt upgrade -y

echo "=== Installing essential tools ==="
sudo apt install -y software-properties-common curl wget git

echo "=== Installing Broadcom Wi-Fi drivers (if needed) ==="
sudo apt install -y bcmwl-kernel-source

echo "=== Installing power optimization tools (TLP) ==="
sudo apt install -y tlp tlp-rdw
sudo systemctl enable tlp
sudo systemctl start tlp

echo "=== Installing powertop for additional tuning ==="
sudo apt install -y powertop

echo "=== Enabling zRAM for better performance on 4GB RAM ==="
sudo apt install -y zram-config

echo "=== Optimizing swappiness ==="
sudo bash -c 'echo "vm.swappiness=10" >> /etc/sysctl.conf'

echo "=== Enabling SSD TRIM ==="
sudo systemctl enable fstrim.timer

echo "=== Installing Brave Browser ==="
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

echo "=== Disabling unnecessary services to reduce RAM usage ==="
sudo systemctl disable avahi-daemon
sudo systemctl disable cups
sudo systemctl disable bluetooth

echo "=== Improving trackpad behavior ==="
sudo apt install -y xserver-xorg-input-libinput

echo "=== Cleaning system ==="
sudo apt autoremove -y
sudo apt autoclean -y

echo "=== All optimizations applied ==="
echo "Your MacBook Air will reboot in 5 seconds..."
sleep 5
sudo reboot
