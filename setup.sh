#!/usr/bin/env bash

set -e
apt-get update -y

# chat thinks we should also do ca-certificates as a fix for https but we'll circle back
# apt-get install nodejs npm git -y

# Update Things
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs

# clone scamper repo in folder
git clone https://github.com/slag-plt/scamper.git /autograder/scamper
cd /autograder/scamper

# here we could optionally git checkout into our branch (grader)
git checkout grader

# attempt at fixing vite issue
npm ci

# run scamper (npm run build might be alternative)
npm run cli