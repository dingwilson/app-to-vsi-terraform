#! /usr/bin/env bash

# git config
git config --global user.email "autobuild@not-an-email.com"
git config --global user.name "Automatic Build: ibmcloud-toolchain-${PIPELINE_TOOLCHAIN_ID}"
git config --global push.default simple

cd repo
git checkout -b terraform
git add .
git commit -m "Published terraform.tfstate from ibmcloud-toolchain-${PIPELINE_TOOLCHAIN_ID}"
git push -f
cd -

exit 0
