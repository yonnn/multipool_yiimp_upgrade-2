#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by cryptopool.builders for crypto use...
#####################################################

source /etc/functions.sh
cd $HOME/multipool/yiimp_upgrade

RESULT=$(dialog --stdout --title "Ultimate Crypto-Server YiiMP Updater v1.0" --menu "Choose one" -1 60 3 \
1 "Upgrade Stratum server(s) - Run on each stratum server" \
2 "Upgrade Web Server - Run on web server" \
3 Exit)
if [ $RESULT = ]
then
exit;
fi

if [ $RESULT = 1 ]
then
clear;
cd $HOME/multipool/yiimp_upgrade
source up_stratum.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/multipool/yiimp_upgrade
source up_web.sh;
fi

if [ $RESULT = 3 ]
then
clear;
exit;
fi
