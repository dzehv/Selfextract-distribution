#!/bin/bash

# Get your app version number
VERSION="0.0.1"

# make autorun script exec
chmod +x ./appfolder/setup.sh

# Usage: ./makeself.sh [params] archive_dir file_name label [startup_script] [args]
#    --gzip          : Compress using gzip (default if detected)
#    --bzip2         : Compress using bzip2 instead of gzip
#    --notemp        : The archive will create archive_dir in the
#                      current directory and uncompress in ./archive_dir
#    --copy          : Upon extraction, the archive will first copy itself to
#                      a temporary directory
#    --header file   : Specify location of the header script
#    --follow        : Follow the symlinks in the archive
#    --nox11         : Disable automatic spawn of a xterm
#    --nowait        : Do not wait for user input after executing embedded
#                      program from an xterm
./makeself.sh \
     --gzip --nox11 --follow --nowait \
     ./appfolder \
     your_cool_app-$VERSION.sh \
     "Installing your cool App v$VERSION Beta" \
     ./setup.sh
