#!/usr/bin/env bash
set -euo pipefail
c="${1:-5}"
while ((c>0));do
echo "$c"
c=$((c-1))
done
echo "Liftoff!"
