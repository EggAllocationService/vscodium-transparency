#!/usr/bin/bash
export PKGEXT='.pkg.tar.gz' 
echo "Making with extension $PKGEXT"
makepkg . -d
