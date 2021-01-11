#!/bin/bash

# Get-Service ssh-agent | Set-Service -StartupType Automatic -PassThru | Start-Service

# cd /tmp && apt install bsdtar -y
apt install bsdtar -y

curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/intersystems-community/vsextensions/vscode-objectscript/0.9.5/vspackage | bsdtar -xvf - extension

mv extension /opt/.katacodacode/extensions/intersystems-community.vscode-objectscript-0.9.5

mkdir -p /opt/.katacodacode/user-data/User/
cat << VSCODEEOF > /opt/.katacodacode/user-data/User/settings.json
{ 
  "workbench.startupEditor": "none", 
  "files.autoSave": "on",
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