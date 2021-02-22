#Install Awesome ZSH
xcode-select —install
zsh <(curl -Ls https://git.modder.pw/mcmodder/dotfiles-patches/raw/master/install.zsh)

#Sublime Text
sudo mkdir -p /usr/local/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl 

#Install HomeBrew as NVG
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HE..)"
export PATH=/opt/homebrew/bin:$PATH 
echo '\nalias nvg="brew"' >> .zshrc
nvg install coreutils

#Instal some soft
nvg install curl htop neofetch lolcat  cmake python3  ffmpeg unzip