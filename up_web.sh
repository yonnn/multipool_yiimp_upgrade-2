#####################################################
# Created by cryptopool.builders for crypto use...
#####################################################

source /etc/functions.sh
source /etc/multipool.conf
source $STORAGE_ROOT/yiimp/.yiimp.conf

echo Downloading selected YiiMP Repo...
sudo rm -r $STORAGE_ROOT/yiimp/yiimp_setup/yiimp
hide_output sudo git clone ${YiiMPRepo} $STORAGE_ROOT/yiimp/yiimp_setup/yiimp

echo Upgrading stratum...
cd $STORAGE_ROOT/yiimp/yiimp_setup/yiimp/web/yaamp/core/functions/

cp -r yaamp.php $STORAGE_ROOT/yiimp/site/web/yaamp/core/functions

echo Web upgrade complete...
cd $HOME/multipool/yiimp_upgrade
