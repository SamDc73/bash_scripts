!#/bin/bash

cargo install rbw leetcode-cli shellharden cargo-update

python -m pip install --user flake8 coursera-dl rofi-rbw pynvim ytmdl jupyterlab ipython stig pywal

########################################################
###################### Build Apps ######################
########################################################

cd Applications

# ytfzf
git pull --rebase https://github.com/pystardust/ytfzf
cd ytfzf
sudo make install doc
cd ..

# Czmod for z.lua
git pull --rebase https://github.com/skywind3000/czmod.git
sh czmod/build.sh

# applet-window-appmenu
sh applet-window-appmenu/install.sh

########################################################

# appimages
curl https://raw.githubusercontent.com/srevinsaju/zap/main/install.sh | bash -s
zap install vscodium

########################################################

# Flatpak apps
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.standardnotes.standardnotes \
  com.github.Eloston.UngoogledChromium \
  net.ankiweb.Anki \
  org.onlyoffice.desktopeditors \
  com.github.tchx84.Flatseal \
  io.github.kotatogram
