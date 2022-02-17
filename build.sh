#!/bin/bash

apt-get update
apt-get install -y upx
python -m pip install --upgrade pip setuptools wheel
cd workspace/
pip install -r requirements.txt
pip install pyinstaller==4.2
pyinstaller --onefile main.py -n imgtool
