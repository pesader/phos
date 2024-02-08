#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
VERSION=1.2.0
curl -L -s "https://github.com/gm-vm/openfortivpn-webview/releases/download/v$VERSION-electron/openfortivpn-webview-$VERSION.AppImage" -o openfortivpn-webview
chmod +x openfortivpn-webview
mv openfortivpn-webview /usr/bin/

