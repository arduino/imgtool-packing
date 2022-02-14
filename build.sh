#!/bin/bash

apt update
apt install -y upx
python -m pip install --upgrade pip setuptools wheel
cd workspace/imgtool
pip install -r ../requirements.txt
pip install pyinstaller==4.2
ls /usr/local/lib/python3.7/site-packages/PyInstaller/bootloader/
uname -m
pyinstaller --onefile main.py -n imgtool
file dist/imgtool
ldd dist/imgtool
./dist/imgtool
