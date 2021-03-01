#!/bin/bash
yum update -y
mkdir /var/nfs_share
mkdir /var/nfs_share/upload
chmod 777 /var/nfs_share/upload/
systemctl start nfs
systemctl enable nfs-server
echo "/var/nfs_share 192.168.50.11(ro)" > /etc/exports
echo "/var/nfs_share/upload 192.168.50.11(rw)" >> /etc/exports
exportfs -r
