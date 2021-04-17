#!/bin/bash
python2 compile.py

# Adjust the following as needed based on where you keep your copy of Mount & Blade: Warband.
# This directory must exist in order for it to be updated when you run this script.
INSTALLDIR="/home/syb/WR/mb/steam/steamapps/common/MountBlade Warband/Modules/BeggarsDiplomacy"

if [ -d "${INSTALLDIR}" ]; then
  rsync --checksum --recursive --verbose --exclude .git \
    "../" \
    "${INSTALLDIR}/"
fi
