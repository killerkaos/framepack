#!/bin/bash
conda init bash > /proc/1/fd/1
source ~/.bashrc

conda activate /home/abc/venv

echo "=========================================" > /proc/1/fd/1
echo "EXECUTING GRADIO SERVER" > /proc/1/fd/1
echo "=========================================" > /proc/1/fd/1
cd /home/abc/FramePack
python demo_gradio.py --share > /proc/1/fd/1
