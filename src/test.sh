#!/bin/bash

#src/test.sh
EXPECTED_OUTPUT="Hello, World!"
OUTPUT=$(node -e "console.log(require('./src/app')('World'))")
if [ "$OUTPUT" == "$EXPECTED_OUTPUT" ]; then
    echo "Test passed!"
    exit 0
else
    echo "Test failed! Expected '$EXPECTED_OUTPUT' but got '$OUTPUT'"
    exit 1
fi