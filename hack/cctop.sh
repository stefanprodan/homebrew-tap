#!/bin/bash

# Render Formula/cctop.rb from its template by filling in the latest release
# version and the per-platform sha256 checksums pulled from checksums.txt
# (the cctop_checksums.txt asset attached to the GitHub release).

set -euo pipefail

operating_systems=("linux" "darwin")
architectures=("amd64" "arm64")

cp Formula/cctop.rb.tpl Formula/cctop.rb

sed -i "s/LATEST_RELEASE/${latest_release}/g" Formula/cctop.rb

for os in "${operating_systems[@]}"; do
  for arch in "${architectures[@]}"; do
    placeholder=$(echo "CCTOP_${os}_${arch}" | tr '[:lower:]' '[:upper:]')
    hash=$(grep "cctop_${os}_${arch}.tar.gz" checksums.txt | awk '{print $1}')
    sed -i "s/${placeholder}/${hash}/g" Formula/cctop.rb
  done
done
