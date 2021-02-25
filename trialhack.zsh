cd ~/Library/Preferences
ls | grep 'jetbrains' | xargs rm
rm ~/Library/Application Support/JetBrains/PhpStorm2020.3/eval/*.key
rm ~/Library/Application Support/JetBrains/PhpStorm2020.3/options/other.xml
cd ~/Library/Preferences
plutil -convert xml1 com.apple.java.util.prefs.plist
sed -i'' -e '/evlsprt/d' com.apple.java.util.prefs.plist
plutil -convert binary1 com.apple.java.util.prefs.plist