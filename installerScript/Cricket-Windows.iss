;*****************************************************************************
;
; Module:  Model2450UI-Windows.iss
;
; Function:
;	Inno Setup install script for the Model2450UI-Installer distribution.
;
; Copyright notice:
;	This file copyright (C) 2025 by
;		MCCI Corporation
;		3520 Krums Corners Road
;		Ithaca, NY  14850
;
;	An unpublished work.  All rights reserved.
;	
;	This file is proprietary information, and may not be disclosed or
;	copied without the prior permission of MCCI Corporation.
; 
; Author:
;	Vinay N, MCCI Corporation	September 2024
;
;*****************************************************************************

; 
; to compile this script, please install Inno Setup 5.5.9 or later, from
;   http://www.jrsoftware.org/isinfo.php

#define MyAppDir "Model2450UI"
#define MyAppName "Model2450UI"
#define MyProductName "MCCI Model2450UI"
#define MyAppVersion "2.1.0"
#define MyAppPublisher "MCCI Corporation"
#define MyAppURL "https://mcci.com"
#define MyAppExeName "Model2450UI.exe"
#define MyAppComments "MCCI Model2450UI Installer"
#define MyOrgName "MCCI"
#define MyAppCopyRight "Copyright 2026 MCCI Corporation"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C4128E3D-2FD5-42EB-A902-15690D734BD6}}
AppName={#MyProductName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} v{#MyAppVersion}
AppVerName = {#MyAppName} v{#MyAppVersion}
VersionInfoDescription={#MyAppComments}
VersionInfoVersion = {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppComments={#MyAppComments}
AppCopyright={#MyAppCopyRight}
DefaultDirName={autopf}\{#MyOrgName}\{#MyAppDir}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=..\AppInstaller
;OutputBaseFilename=model2450ui-{#MyAppVersion}-windows-installer
;OutputBaseFilename={#MyProductName}-Setup-v{#MyAppVersion}
OutputBaseFilename={#MyOrgName}-{#MyAppName}-v{#MyAppVersion}-Windows-Installer 

SetupIconFile=..\model2450-ui\src\icons\mcci_logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

;UninstallDisplayIcon=..\model2450-ui\src\icons\mcci_logo.ico
;UninstallDisplayIcon={#MyAppName}\{#MyAppExeName}
;UninstallDisplayIcon={app}\{#MyAppExeName}
UninstallDisplayIcon={app}\{#MyAppExeName}
;UninstallIconFile=..\model2450-ui\src\icons\mcci_logo.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\exeScript\dist\Model2450UI\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\doc\*"; DestDir: "{app}\docs"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}";

[InstallDelete]
Type: filesandordirs; Name: "{app}\*"

[Code]
function InitializeSetup(): Boolean;
var
  oldVersion: String;
  uninstaller: String;
  ErrorCode: Integer;
  vCurID      :String;
  vCurAppName :String;
begin
  vCurID:= '{#SetupSetting("AppId")}';
  vCurAppName:= '{#SetupSetting("AppName")}';
  //remove first "{" of ID
  vCurID:= Copy(vCurID, 2, Length(vCurID) - 1);
  //
  if RegKeyExists(HKEY_LOCAL_MACHINE,
    'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + vCurID + '_is1') then
  begin
    RegQueryStringValue(HKEY_LOCAL_MACHINE,
      'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + vCurID + '_is1',
      'UninstallString', uninstaller);
    ShellExec('runas', uninstaller, '/SILENT', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode);
    Result := True;
  end
  else
  begin
    Result := True;
  end;
end;
