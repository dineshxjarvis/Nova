; Nova AI 32-bit Windows Installer Script
; Generated for: dineshkumarAS-creator / nova-ai
; Source repo: https://github.com/dineshkumarAS-creator/nova-ai.git
; Compile this with Inno Setup: https://jrsoftware.org/isdl.php

[Setup]
AppName=Nova
AppVersion=4.0
AppVerName=Nova AI v4.0 (x86)
AppPublisher=Nova AI
AppPublisherURL=https://github.com/dineshkumarAS-creator/nova-ai
AppSupportURL=https://github.com/dineshkumarAS-creator/nova-ai/issues
AppUpdatesURL=https://github.com/dineshkumarAS-creator/nova-ai/releases
DefaultDirName={autopf}\Nova
DefaultGroupName=Nova
AllowNoIcons=yes
OutputDir=installer_output
OutputBaseFilename=Nova_x86_Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"; Flags: unchecked

[Files]
Source: "dist32\Nova_x86.exe"; DestDir: "{app}"; DestName: "Nova.exe"; Flags: ignoreversion

[Icons]
Name: "{group}\Nova"; Filename: "{app}\Nova.exe"
Name: "{group}\Uninstall Nova"; Filename: "{uninstallexe}"
Name: "{autodesktop}\Nova"; Filename: "{app}\Nova.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Nova.exe"; Description: "Launch Nova now"; Flags: nowait postinstall skipifsilent
