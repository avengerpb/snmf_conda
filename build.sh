 #!/bin/bash

snmf=$PREFIX/opt/snmf
mkdir -p $PREFIX/bin
cp -r temp/*  $snmf
sed -i.bak '1 s|^.*$|#!/usr/bin/env perl|g' $snmf/Snmf.pl
rm -f $snmf/Snmf.bak
unzip $snmf/*.zip
mv sNMF_CL_v1.2.zip/* $snmf/
rm -rf temp
chmod +x $snmf/snmf.sh
chmod +x $snmf/plink
chmod +x $snmf/install.command
bash $snmf/install.command
chmod 777 $snmf/Snmf.pl
cp $snmf/snmf.sh $PREFIX/bin/
