#!/bin/bash


yum install -y go


export PATH=$PATH:/usr/local/go/bin
go get golang.org/x/sys/unix
go get github.com/tobert/pcstat/pcstat

echo "pcstat is on /root/go/bin"
#pcstat /var/lib/cassandra/data/*/*/*-Data.db

