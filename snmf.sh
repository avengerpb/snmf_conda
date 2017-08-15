#!/bin/bash
vcf=$1
outputs=$2
logs=$3
best_k_output=$4
best_k_logfile=$5
kmin=$6
kmax=$7
groups=$8
threshold_group=$9

directory=`dirname $0`
mkdir ../opt/snmf/tmpdir$$

perl ../opt/snmf/Snmf.pl -i $vcf -o $outputs -k $kmin -m $kmax -d ./tmpdir$$ -t $threshold_group

mv ../opt/snmf/tmpdir$$/output $best_k_output
mv ../opt/snmf/tmpdir$$/log $best_k_logfile
mv ../opt/snmf/tmpdir$$/outputs.Q $outputs
mv ../opt/snmf/tmpdir$$/logs $logs
mv ../opt/snmf/tmpdir$$/groups $groups
