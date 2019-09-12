#!/bin/sh -l
set -eu

if ! [ -z "$INPUT_NPM_TOKEN" ]; then
  echo //registry.npmjs.org/:_authToken=${NPM_TOKEN} > .npmrc
fi

npm i -g can-npm-publish
if can-npm-publish; then
  echo ::set-output name=result::"true"
else
  echo ::set-output name=result::"false"
fi
