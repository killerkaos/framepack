#!/bin/bash
conda init bash > /proc/1/fd/1
source ~/.bashrc

conda activate /config/venv

echo "=========================================" > /proc/1/fd/1
echo "EXECUTING GRADIO SERVER" > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
cd /config/FramePack
python demo_gradio.py --share > /proc/1/fd/1
