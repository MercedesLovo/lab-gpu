#!/bin/bash
#SBATCH -J seq-pacioli-alumno15
#SBATCH --chdir=/home/alumno15
#SBATCH -p hpc-bio-pacioli
#SBATCH --cpus-per-task=4
#SBATCH --ntasks-per-node=1

echo "ejecutando con value: $1"

module load anaconda/2023.03

ipython reduc-operation-array_par-alumno15.ipynb $1

module unload anaconda/2023.03
