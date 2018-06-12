#! /usr/bin/env bash

# Validating environment variables
[ -z "${GIT_USER}" ] && echo "Skipping publishing terraform state to git repo... To publish, please set GIT_USER environment variable... Please see the README for more information." && exit 0
[ -z "${GIT_PASSWORD}" ] && echo "Skipping publishing terraform state to git repo... To publish, please set GIT_PASSWORD environment variable... Please see the README for more information." && exit 0

# Git config
git config --global user.email "autobuild@not-an-email.com"
git config --global user.name "Automatic Build: ibmcloud-toolchain-${PIPELINE_TOOLCHAIN_ID}"
git config --global push.default simple
