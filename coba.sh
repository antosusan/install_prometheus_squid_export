#!/bin/bash
echo "  
- job_name: squid
  # squid-exporter is installed, grab stats about the local
  # squid instance.
    static_configs:
      - targets: ['localhost:9301']
" >> addfile.txt