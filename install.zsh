#Install Awesome ZSH
xcode-select —install
zsh <(curl -Ls https://git.modder.pw/mcmodder/dotfiles-patches/raw/master/install.zsh)

#Install HomeBrew as NVG
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "\nexport PATH=/opt/homebrew/bin:$PATH" >> ~/.zsh/.zshrc.d/30-zsh.zsh
echo '\nalias nvg="brew"' >> ~/.zsh/.zshrc.d/90-aliases.zsh
nvg install coreutils

#Instal some soft
nvg install curl htop neofetch lolcat cmake python3 ffmpeg unzip wget
pip3 install weboa

#Beatf & cfgs
sudo wget https://raw.githubusercontent.com/lonagi/my-linux/main/etc/motd -O /etc/motd.sh
echo 'cat /etc/motd.sh | lolcat' >> ~/.zsh/.zshrc
sudo wget "https://raw.githubusercontent.com/lonagi/fsociety/master/12.%20Configs/php.ini" -O /etc/php.ini
nvg install pkg-config zlib

sudo mv composer.phar /usr/local/bin/composer
curl -sS https://getcomposer.org/installer | php
nvg install mysql