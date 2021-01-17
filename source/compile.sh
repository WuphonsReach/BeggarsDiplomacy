#!/bin/sh
python2 compile.py

rsync --checksum --recursive --verbose --exclude .git \
    "../" \
    "/home/syb/WR/mb/steam/steamapps/common/MountBlade Warband/Modules/Diplado-dev0006/"

