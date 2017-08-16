#!/bin/sh
set -e

[[ $# != 2 ]] && {
  echo "usage: $0 <user> <pass>"
  exit 1
}

user=$1
pass=$2

echo "$user:$(openssl passwd -crypt $pass 2> /dev/null)"
