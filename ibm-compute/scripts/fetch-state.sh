#! /usr/bin/env bash

bash git-config.sh

# Create Git Repo URL
GIT_URL=$(cat giturl.txt)
AUTH_GIT_URL=${GIT_URL:0:8}${GIT_USER}:${GIT_PASSWORD}@${GIT_URL:8}

git clone ${AUTH_GIT_URL} repo

exit 0