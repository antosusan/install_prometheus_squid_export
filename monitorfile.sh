#!/bin/bash

# Direktori yang ingin dipantau
DIR="/root/scripts"

# Memulai monitoring menggunakan inotifywait
inotifywait -m -e create "$DIR" |
while read path action file; do
    echo "Ada file baru: $file"
done
