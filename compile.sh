#!/bin/bash

# This compiles libcurl for Volumio without http2 support


echo "Preparing Environment"

#before starting
# sudo nano /etc/apt/sources.list
# uncomment the last line 

apt-get update 
sudo apt-get install -y build-essential automake autoconf debhelper devscripts
sudo apt-get build-dep -y libcurl4


wget http://deb.debian.org/debian/pool/main/c/curl/curl_7.64.0.orig.tar.gz
tar xf curl_7.64.0.orig.tar.gz
cd curl-7.64.0/
wget http://deb.debian.org/debian/pool/main/c/curl/curl_7.64.0-4+deb10u2.debian.tar.xz
tar xf curl_7.64.0-4+deb10u2.debian.tar.xz


#nano debian/rules
#remove --with-nghttp2

#once done
#debuild -i -us -uc -b -d
