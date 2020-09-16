#!/bin/sh

set -e

message=`cat the-program.txt`

curl -X POST -H 'Content-type: application/json' --data "{\"text\": \"$GITHUB_SHA $GITHUB_REF\"}" $SLACK_WEBHOOK

sleep 3

curl -X POST -H 'Content-type: application/json' --data "{\"text\": \"$message\"}" $SLACK_WEBHOOK
