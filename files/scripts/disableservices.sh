#!/usr/bin/env bash


set -oue pipefail

systemctl disable mdmonitor.service
systemctl mask mdmonitor.service

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
