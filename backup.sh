#!/bin/bash

set -x #debug mode

set -e #exit mode

set -o pipefail

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir "backup-$timestamp"

folderpath=$1

cp -r $folderpath ./backup-$timestamp

echo "Backup is created successfully"
