#!/bin/bash
wget https://github.com/boynux/squid-exporter/releases/download/v1.12.0/squid-exporter-linux-amd64.tar.gz
tar -xzf squid-exporter-linux-amd64.tar.gz
echo "download & extrat"
cp squid_exporter.service /etc/systemd/system/squid_exporter.service
sudo systemctl daemon-reload
sudo systemctl enable squid-exporter
sudo systemctl start squid-exporter
sudo systemctl status squid-exporter

