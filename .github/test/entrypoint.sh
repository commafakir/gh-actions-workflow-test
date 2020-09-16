#!/bin/sh

set -e

if cat the-program.txt | grep fail; then
    echo "Fail found"
    exit 1
else
    echo "Fail not found. All correct."
fi

