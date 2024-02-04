#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
curl -L -s https://github.com/2e3s/awatcher/releases/latest/download/awatcher-bundle.zip -o awatcher-bundle.zip
unzip awatcher-bundle.zip
mv awatcher-bundle/awatcher /usr/bin/awatcher
