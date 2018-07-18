#!/bin/bash

UNAME=$(uname | tr "[:upper:]" "[:lower:]")

if [ "$UNAME" == "linux" ]; then
  echo "Linux"
  tail -f ~/opt/mongodb/log/mongodb.log
else
  echo "Mac"
  tail -f /usr/local/var/log/mongodb/mongo.log
fi
