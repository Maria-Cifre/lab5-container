#!/bin/bash
#
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno03/data
#SBATCH -J lab5
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE


echo -----------------------------------
echo "Tiempo ejecución 13 k-mers Python"
echo -----------------------------------
echo
time python ./k-mer13.py
echo
echo -----------------------------------
echo "Tiempo ejecución 14 k-mers Python"
echo -----------------------------------
echo
time python ./k-mer14.py
echo
echo -----------------------------------
echo "Tiempo ejecución 13 k-mers C++"
echo -----------------------------------
echo
time ./k-mer13
echo
echo -----------------------------------
echo "Tiempo ejecución 14 k-mers C++"
echo -----------------------------------
echo
time ./k-mer14




