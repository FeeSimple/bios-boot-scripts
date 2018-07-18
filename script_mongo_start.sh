#!/bin/bash

UNAME=$(uname | tr "[:upper:]" "[:lower:]")

if [ "$UNAME" == "linux" ]; then
  echo "Linux"
  ~/opt/mongodb/bin/mongod -f ~/opt/mongodb/mongod.conf &
else
  echo "Mac"
  /usr/local/bin/mongod -f /usr/local/etc/mongod.conf &
fi
