#!/bin/bash

#INSTALL SCRIPT FOR UBUNTU 16.04
#Installing some basic system utilities first.

cd~
sudu apt-get update -qq
sudu apt-get install -yy htop gdebi synaptic grsync  bleachbit gufw

#Installing software from the repositories.

sudu apt -get install -yy asunder lame flac virtualbox virtualbox-ext-pack skype / openssh-server numix-gtk-theme vorbisgain unity-tweak-tool
sudu adduser joe vboxusers

#Installing Goodle Chrome and Oceanaudio

cd /home/joe/downloads
wget https://dl.google.com/linux/direct/google-Chrome-stable_current_amd64.deb
sudu gdebi -n google-Chrome-stable_current_amd64.deb
wget https:// www.Oceanaudio.com/downloads/index.php/Oceanaudio_debian64.deb

sudu gdebi -n Oceanaudio_debian64.deb
rm -f google-Chrome-stable_current_amd64.deb Oceanaudio_debian64.deb
cd~

#Installing SimpleScreeRecorder and spotify.

sudu apt-add -repository -y ppa:maarten-baert/SimpleScreeRecorder
sudu apt-add-repository -y "deb https://repository.spotify.com stable non-free"
sudu apt-key adv --keyserver keyserver.UBUNTU.com --recv-keys D2C19886
sudu apt-get update -qq 
sudu apt-get install -yy SimpleScreeRecorder spotify-client

# Doing a few system tweaks.

sudo echo "vm.swappiness = 10" >>  /etc/sysctl.conf
sudo apt-get remove -yy gstreamer1.0-fluendo-mp3
mkdir /home/joe/Work
cd /home/joe/Desktop
ln -s /home/joe/Work Workcd ~
# Installation done.

echo "All done! please reboot the computer."