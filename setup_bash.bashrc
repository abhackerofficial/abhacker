#!/bin/bash

# Author : ABHacker Official
# Copyright ©2020
# Script follows here:

echo
echo -e '\033[1;91mDownloading requirements...'

apt --assume-yes install ruby > /dev/null 2>&1 && gem install lolcat > /dev/null 2>&1 && apt --assume-yes install toilet > /dev/null 2>&1 && apt --assume-yes install python > /dev/null 2>&1 && apt --assume-yes install wget > /dev/null 2>&1

cd $HOME
rm log.py /data/data/com.termux/files/usr/etc > /dev/null 2>&1
rm bash.bashrc /data/data/com.termux/files/usr/etc > /dev/null 2>&1
rm -rf motd /data/data/com.termux/files/usr/etc > /dev/null 2>&1
wget https://raw.githubusercontent.com/abhackerofficial/termux-login/master/.setup/bash.bashrc > /dev/null 2>&1
mv bash.bashrc /data/data/com.termux/files/usr/etc > /dev/null 2>&1
wget https://raw.githubusercontent.com/abhackerofficial/termux-login/master/.setup/log.py > /dev/null 2>&1
mv log.py /data/data/com.termux/files/usr/etc > /dev/null 2>&1

echo
wget https://raw.githubusercontent.com/abhackerofficial/progressbar/master/progress_v1.0 > /dev/null 2>&1 && bash progress_v1.0 && rm progress_v1.0

echo
echo 'Please restart Termux app...' | lolcat
kill -9 $PPID
