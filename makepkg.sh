#!/usr/bin/bash
# this runs in an arch container
useradd -m build && echo "build ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/build
chmod -R 0777 ../*
chown -R build ../*
su build -s /usr/bin/bash -c "makepkg . -d"
chown -R root ../*
chmod -R 744 ../*
