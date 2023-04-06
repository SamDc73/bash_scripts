dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-"$(rpm -E %fedora)".noarch.rpm -y  # for mpv
rpm --import https://keys.openpgp.org/vks/v1/by-fingerprint/034F7776EF5E0C613D2F7934D29FBD5F93C0CFC3
dnf copr enable capucho/bismuth -y
dnf copr enable alebastr/sway-extras -y # For Rofi
dnf copr enable varlad/onefetch -y

dnf upgrade --enablerepo=updates-testing neovim -y

dnf install neovim yt-dlp python3-pip latte-dock zsh kitty neofetch protonvpn-cli brightnessctl \
  kvantum cargo mpv ranger bismuth calibre kolourpaint kcolorchooser trash-cli neofetch picard \
  gsettings-desktop-schemas gsettings-qt qt5ct lxappearance megatools qt5-qtstyleplugins \
  timeshift power-profiles-daemon git-core musl-gcc mpdris2 mpc ncmpcpp mpd harfbuzz cheat fzf \
  ripgrep bat htop zathura zathura-pdf-poppler ktouch ffmpeg ffmpegthumbnailer python3-bpython xonsh \
  black qalculate perl-Image-ExifTool fd-find odt2txt dash onefetch python3-jupyter-core python3-notebook \
  aria2 lsd gnome-settings-daemon mkvtoolnix httrack svt-av1 wget2 \
  -y

# VSCodium
rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo 
dnf install codium

# Neomutt :
# dnf copr enable flatcap/neomutt -y
# dnf install neomutt pass msmtp isync -y

# Wayland Dependend
dnf install slurp rofi-wayland clipman wtype wl-clipboard -y

# X11 Dependend
# dnf install picom xclip xdotool -y

# TOuch Screen
dnf install onboard -y

# Nvidia
sudo dnf install gwe -y

# For gaming
# dnf install wine winetricks wine-mono lutris -y

# pyenv dependecies
# dnf install make gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel xz-devel -y

# Remove Bloat
dnf remove krfb akregator elisa-player krdc krdc-libs kmines dnfdragora kmines kruler kmahjongg kmag konsole5-part konsole5-part plasma-discover -y
