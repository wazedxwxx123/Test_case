#!/bin/bash
#
#SBATCH --job-name=wxx_job
#SBATCH --output=output.txt
#
#SBATCH --ntasks=28
#SBATCH --nodes=3
#SBATCH --partition=twentyeight
#SBATCH --time=04:00:00

mpirun -np 84 /home/xinxin/scratch/Solver/src/maia properties_grid.toml
mpirun -np 84 /home/xinxin/scratch/Solver/src/maia properties_run.toml

