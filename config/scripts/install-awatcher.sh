#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
AWATCHER_VERSION=0.2.3

curl -L -s https://github.com/2e3s/awatcher/releases/download/v$AWATCHER_VERSION/awatcher-bundle.zip -o awatcher-bundle.zip
unzip awatcher-bundle.zip
mv awatcher-bundle/awatcher /usr/bin/awatcher
