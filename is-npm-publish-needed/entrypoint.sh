#!/bin/sh -l

git fetch
needed=$(git diff $1...HEAD --unified=0 --no-color ./package.json | grep "+  \"version\":" | wc -l | awk '{print $1}')
echo ::set-output name=needed::$needed
