#!/bin/bash

yum install -y help2man

#AUTOMAKE
rm -rf /tmp/automake
mkdir -p /tmp/automake
cd /tmp/automake
curl -v ftp://ftp.gnu.org/gnu/automake/automake-1.16.1.tar.gz --output automake.tar.gz
gunzip automake.tar.gz
tar -xvf automake.tar
rm -f *tar
cd automake*
./configure
make
make install
cd ..
rm -rf /tmp/automake


#yum install -y libtool

#RDMSR
export PATH=$PATH:/usr/local/bin
rm -rf /tmp/rdmsr
mkdir /tmp/rdmsr
cd /tmp/rdmsr
git clone https://github.com/01org/msr-tools.git
cd msr-tools
./autogen.sh
