#! /bin/bash

systemctl stop lightdm.service
rmmod nvidia_drm
modprobe nvidia_drm modeset=1
systemctl restart lightdm.service
