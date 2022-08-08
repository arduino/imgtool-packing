#!/bin/bash

apt-get update
apt-get install -y upx
python -m pip install --upgrade pip setuptools wheel
cd workspace/ || exit
pip install -r requirements.txt
pip install pyinstaller==5.0.1
echo "
---
Available PyInstaller bootloaders:"
ls /usr/local/lib/python3.7/site-packages/PyInstaller/bootloader/
echo "
---
Kernel architecture name:"
uname -m
echo "
---"
pyinstaller --onefile main.py -n imgtool
echo "
---
File information for build output:"
file dist/imgtool
echo "
---
Library dependencies for build output:"
ldd dist/imgtool
