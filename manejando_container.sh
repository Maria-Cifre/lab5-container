#!/bin/bash

module add singularity/3.8.0

echo "a) La versión del sistema operativo de la imagen"
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release
echo
echo "b) El contenido del directorio que estamos viendo"
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls 
echo
echo "c) El path del directorio que estamos viendo"
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd
echo
echo "d) La versión de python que hay instalada"
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif  python --version
echo
echo "e)La versión del compilador de C++ que tenemos instalada"
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif  g++ --version
echo
echo "Ejecuta el k-mers de longitud 13 compilado de C++ y mide su tiempo de ejecución"
echo
time /nas/hdd-0/singularity_images/python_3-9-1.sif  ./data/k-mer13
