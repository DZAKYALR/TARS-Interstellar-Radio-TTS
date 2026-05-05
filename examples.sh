#!/usr/bin/env bash
set -euo pipefail

TEXT="${1:-Hello Romeo. I am TARS. My honesty setting is ninety percent.}"

for style in normal clear deep heavy fast radio; do
  echo "== $style =="
  ./bin/speak "$TEXT This is the $style profile." tars-v3 5 "$style"
done
