sample=$1
indir=$2
perl /gpfs/ysm/project/fan/gs592/Database/PerlScripts/2-align-step1.pl $indir/$sample/$sample\_stdata.updated.tsv > $indir/$sample/$sample\.svg
