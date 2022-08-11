#!/usr/bin/bash
# this runs in an arch container
useradd -m build && echo "build ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/build
chown -R build ../workspace
su build -s /usr/bin/bash -c "./packagescript.sh"
chown -R root ../workspace

