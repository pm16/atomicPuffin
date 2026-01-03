#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
#dnf5 install -y tmux 
dnf5 -y copr enable solopasha/hyprland
dnf5 install -y hyprland xdg-desktop-portal-hyprland hyprland-plugins hyprpaper hypridle hyprpicker hyprlock hyprsunset hyprpolkitagent waybar uwsm hyprtile cliphist nwg-look nwg-clipman dunst pipepwire wireplumber pipewire-alsa pipewire-pulse hyprcursor hyprland-protocols hyprland-qt-support hyprland-qtutils hyprland-autoname-workspaces alacritty sddm gnome-keyring steam-devices micro tmux git curl wget distrobox podman podman-compose podman-docker qemu qemu-kvm blueman nfs-tools cfis-tools p7zip zsh yazi w3m w3m-img mpd ncmpc qt5-wayland qt6-wayland noto-fonts gparted unetbootin fastfetch bat

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
