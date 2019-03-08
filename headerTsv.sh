#!/bin/bash
# 2019/1/8 megumik
# cut -fする前にヘッダーの各フィールドが何番目か見たい

set -Ceu -o pipefail
trap 'echo "ERROR: line no = $LINENO, exit status = $?" >&2; exit 1' ERR

if [ $# -lt 1 ] || [ ! -f $1 ]; then
  echo "input file?" 1>&2
  exit 1
fi

head -n 1 $1 | awk -F '\t' '{for(i=1;i<=NF;i++) print i": "$i}'
