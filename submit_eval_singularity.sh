#!/bin/bash

#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno03/data
#SBATCH -J lab5_sing
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE

module load singularity/3.8.0
echo
echo "TIEMPOS DE EJECUCIÓN CON SINGULARITY"
echo
echo --------------------------------------
echo "Tiempo de ejecución python 13 k-mers"
echo --------------------------------------
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python ./k-mer13.py 
echo
echo --------------------------------------
echo "Tiempo de ejecución python 14 k-mers" 
echo -------------------------------------- 
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python ./k-mer14.py 
echo
echo --------------------------------------
echo "Tiempo de ejecución C++ 13 k-mers" 
echo -------------------------------------- 
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13 
echo
echo --------------------------------------
echo "Tiempo de ejecución C++ 14 k-mers" 
echo -------------------------------------- 
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14 
echo

