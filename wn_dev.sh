#!/bin/bash

#SBATCH --job-name=rgcn
#SBATCH --ntasks-per-node=1
#SBATCH --partition=devel
#SBATCH --gres=gpu:v100:1
#SBATCH --mem-per-cpu=70G

module purge
module load Anaconda3
source activate $DATA/myenv


python main.py --negative-sample 32 --n-epochs 200 --dataset wn18rr --gpu 0 --n-bases 5
