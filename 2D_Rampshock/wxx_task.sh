#!/bin/bash
#
#SBATCH --job-name=wxx_job
#SBATCH --output=output.txt
#
#SBATCH --ntasks=180
#SBATCH --nodes=15
#SBATCH --partition=twelve
#SBATCH --time=02:00:00

mpirun -np 180 /home/xinxin/scratch/Solver/src/maia properties_run.toml
