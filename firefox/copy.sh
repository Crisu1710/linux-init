# firdot_filesefox remove tab bar
ffdf=`echo ~/.mozilla/firefox/*.default-release`
mkdir $ffdf/chrome
cp ./firefox/userChrome.css $ffdf/chrome/userChrome.css
