#!/usr/bin/env bash
set -euo pipefail
dir="${1:-.}"
[[ -d $dir ]]||{ echo "Error: $dir is not a directory" >&2;exit 1;}
f=0;d=0
for i in "$dir"/*;do
[[ -f $i ]]&&f=$((f+1))
[[ -d $i ]]&&d=$((d+1))
done
echo "Files: $f"
echo "Directories: $d"
