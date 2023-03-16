#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --partition=gputest
#SBATCH --gres=gpu:v100:1
#SBATCH --time=0:15:00
#SBATCH --mem=64G
#SBATCH --account=project_2000859

module purge
module load tensorflow/2.0.0
module list

export PROJ="2000859"
export DATADIR=$HOME/puhti-work/scratch_$PROJ

set -xv
srun python3 $*
