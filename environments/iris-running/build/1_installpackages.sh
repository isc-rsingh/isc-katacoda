#!/bin/bash

systemctl stop docker
sed -i -e 's/"storage-driver": "overlay",/"storage-driver": "overlay2",/' /etc/docker/daemon.json
systemctl start docker

# cd /tmp && apt install bsdtar -y
apt install bsdtar -y

# Install ObjectScript Extension
curl -L https://github.com/intersystems-community/vscode-objectscript/releases/download/v1.0.8-beta.3/vscode-objectscript-1.0.8-beta.3.vsix | bsdtar -xvf - extension
mv extension /opt/.katacodacode/extensions/intersystems-community.vscode-objectscript-1.0.8-beta.3

# Install Language Server Extension
# curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/intersystems/vsextensions/language-server/1.0.6/vspackage | bsdtar -xvf - extension
# mv extension /opt/.katacodacode/extensions/intersystems.language-server-1.0.6

mkdir -p /opt/.katacodacode/user-data/User/
cat << VSCODEEOF > /opt/.katacodacode/user-data/User/settings.json
{ 
  "objectscript.conn": {
    "active": true,
    "host": "localhost",
    "port": 52773,
    "username": "_SYSTEM",
    "password": "SYS",
    "ns": "USER",
    "https": false
  },
  "workbench.startupEditor": "none", 
  "editor.minimap.enabled": false,
  "window.autoDetectColorScheme": false,
  "workbench.colorCustomizations": {},
  "workbench.colorTheme": "Default Dark+",
  "editor.semanticHighlighting.enabled": false,
  "editor.tokenColorCustomizations": {
      "semanticHighlighting": true
  },
  "files.exclude": {
    "**/.*": true
  }
}
VSCODEEOF