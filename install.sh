# /bin/bash

install () 
{
echo Enter package Name
read  pkg
dpkg -s $pkg &> /dev/null

if [ $? -eq 1 ]
then
	echo 'Do you wnat install that package(y/n)?'
	read k
	if [ $k == 'y' ]
	then 
		sudo apt install -y $pkg
	else
		echo Your wish !!
	fi
else
    echo " $pkg Package  is  installed!"
    echo " do you want install any other packaes (y/n)?"
    read o
    if [ $o == 'y' ]
    then
	    install
    fi
fi
}
install
echo Job Done TQ !!@@
