# NVG-mac
NVG OS X

### Getting Started

Run installer

```
sudo install.zsh
```

### Keys

Parallels:  
`QBP4PG-5SMPTH-KCMPVR-NE2S47-429DSZ`  

### Manual Addition

Setup:  
1. Google Chrome
2. ITerm

Do:  
1. System settings  
2. Setting SSH  
3. Apple ID  
  
Next setup:  
1. NordVPN
2. Github Desktop
3. Telegram
4. Sublime Text


Sublime setup  
```
sudo mkdir -p /usr/local/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl 
```

5. Zoom
6. Discord
7. UnityHub
8. CyberDuck
9. Jetbrains Toolbox + XCode
10. Tor
11. Team Viewer
12. PokerStars
13. VirtualBox (Parallels)
14. GIMP
15. Postman

Set in phpmyadmin/config.inc.php:  
```
$cfg['Servers'][$i]['host'] = '127.0.0.1';
$cfg['Servers'][$i]['AllowNoPassword'] = true;
```