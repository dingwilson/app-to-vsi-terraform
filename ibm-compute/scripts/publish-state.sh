#! /usr/bin/env bash

bash git-config.sh

cd repo
git checkout -b terraform
git add .
git commit -m "Published terraform.tfstate from ibmcloud-toolchain-${PIPELINE_TOOLCHAIN_ID}"
git push -f
cd -

exit 0
