#! /bin/bash

log_directory=$1
archive_name=$(date +"%Y%m%d_%H%M%S")
tar czvf ${archive_name}.tar.gz ${log_directory}