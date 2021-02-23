#Install Awesome ZSH
xcode-select —install
zsh <(curl -Ls https://git.modder.pw/mcmodder/dotfiles-patches/raw/master/install.zsh)

#Install HomeBrew as NVG
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "\nexport PATH=/opt/homebrew/bin:$PATH" >> ~/.zsh/.zshrc.d/30-zsh.zsh
echo "\nexport PATH=~/opt/anaconda3/bin:$PATH" >> ~/.zsh/.zshrc.d/30-zsh.zsh
echo '\nalias nvg="brew"' >> ~/.zsh/.zshrc.d/90-aliases.zsh
echo '\nalias ls="ls -aLF"' >> ~/.zsh/.zshrc.d/90-aliases.zsh
rm -rf ~/.zsh/.zshrc.d/90-colorize.zsh
echo '\nalias grep="grep --color"' >> ~/.zsh/.zshrc.d/90-colorize.zsh
nvg install coreutils
sudo xcodebuild -license accept

#Instal some soft
nvg install curl htop neofetch lolcat cmake python3 ffmpeg unzip wget
pip3 install weboa

#Beatf & cfgs
sudo wget https://raw.githubusercontent.com/lonagi/my-linux/main/etc/motd -O /etc/motd.sh
echo 'cat /etc/motd.sh | lolcat' >> ~/.zsh/.zshrc

#PHP
nvg install php pkg-config zlib mysql
sudo wget "https://raw.githubusercontent.com/lonagi/fsociety/master/12.%20Configs/php.ini" -O /etc/php.ini
sudo mv composer.phar /usr/local/bin/composer
curl -sS https://getcomposer.org/installer | php
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
tar xvfz phpMyAdmin-5.0.4-all-languages.zip
rm -rf phpMyAdmin-5.0.4-all-languages.zip
sudo mv phpMyAdmin-5.0.4-all-languages /opt/phpmyadmin
echo '\nalias phpmyadmin="/usr/bin/php -S localhost:8001 -t /opt/phpmyadmin"' >> ~/.zsh/.zshrc.d/90-aliases.zsh
echo '\nalias nphpmyadmin="nohup /usr/bin/php -S localhost:8001 -t /opt/phpmyadmin &"' >> ~/.zsh/.zshrc.d/90-aliases.zsh
cp /opt/phpmyadmin/config.sample.inc.php /opt/phpmyadmin/config.inc.php

#Javascript
nvg install node
npm install -g svgo

#Python
nvg install numpy miniforge
#softwareupdate --install-rosetta
