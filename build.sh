#!/bin/bash
apt-get install libswitch-perl -y
apt-get install build-essential -y
snmf=$PREFIX/opt/$PKG_NAME-$PKG_VERSION
mkdir -p $snmf
cp -r temp/* $snmf/
cp -r git/* $snmf/
cp -r ./* $snmf/
ls
sed -i.bak '1 s|^.*$|#!/usr/bin/env perl|g' $snmf/Snmf.pl
rm -f $snmf/Snmf.bak
chmod +x $snmf/snmf.sh
chmod +x $snmf/plink
chmod +x $snmf/install.command
make $snmf/install.command
chmod 777 $snmf/Snmf.pl
mkdir -p $PREFIX/bin
mkdir -p $PREFIX/opt/var
ln -s /tool/bin/sNMF /usr/bin/
