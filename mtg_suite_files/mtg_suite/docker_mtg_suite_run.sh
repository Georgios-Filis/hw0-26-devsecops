#!/bin/bash
set -e

# Source conda
source "installation/find_conda.sh"
source $CONDA_SH_PATH

# The "$@" corresponds to all the arguments of the entrypoint which is exactly what CMD defines and the last arguments of docker run define.
conda activate mtg_suite_env
python mtg_suite.py "$@"
conda deactivate
