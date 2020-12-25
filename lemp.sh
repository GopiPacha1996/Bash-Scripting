# /bin/bash

echo LEMP stands for Linux,Nginx,Mysql and PHP checking software status
echo checking Nginx is Installed or not
sleep 5
pkg=nginx
dpkg -s $pkg &> /dev/null

if [ $? -eq 1 ]
then
	echo "$pkg is not installed do you wnat install that package(y/n)?"
	read k
	if [ $k == 'y' ]
	then 
		sudo apt install -y $pkg
	else
		echo Your wish !!
	fi
else
    echo "$pkg Package  is  installed!"
    fi
echo checking Mysql is installed or not
sleep 5
pkg=mysql-server
dpkg -s $pkg &> /dev/null

if [ $? -eq 1 ]
then
        echo "$pkg is not installed do you wnat install that package(y/n)?"
        read k
        if [ $k == 'y' ]
        then
                sudo apt install -y $pkg
        else
                echo Your wish !!
        fi
else
    echo "$pkg Package  is  installed!"
    fi
echo checking PHP is installed or not
sleep 5
pkg=php
dpkg -s $pkg &> /dev/null

if [ $? -eq 1 ]
then
        echo "$pkg is not installed do you wnat install that package(y/n)?"
        read k
        if [ $k == 'y' ]

        then
	        echo which php version you want to install?
		read v
               sudo apt install -y software-properties-common 
	       sudo add-apt-repository ppa:ondrej/php -y
	       for i in php$v php$v-common php$v-opcache php$v-cli php$v-gd php$v-curl php$v-mysql; do
                sudo apt-get install -y  $i
                done

        else
                echo Your wish !!
        fi
else
    echo "$pkg Package  is  installed!"
    fi
echo Your LEMP Stack  is Successfully Configured!!!!
