#!/bin/bash

./pull.sh
./run.sh
echo "Before Cleanup: "
./check.sh

./cleanup.sh

echo "After Cleanup: "
./check.sh
