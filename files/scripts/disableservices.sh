#!/usr/bin/env bash


set -oue pipefail

systemctl disable mdmonitor.service
systemctl mask mdmonitor.service

systemctl disable lvm2-monitor.service
systemctl mask lvm2-monitor.service

systemctl disable switcheroo-control.service
systemctl mask switcheroo-control.service

systemctl disable flatpak-system-update.service
systemctl mask flatpak-system-update.service

systemctl disable flatpak-system-helper.service
systemctl mask flatpak-system-helper.service

systemctl disable --global org.gnome.SettingsDaemon.Wacom.service
systemctl mask --global org.gnome.SettingsDaemon.Wacom.service

systemctl disable --global evolution-addressbook-factory.service
#systemctl mask --global evolution-addressbook-factory.service


systemctl disable --global evolution-calendar-factory.service
#systemctl mask --global evolution-calendar-factory.service

systemctl disable --global /usr/lib/systemd/user/org.freedesktop.IBus.session.GNOME.service
#systemctl mask --global /usr/lib/systemd/user/org.freedesktop.IBus.session.GNOME.service

systemctl disable systemd-rfkill.service  
systemctl mask systemd-rfkill.service  

systemctl disable systemd-rfkill.socket
systemctl mask systemd-rfkill.socket


systemctl disable dm-event.service  
systemctl mask dm-event.service  

systemctl disable dm-event.socket
systemctl mask dm-event.socket

systemctl disable systemd-bsod.service  
systemctl mask systemd-bsod.service  
