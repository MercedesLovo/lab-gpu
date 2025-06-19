#!/bin/bash
#SBATCH --partition=hpc-bio-nikola-gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1

args=(5000000 50000000 5000000)

module load anaconda/2023.03

for i in "${args[@]}"; do
    echo "Ejecutando con argumento: $i"
    ipython reduc-operation-array_gpu-alumno15.ipynb "$i" 
done

module unload anaconda/2023.03
