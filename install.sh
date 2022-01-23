#!/bin/bash

cyan="\e[1;36m"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
red='\e[1;31m'
yellow='\e[1;33m'
orange='\e[38;5;166m'
green='\e[1;32m'

if [[ $(/usr/bin/id -u) -ne 0 ]];
then
echo -e "$b __________________________"
echo -e "$red ROOT REQUIRED or TRYING SUDO .."
echo -e "$b __________________________"
exit

else
echo -e "$b __________________________"
echo -e "$green ROOT ACCESS CONFIRM .."
echo -e "$b __________________________"
sleep 1
fi

ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" == 0 ]]; then
echo ""
sleep 2
echo -e "$green[+] [ Internet Connection ]......PASSED "
sleep 2
else
echo ""
sleep 2
echo -e "$red[-] [ Internet Connection ]......FAILED "
echo ""
exit
fi

echo ""
#check it if Metasploit are Install or not
#######

which msfconsole > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] Metasploit-Framework..............${LighGreenF}[ Already Installed ] "
which msfconsole > /dev/null 2>&1
sleep 2

else
echo -e $red "[ X ] Metasploit-Framework -> ${RedF}not Installed "
echo -e $yellow "[ ! ] Installing Metasploit-Framework ...."
sleep 2
sudo apt install metasploit-framework
echo -e $b "[ ✔ ] Done installing ...."
which msfconsole > /dev/null 2>&1
sleep 2
fi


#check it if apktool Install or not
#######

which apktool > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] Apktool...........................${LighGreenF}[ Already Installed ] "
which aapt > /dev/null 2>&1
sleep 2

else

echo -e $red "[ X ] Apktool -> ${RedF}not Installed "
echo -e $yellow "[ ! ] Installing Apktool ...."
sleep 2
sudo apt install apktool
echo -e $b "[ ✔ ] Done installing ...."
which apktool > /dev/null 2>&1

sleep 2

fi

#check it if zipalign Install or not
######

which zipalign > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Zipalign..........................${LighGreenF}[ Already Installed ] "
which aapt > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Zipalign -> ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing Zipalign ...."
sleep 2
sudo apt install zipalign
echo -e "$b [ ✔ ] Done installing .... "

which aapt > /dev/null 2>&1
sleep 2
fi

#check it if nmap Install or not
###########

which nmap > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Nmap..........................${LighGreenF}[ Already Installed ] "
which nmap > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Nmap -> ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing Nmap ...."
sleep 2
sudo apt install nmap
echo -e $b " [ ✔ ] Done installing .... "

which nmap > /dev/null 2>&1
sleep 2
fi



#check openjdk-11-jdk installed or not
########

which java > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Openjdk-11-jdk..........................${LighGreenF}[ Already Installed ] "
which java > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Openjdk-11-jdk -> ${RedF}not Installed "
echo -e $yellow "[ ! ] Installing Openjdk-11-jdk ...."
sleep 2
sudo apt install openjdk-11-jdk
echo -e $b " [ ✔ ] Done installing .... "

which java > /dev/null 2>&1 
sleep 2
fi


#check it if hydra install or not
############

which hydra > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Hydra..........................${LighGreenF}[ Already Installed ] "
which hydra > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Hydra -> ${RedF}not Installed "
echo -e $yellow "[ ! ] Installing Hydra .... "
sleep 2
sudo apt install hydra
echo -e $b "[ ✔ ] Done installing .... "

which hydra > /dev/null 2>&1
sleep 2
fi


#check it if mitmf Install or not
##########

which mitmf > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ]..........................${LighGreenF}[ Already Installed ] "
which mitmf > /dev/null 2>&1
sleep 2

else

echo -e $red "[ X ] MITMF -> ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing MITMF ...."
sleep 2
apt-get install python-dev-is-python2 python-setuptools libpcap0.8-dev libnetfilter-queue-dev libssl-dev libjpeg-dev

curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py

python get-pip.py

pip2 install virtualenvwrapper

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python

source `which virtualenvwrapper.sh`

mkvirtualenv MITMf -p /usr/bin/python2.7

git clone https://github.com/byt3bl33d3r/MITMf

cd MITMf && git submodule init && git submodule update --recursive

pip2 install -r requirements.txt

pip2 install pyinotify configobj twisted pillow pefile python-magic capstone

echo -e $b " [ ✔ ] Done installing .... "

which nmap > /dev/null 2>&1
sleep 2
fi

echo ""
echo -e "
$b ________________________________________________________
$green    TYPE : bash HackSploit or HackSploit
$b ________________________________________________________
"
