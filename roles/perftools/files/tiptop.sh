#!/bin/bash

echo "Download, make and install tiptop"


echo "cleanup old files"
rm -f /usr/local/bin/ptiptop
rm -rf /tmp/tiptop

yum -y install byacc flex ncurses ncurses-devel
mkdir -p /tmp/tiptop
curl -v http://tiptop.gforge.inria.fr/releases/tiptop-2.3.tar.gz --output /tmp/tiptop/tiptop.tar.gz
cd /tmp/tiptop
gunzip *gz
tar xvf *tar
rm -rf *tar
cd tip*
./configure
make all
cd /tmp
rm -rf /tmp/tiptop

