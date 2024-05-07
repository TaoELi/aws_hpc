#!/bin/bash

sudo apt update
sudo apt install cmake g++ gfortran libboost-filesystem-dev libboost-serialization-dev libboost-system-dev liblapack-dev libopenblas-dev make python csh subversion libc-dev libhdf5-dev python-is-python3 -y

export QC="$HOME/source/qchem/"
export QCAUX="$HOME/source/qcaux/"
export QCSCRATCH="$HOME/scratch/"
export PATH=$PATH:$QC/bin:$QC/bin/perl


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ubuntu/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ubuntu/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ubuntu/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ubuntu/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source ~/source/cavity-md-ipi/i-pi-master-py3/env.sh

export PATH=$PATH:$HOME/local/bin/
