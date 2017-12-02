; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MSCMP"
#define MyAppVersion "0.1"
#define MyAppPublisher "MSCMP Team"
#define MyAppURL "http://mysummercar.mp"
#define MyAppExeName "MSCMP.exe"
#define OutputFileNamePattern "mscmp_setup_" + GetDateTimeString('ddmmyyyyhhnnss', '', '');

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C6F722AF-D388-428D-8C23-15008CD55B65}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename={#OutputFileNamePattern}
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "..\..\bin\Release\MSCMP.exe"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\Assembly-CSharp.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\Assembly-CSharp-firstpass.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\Assembly-UnityScript.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\Assembly-UnityScript-firstpass.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\Boo.Lang.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\cInput.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\ES2.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\HOTween.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\Mono.Security.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\MoodkieSecurity.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\MSCMPClient.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\MSCMPInjector.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\PlayMaker.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\System.Windows.Forms.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\UnityEngine.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\UnityEngine.UI.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\UnityScript.Lang.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\steam_api.dll"; DestDir: "{app}\bin\Release"; Flags: ignoreversion
Source: "..\..\bin\Release\steam_appid.txt"; DestDir: "{app}\bin\Release"; Flags: ignoreversion

Source: "..\..\data\mpdata"; DestDir: "{app}\data"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\bin\Release\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\bin\Release\path.txt"
Type: files; Name: "{app}\bin\Release\clientLog.txt"
