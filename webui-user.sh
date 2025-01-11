#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Install directory without trailing slash
#install_dir="/home/$(whoami)"

# Name of the subdirectory
#clone_dir="stable-diffusion-webui"

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
#export COMMANDLINE_ARGS=""

# python3 executable
python_cmd="python3.11"

export HSA_OVERRIDE_GFX_VERSION=11.0.0
export PYTORCH_ROCM_ARCH=gfx1102
#export HSA_OVERRIDE_GFX_VERSION=11.0.0
#export CUDA_VISIBLE_DEVICES=0
#export HIP_VISIBLE_DEVICES=1

#export HSA_OVERRIDE_GFX_VERSION=10.3.0
#export PYTORCH_ROCM_ARCH=gfx1100 #useless

export PYTORCH_HIP_ALLOC_CONF=garbage_collection_threshold:0.6,max_split_size_mb:128
export COMMANDLINE_ARGS="--skip-torch-cuda-test --enable-insecure-extension-access --disable-opt-split-attention --no-half --precision full" # --medvram --medvram-sdxl

# In case of problem with bitsandbytes with ROCm:
# pip uninstall bitsandbytes
# PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:32 BNB_CUDA_VERSION=117 pip install bitsandbytes

# git executable
#export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# install command for torch
#export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"
export TORCH_COMMAND="pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/rocm6.3"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
#export K_DIFFUSION_PACKAGE=""
#export GFPGAN_PACKAGE=""

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
#export CODEFORMER_COMMIT_HASH=""
#export BLIP_COMMIT_HASH=""

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

# Uncomment to disable TCMalloc
#export NO_TCMALLOC="True"

###########################################
