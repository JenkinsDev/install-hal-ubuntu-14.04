#!/bin/sh

###
# Author: David Jenkins
# License: MIT
# Description: Installs hal using the zombie hal ppa (thanks mjblenner! <3)
###

# First we will go ahead and add the universe repo
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"

# Add the Zombie hal PPA
sudo add-apt-repository ppa:mjblenner/ppa-hal && sudo apt-get update

# Go ahead and install hal.  The reason we added the universe package in the first step is
# we need it to be able to install hal-info which hal depends on
sudo apt-get install hal

# Next we can go ahead and move our libflashplayer.so and /usr/ directory
sudo cp libflashplayer.so /usr/lib/firefox-addons/plugins/libflashplayer.so
sudo cp -r usr/* /usr/
