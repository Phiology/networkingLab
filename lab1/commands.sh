#/bin/bash

ls -l /etc/ > etcfile_1
cp /labdata/etcfile_1 /media/PC2/kneuman/
cd /labdata/
mkdir PC1
mkdir PC3
mkdir PC4
cd PC1/
ftp 10.0.1.11
#Remote system type is UNIX.
#Using binary mode to transfer files.
ftp> cd /labdata/
#250 CWD command successful.
ftp> get etcfile_1
#local: etcfile_1 remote: etcfile_1
#200 PORT command successful.
#550 etcfile_1: No such file or directory.
ftp> get etcfile_1
#local: etcfile_1 remote: etcfile_1
#200 PORT command successful.
#150 Opening BINARY mode data connection for 'etcfile_1' (15430 bytes).
#226 Transfer complete.
#15430 bytes received in 0.00 secs (47836.1 kB/s)
ftp> quit
#221 Goodbye.
cd ../PC3/
#same for PC3 and 4
cp -r * /media/PC2/kneuman/
more /etc/hosts
more /etc/hosts > /media/PC2/kneuman/etc_hosts
cp /etc/network/interfaces  /media/PC2/kneuman/
ping -c 5 10.0.1.11 > /media/PC2/kneuman/ping_1
ping -c 5 127.0.0.1 > /media/PC2/kneuman/ping_lo
sudo sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=0
tcpdump -n host 10.0.1.11 > /media/PC2/kneuman/tcpdump_PC1
ping -c 1 10.0.1.11
tcpdump -n > /media/PC2/kneuman/tcpdump_nonexistant_and_broadcast
ping -c 1 111.111.111.111 > /media/PC2/kneuman/ping_nonexistant
ping -c 2 -b 10.0.1.255 > /media/PC2/kneuman/ping_broadcast
