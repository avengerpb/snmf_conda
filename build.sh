 #!/bin/bash

snmf=$PREFIX/opt/snmf
mkdir -p $snmf
chmod 777 $snmf
mkdir -p $PREFIX/bin/
cp -rf ./* $snmf/
chmod +x $snmf/snmf.sh
chmod +x $snmf/plink
chmod +x $snmf/Snmf.pl
bash $snmf/snmf.sh vcf output logs best_k_output best_k_logfile kmin kmax groups threshold_group >> run.sh 
ln -rs $snmf/run.sh $PREFIX/bin/
