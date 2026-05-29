#!/bin/bash
#SBATCH --job-name=gem5_gpu
#SBATCH --partition=gpu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:30:00
#SBATCH --output=log_CU.txt
#SBATCH --reservation=fri

set -euo pipefail

module load apptainer 2>/dev/null || true

APPTAINER_BIN=$(command -v apptainer || command -v singularity || true)
if [ -z "$APPTAINER_BIN" ]; then
  echo "ERROR: apptainer/singularity not found. Run 'module avail apptainer' or contact admins."
  exit 1
fi

GEM5_WORKSPACE=/d/hpc/projects/FRI/GEM5/gem5_workspace
GEM5_ROOT=$GEM5_WORKSPACE/gem5
GEM5_PATH=$GEM5_ROOT/build/VEGA_X86
APPTAINER_IMG=$GEM5_WORKSPACE/gcn-gpu_v24-0.sif

cd /d/hpc/home/zb26346/Projects/RS/cs_fourth_homework-main

BINARY=$PWD/histogram/bin/histogram_opt.bin
if [ ! -f "$BINARY" ]; then
  echo "ERROR: binary not found: $BINARY"
  exit 1
fi

srun --ntasks=1 --time=00:30:00 --output=logs.txt \
  "$APPTAINER_BIN" exec --bind "$PWD:$PWD" --pwd "$PWD" \
  "$APPTAINER_IMG" \
  "$GEM5_PATH/gem5.opt" --outdir=logs \
  "$GEM5_ROOT/configs/example/apu_se.py" \
  -n 3 --num-compute-units 2 --gfx-version="gfx902" \
  -c "$BINARY"