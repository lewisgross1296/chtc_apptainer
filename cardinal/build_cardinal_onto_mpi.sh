#!/bin/bash
#SBATCH --partition=pre
#SBATCH --time=0-04:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=4000
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out

export JOB_TMP_PATH=/local/$USER/${SLURM_JOB_ID}
export TMPDIR=$JOB_TMP_PATH/tmp
export APPTAINER_TMPDIR=$JOB_TMP_PATH/apptainer
mkdir -p $TMPDIR
mkdir -p $APPTAINER_TMPDIR

container_name=cardinal_from_chtc_base

echo "Building container ${container_name}"
echo ""

apptainer build \
        --bind $TMPDIR:/tmp \
        "${@:2}" \
        ${container_name}.sif ${container_name}.def

rm -rf $JOB_TMP_PATH

echo ""
echo "Container build completed $(date)."