#!/bin/bash
cd /root
mkdir testing
cd testing && touch coba.txt
echo "testing coba saja" >> coba.txt
cd ..
cat testing/coba.txt
