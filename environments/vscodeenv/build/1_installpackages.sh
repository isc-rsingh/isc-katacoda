apt install bsdtar -y

curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/intersystems-community/vsextensions/vscode-objectscript/1.0.6/vspackage | bsdtar -xvf - extension

mv extension /opt/.katacodacode/extensions//vscode-objectscript-pack

mkdir -p /opt/.katacodacode/user-data/User/
cat << VSCODEEOF > /opt/.katacodacode/user-data/User/settings.json
{ 
  "workbench.startupEditor": "none", 
  "files.autoSave": "off",
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