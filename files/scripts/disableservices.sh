#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

systemctl disable --now switcheroo-control.service  
systemctl mask --now switcheroo-control.service  
systemctl disable --now mcelog  
systemctl mask --now mcelog  
systemctl disable --now uresourced  
systemctl mask --now uresourced  
systemctl disable --now low-memory-monitor  
systemctl mask --now low-memory-monitor  
systemctl disable --now systemd-rfkill  
systemctl disable --now systemd-rfkill.socket  
systemctl mask --now systemd-rfkill  
systemctl disable --now mdmonitor  
systemctl mask --now mdmonitor  
systemctl disable --now lvm2-lvmpolld  
systemctl disable --now lvm2-lvmpolld.socket  
systemctl mask --now lvm2-lvmpolld.socket  
systemctl disable --now flatpak-system-helper  
systemctl mask --now flatpak-system-helper  
