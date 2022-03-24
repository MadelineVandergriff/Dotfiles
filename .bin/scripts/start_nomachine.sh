#! /bin/sh

systemctl stop sshd.service
sleep 10
/usr/NX/bin/nxserver --restart
sleep 10
systemctl restart sshd.service
