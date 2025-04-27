v#!/bin/bash
conda init bash > /proc/1/fd/1
source ~/.bashrc

if [ ! -d /home/abc/venv ]; then
echo "=========================================" > /proc/1/fd/1
echo "CONDA CREATE venv" > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
    conda create -p /home/abc/venv python=3.10 -y > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
echo "CONDA ACTIVATE venv" > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
    conda activate /home/abc/venv > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
echo "INSTALLING DEPENDENCIES: Torch torchvision torchaudio cuda126 (WILL TAKE A LONG TIME)" > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
    pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu126 > /proc/1/fd/1
    conda install -y -c "nvidia/label/cuda-12.6.0" cuda-runtime -y > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
echo "DEPENDENCIES ALL INSTALLED" > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
fi

if [ ! -d /home/abc/framepack ]; then
echo "=========================================" > /proc/1/fd/1
echo "INSTALLING & Downloading framepack" > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
cd /home/abc/
git clone https://github.com/lllyasviel/FramePack.git > /proc/1/fd/1
cd FramePack
pip install -r requirements.txt > /proc/1/fd/1
fi

echo "=========================================" > /proc/1/fd/1
echo "FINISH INSTALLATION" > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
cd /home/abc/
touch installed
