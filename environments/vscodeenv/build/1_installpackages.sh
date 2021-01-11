#!/bin/bash

# cd /tmp && apt install bsdtar -y
apt install bsdtar -y

# curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/intersystems-community/vsextensions/vscode-objectscript/1.0.7/vspackage | bsdtar -xvf - extension
# mv extension /opt/.katacodacode/extensions/intersystems-community.vscode-objectscript-1.0.7
curl -L https://github.com/intersystems-community/vscode-objectscript/releases/download/v1.0.8-beta.3/vscode-objectscript-1.0.8-beta.3.vsix | bsdtar -xvf - extension
mv extension /opt/.katacodacode/extensions/intersystems-community.vscode-objectscript-1.0.8-beta.3

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