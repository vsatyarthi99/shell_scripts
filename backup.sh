#!/bin/bash
# Script to backup a directory
# Define source and destination directories
read -p "Please enter source directory: " source_dir
read -p "Please enter the backup directory: " backup_dir
# Create a timestamp for the backup file name
timestamp=$(date +%Y%m%d_%H%M%S)
backup_file="backup_${timestamp}.tar.gz"
# Archive and compress the source directory
tar -czf "${backup_dir}/${backup_file}" "${source_dir}"
# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successfully created: ${backup_file}"
else
    echo "Backup failed!"
    exit 1
fi
# Optionally, clean up old backups if needed
# Example: delete backups older than 7 days
find "${backup_dir}" -type f -name 'backup_*.tar.gz' -mtime +7 -delete
echo "Backup process completed."
