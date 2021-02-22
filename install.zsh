#Sublime Text
sudo mkdir -p /usr/local/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl 

#Install HomeBrew as NVG
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HE..)"
export PATH=/opt/homebrew/bin:$PATH 
echo '\nalias nvg="brew"' >> .zshrc
nvg install coreutils
