#!/bin/bash

sudo apt update
sudo apt python3
sudo apt install python3 python3-venv python3-pip
python3 -m venv virtual
source virtual/bin/activate
pip3 install yt-dlp
deactivate
