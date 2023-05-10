#!/bin/bash
#
#SBATCH --job-name=wxx_job
#SBATCH --output=output.txt
#
#SBATCH --ntasks=96
#SBATCH --nodes=8
#SBATCH --partition=twelve
#SBATCH --time=04:00:00

mpirun -np 96 /home/xinxin/scratch/Solver/src/maia properties_grid.toml
mpirun -np 96 /home/xinxin/scratch/Solver/src/maia properties_run.toml

