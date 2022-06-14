#!/bin/bash
ARCHIVE_NAME="openrefine"

function download() {
    DOWNLOAD_URL="https://github.com/OpenRefine/OpenRefine/releases/download/3.5.2/openrefine-linux-3.5.2.tar.gz"
    wget $ARCHIVE_NAME $DOWNLOAD_URL
}



function extract() {
    if [ ! -f "$ARCHIVE_NAME" ];
    then 
        download
    fi
    unzip $ARCHIVE_NAME
}

echo "Hello"
extract "$ARCHIVE_NAME"