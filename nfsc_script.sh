#!/bin/bash
yum update -y
mkdir /mnt/File-Read
mkdir /mnt/File-Write
echo "192.168.50.10:/var/nfs_share/ /mnt/File-Read nfs ro,noatime,x-systemd.automount,nosuid,noexec,proto=udp,vers=3 0 0" >> /etc/fstab
echo "192.168.50.10:/var/nfs_share/upload /mnt/File-Write nfs rw,noatime,x-systemd.automount,nosuid,noexec,proto=udp,vers=3 0 0" >> /etc/fstab
mount -a
