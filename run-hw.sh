#!/bin/bash
#SBATCH --job-name=hello_world
#SBATCH --account=
#SBATCH --partition=test
#SBATCH --time=00:00:10
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1  # in MB

module purge
module load python-data/3.9-2
module list

set -xv
srun python3 $*