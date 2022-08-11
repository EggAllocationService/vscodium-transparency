#!/usr/bin/bash
# this runs in an arch container
useradd -m build && echo "build ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/build
chown -R build ../workspace
su build -s /usr/bin/bash -c "makepkg . -d"
chown -R root ../workspace

