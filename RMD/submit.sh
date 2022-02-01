module load miniconda
conda activate st-pipeline
module load dSQ

rm -f run1.sh

for i in mBrain;do echo sh complete.sh $i /gpfs/ysm/project/fan/gs592/09_Spatial_mBrain_12272021/;done>>run1.sh
dSQ --job-file run1.sh --mail-type=ALL --partition=scavenge --cpus-per-task=16 --mem-per-cpu=4g --submit
