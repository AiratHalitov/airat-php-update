#!/bin/bash

PHPOLD=7.4
PHPNEW=8.0

echo -e "Current PHP version is: $(php -v)\n"
dpkg -l | grep php$PHPOLD | awk '{print $2;}' > php$PHPOLD.txt
cp php$PHPOLD.txt php$PHPNEW.txt

sed "s/$PHPOLD/$PHPNEW/g" -i php$PHPNEW.txt

sudo apt install `cat php$PHPNEW.txt`

sudo apt remove libapache2-mod-php$PHPOLD
sudo service apache2 restart

sudo a2enmod php$PHPNEW
sudo service apache2 restart
sudo service mysql restart

sudo apt update
sudo apt remove `cat php$PHPOLD.txt`
# or with cleaning:
#sudo apt purge `cat php$PHPOLD.txt`
sudo apt update

echo -e "\nCurrent PHP version is: $(php -v)\nDone!"
