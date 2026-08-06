#!/bin/bash

# Render Formula/${formula}.rb from its template by filling in the latest
# release version and the per-platform sha256 checksums pulled from
# checksums.txt (the checksums asset attached to the GitHub release).
#
# Inputs (env vars):
#   formula        - formula name, e.g. "cctop" (expects Formula/${formula}.rb.tpl)
#   latest_release - release version without the "v" prefix, e.g. "0.8.0"

set -euo pipefail

operating_systems=("linux" "darwin")
architectures=("amd64" "arm64")

cp "Formula/${formula}.rb.tpl" "Formula/${formula}.rb"

perl -i -pe "s/LATEST_RELEASE/${latest_release}/g" "Formula/${formula}.rb"

for os in "${operating_systems[@]}"; do
  for arch in "${architectures[@]}"; do
    placeholder=$(echo "${formula}_${os}_${arch}" | tr '[:lower:]' '[:upper:]')
    hash=$(grep "_${os}_${arch}.tar.gz\$" checksums.txt | awk '{print $1}')
    perl -i -pe "s/${placeholder}/${hash}/g" "Formula/${formula}.rb"
  done
done
