#!/bin/bash

apt update
apt install -y upx
python -m pip install --upgrade pip setuptools wheel
cd workspace/imgtool
pip install -r ../requirements.txt
pip install pyinstaller
pyinstaller --onefile main.py -n imgtool
file dist/imgtool
ldd dist/imgtool
