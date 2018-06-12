#! /usr/bin/env bash

# Validating environment variables
[ -z "${GIT_USER}" ] && echo "Skipping publishing terraform state to git repo... To publish, please set GIT_USER environment variable... Please see the README for more information." && exit 0
[ -z "${GIT_PASSWORD}" ] && echo "Skipping publishing terraform state to git repo... To publish, please set GIT_PASSWORD environment variable... Please see the README for more information." && exit 0

# Create Git Repo URL
GIT_URL=$(cat giturl.txt)
AUTH_GIT_URL=${GIT_URL:0:8}${GIT_USER}:${GIT_PASSWORD}@${GIT_URL:8}

git clone ${AUTH_GIT_URL} repo

cd repo
git checkout -b origin/terraform

exit 0