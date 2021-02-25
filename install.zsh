#Install Awesome ZSH
xcode-select —install
zsh <(curl -Ls https://git.modder.pw/mcmodder/dotfiles-patches/raw/master/install.zsh)

#Install HomeBrew as NVG
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "\nexport PATH=/opt/homebrew/bin:$PATH" >> ~/.zsh/.zshrc.d/30-zsh.zsh
echo "\nexport PATH=~/opt/anaconda3/bin:$PATH" >> ~/.zsh/.zshrc.d/30-zsh.zsh
echo '\nalias nvg="brew"' >> ~/.zsh/.zshrc.d/90-aliases.zsh
echo '\nalias ls="ls -aLF"' >> ~/.zsh/.zshrc.d/90-aliases.zsh
echo '\nalias python38="/opt/homebrew/opt/python@3.8/bin/python3"' >> ~/.zsh/.zshrc.d/90-aliases.zsh
echo '\nalias pip38="/opt/homebrew/opt/python@3.8/bin/pip3"' >> ~/.zsh/.zshrc.d/90-aliases.zsh
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
#Install https://www.python.org/downloads/release/python-379/
pip3 install notebook==5.7.8 pybind11
pip3 install --upgrade pyinstaller
nvg install numpy miniforge python@3.8
#softwareupdate --install-rosetta
git clone https://github.com/pandas-dev/pandas /tmp/pandas
git clone https://github.com/scipy/scipy.git /tmp/scipy
pip3 install /tmp/pandas/ --no-binary :all: --no-use-pep517
cd /tmp/scipy
python3 setup.py build & python3 setup.py install
cd ~
rm -rf /tmp/pandas /tmp/scipy
pip3 install matplotlib pytesseract Pillow beautifulsoup4 html5lib mysql-connector-python sk-video scikit-image ImageHash virtualenv virtualenvwrapper pywebview
#OpenCV
conda create --name opencv
source ~/opt/anaconda3/etc/profile.d/conda.sh
conda activate /opt/homebrew/Caskroom/miniforge/base/envs/opencv
pip install opencv-python
conda deactivate
#Tensorflow
#brew install --build-from-source libtensorflow
#pip install https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.8.0-py3-none-any.whl