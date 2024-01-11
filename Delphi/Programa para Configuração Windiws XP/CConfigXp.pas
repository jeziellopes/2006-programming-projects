unit CConfigXp;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Registry, ExtCtrls, IniFiles;
type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    XPManifest1: TXPManifest;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  Reg: TRegistry;
  Advanced, LSA, NonEnum, Desktop, InternetSettings, Power, SecurityCenter, FirewallPolicy: String;
  Buffer: array[0..1184] of Char;
  ArqIni: TIniFile;
implementation
{$R *.dfm}
procedure AdicRegSZ (Const ChaveRaiz, Chave, Valor, Dados: String);
begin
  Reg := TRegistry.Create;
  if ChaveRaiz = '' then
    Reg.RootKey := HKEY_CURRENT_USER;
  if ChaveRaiz = 'HKCR' then
    Reg.RootKey := HKEY_CLASSES_ROOT;
  if ChaveRaiz = 'HKLM' then
    Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.OpenKey(Chave,True);
  Reg.WriteString(Valor,Dados);
  Reg.CloseKey;
end;
procedure AdicRegDword (Const ChaveRaiz, Chave, Valor: String; Dados: Integer);
begin
  Reg := TRegistry.Create;
  if ChaveRaiz = '' then
    Reg.RootKey := HKEY_CURRENT_USER;
  if ChaveRaiz = 'HKCR' then
    Reg.RootKey := HKEY_CLASSES_ROOT;
  if ChaveRaiz = 'HKLM' then
    Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.OpenKey(Chave,True);
  Reg.WriteInteger(Valor,Dados);
  Reg.CloseKey;
end;
procedure AdicRegBinary (Const ChaveRaiz, Chave, Valor: String; TamanhoBuffer: Integer);
begin
  Reg := TRegistry.Create;
  if ChaveRaiz = '' then
    Reg.RootKey := HKEY_CURRENT_USER;
  if ChaveRaiz = 'HKCR' then
    Reg.RootKey := HKEY_CLASSES_ROOT;
  if ChaveRaiz = 'HKLM' then
    Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.OpenKey(Chave,True);
  Reg.WriteBinaryData(Valor,Buffer,TamanhoBuffer);
  Reg.CloseKey;
end;
procedure DeletarChave (Const ChaveRaiz, Chave: String);
begin
  Reg := TRegistry.Create;
  if ChaveRaiz = '' then
    Reg.RootKey := HKEY_CURRENT_USER;
  if ChaveRaiz = 'HKCR' then
    Reg.RootKey := HKEY_CLASSES_ROOT;
  if ChaveRaiz = 'HKLM' then
    Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.DeleteKey(Chave);
  Reg.CloseKey;
end;
procedure DeletarValor (Const ChaveRaiz, Chave, Valor: String);
begin
  Reg := TRegistry.Create;
  if ChaveRaiz = '' then
    Reg.RootKey := HKEY_CURRENT_USER;
  if ChaveRaiz = 'HKCR' then
    Reg.RootKey := HKEY_CLASSES_ROOT;
  if ChaveRaiz = 'HKLM' then
    Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.OpenKey(Chave, False);
  Reg.DeleteValue(Valor);
  Reg.CloseKey;
end;
procedure CarregarReg (Const ChaveRaiz, Chave, Valor, TipoDados: String; Condicao: Variant; Objeto: TCheckBox);
begin
  Reg := TRegistry.Create;
  if ChaveRaiz = '' then
    Reg.RootKey := HKEY_CURRENT_USER;
  if ChaveRaiz = 'HKCR' then
    Reg.RootKey := HKEY_CLASSES_ROOT;
  if ChaveRaiz = 'HKLM' then
    Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.OpenKey(Chave,False);
  if Reg.ValueExists(Valor) then
  begin
    if TipoDados = 't' then
    begin
      if Reg.ReadString(Valor) = Condicao then
      begin
        Objeto.State := cbChecked;
      end
      else
      begin
        Objeto.State := cbUnchecked;
      end;
    end;
    if TipoDados = 'n' then
    begin
      if Reg.ReadInteger(Valor) = Condicao then
      begin
        Objeto.State := cbChecked;
      end
      else
      begin
        Objeto.State := cbUnchecked;
      end;
    end;
  end
  else
  begin
    Exit;
  end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  if CheckBox1.State = cbChecked then
  begin
    AdicRegDword('',Desktop,'{450D8FBA-AD25-11D0-98A8-0800361B1103}',0);
  end
  else
  begin
    AdicRegDword('',Desktop,'{450D8FBA-AD25-11D0-98A8-0800361B1103}',1);
  end;
  if CheckBox2.State = cbChecked then
  begin
    AdicRegDword('',Desktop,'{20D04FE0-3AEA-1069-A2D8-08002B30309D}',0);
  end
  else
  begin
    AdicRegDword('',Desktop,'{20D04FE0-3AEA-1069-A2D8-08002B30309D}',1);
  end;
  if CheckBox3.State = cbChecked then
  begin
    AdicRegDword('',Desktop,'{208D2C60-3AEA-1069-A2D7-08002B30309D}',0);
  end
  else
  begin
    AdicRegDword('',Desktop,'{208D2C60-3AEA-1069-A2D7-08002B30309D}',1);
  end;
  if CheckBox4.State = cbChecked then
  begin
    AdicRegDword('',Desktop,'{645FF040-5081-101B-9F08-00AA002F954E}',0);
  end
  else
  begin
    AdicRegDword('',Desktop,'{645FF040-5081-101B-9F08-00AA002F954E}',1);
  end;
  if CheckBox5.State = cbChecked then
  begin
    AdicRegDword('',Desktop,'{871C5380-42A0-1069-A2EA-08002B30309D}',0);
  end
  else
  begin
    AdicRegDword('',Desktop,'{871C5380-42A0-1069-A2EA-08002B30309D}',1);
  end;
  if CheckBox6.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowMyDocs',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowMyDocs',0);
  end;
  if CheckBox7.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowRecentDocs',2);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowRecentDocs',0);
  end;
  if CheckBox8.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'StartMenuFavorites',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'StartMenuFavorites',0);
  end;
  if CheckBox9.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowMyPics',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowMyPics',0);
  end;
  if CheckBox10.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowMyMusic',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowMyMusic',0);
  end;
  if CheckBox11.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowMyComputer',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowMyComputer',0);
  end;
  if CheckBox12.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowNetPlaces',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowNetPlaces',0);
  end;
  if CheckBox13.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowControlPanel',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowControlPanel',0);
  end;
  if CheckBox14.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowSetProgramAccessAndDefaults',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowSetProgramAccessAndDefaults',0);
  end;
  if CheckBox15.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_AdminToolsRoot',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_AdminToolsRoot',0);
  end;
  if CheckBox16.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowNetConn',2);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowNetConn',0);
  end;
  if CheckBox17.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowPrinters',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowPrinters',0);
  end;
  if CheckBox18.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowHelp',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowHelp',0);
  end;
  if CheckBox19.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowSearch',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowSearch',0);
  end;
  if CheckBox20.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_ShowRun',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_ShowRun',0);
  end;
  if CheckBox21.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_EnableDragDrop',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_EnableDragDrop',0);
  end;
  if CheckBox22.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_NotifyNewApps',0);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_NotifyNewApps',1);
  end;
  if CheckBox23.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Start_MinMFU',0);
  end
  else
  begin
    AdicRegDword('',Advanced,'Start_MinMFU',1);
  end;
  if CheckBox24.State = cbChecked then
  begin
    AdicRegSZ('HKCR','*\shell\OpenNote','','Abrir com "Bloco de Notas"');
    AdicRegSZ('HKCR','*\shell\OpenNote\command','','notepad.exe %1');
    AdicRegSZ('HKCR','*\shell\OpenDos','','Abrir pasta atual com o "MS-Dos"');
    AdicRegSZ('HKCR','*\shell\OpenDos\command','','cmd.exe /k');
    AdicRegSZ('HKCR','*\shell\Desoculta','','Desocultar');
    AdicRegSZ('HKCR','*\shell\Desoculta\command','','cmd.exe /c "attrib -s -h "%1""');
    AdicRegSZ('HKCR','*\shell\Oculta','','Ocultar');
    AdicRegSZ('HKCR','*\shell\Oculta\command','','cmd.exe /c "attrib +s +h "%1""');
    AdicRegSZ('HKCR','*\shell\OpenWith','','Abrir com...');
    AdicRegSZ('HKCR','*\shell\OpenWith\command','','rundll32.exe shell32.dll,OpenAs_RunDLL %1');
    AdicRegSZ('HKCR','Directory\shell\NewWindow','','Abrir em nova janela');
    AdicRegSZ('HKCR','Directory\shell\NewWindow\command','','explorer.exe %1');
    AdicRegSZ('HKCR','Directory\shell\OpenDos','','Abrir com "MS-Dos"');
    AdicRegSZ('HKCR','Directory\shell\OpenDos\command','','cmd.exe /k cd %1');
    AdicRegSZ('HKCR','Directory\shell\Desoculta','','Desocultar');
    AdicRegSZ('HKCR','Directory\shell\Desoculta\command','','cmd.exe /c "attrib -s -h "%1""');
    AdicRegSZ('HKCR','Directory\shell\Oculta','','Ocultar');
    AdicRegSZ('HKCR','Directory\shell\Oculta\command','','cmd.exe /c "attrib +s +h "%1""');
    AdicRegSZ('HKCR','Drive\shell\NewWindow','','Abrir em nova janela');
    AdicRegSZ('HKCR','Drive\shell\NewWindow\command','','explorer.exe %1');
    AdicRegSZ('HKCR','Drive\shell\OpenDos','','Abrir com "Bloco de Notas"');
    AdicRegSZ('HKCR','Drive\shell\OpenDos\command','','notepad.exe %1');
  end
  else
  begin
    DeletarChave('HKCR','*\shell\OpenNote');
    DeletarChave('HKCR','*\shell\OpenDos');
    DeletarChave('HKCR','*\shell\Desoculta');
    DeletarChave('HKCR','*\shell\Oculta');
    DeletarChave('HKCR','*\shell\OpenWith');
    DeletarChave('HKCR','Directory\shell\NewWindow');
    DeletarChave('HKCR','Directory\shell\OpenDos');
    DeletarChave('HKCR','Directory\shell\Desoculta');
    DeletarChave('HKCR','Directory\shell\Oculta');
    DeletarChave('HKCR','Drive\shell\NewWindow');
    DeletarChave('HKCR','Drive\shell\OpenDos');
  end;
  if CheckBox25.State = cbChecked then
  begin
   AdicRegDword('',Advanced,'ShowCompColor',0);
  end
  else
  begin
    AdicRegDword('',Advanced,'ShowCompColor',1);
  end;
  if CheckBox26.State = cbChecked then
  begin
   AdicRegDword('',Advanced,'DisableThumbnailCache',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'DisableThumbnailCache',0);
  end;
  if CheckBox27.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'ShowSuperHidden',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'ShowSuperHidden',0);
  end;
  if CheckBox28.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'HideFileExt',0);
  end
  else
  begin
    AdicRegDword('',Advanced,'HideFileExt',1);
  end;
  if CheckBox29.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'Hidden',1);
  end
  else
  begin
    AdicRegDword('',Advanced,'Hidden',0);
  end;
  if CheckBox30.State = cbChecked then
  begin
    AdicRegDword('HKLM',LSA,'forceguest',0);
  end
  else
  begin
    AdicRegDword('HKLM',LSA,'forceguest',1);
  end;
  if CheckBox31.State = cbChecked then
  begin
    AdicRegDword('',Advanced,'FriendlyTree',0);
  end
  else
  begin
    AdicRegDword('',Advanced,'FriendlyTree',1);
  end;
  if CheckBox32.State = cbChecked then
  begin
    AdicRegDword('',InternetSettings + '\Cache\Content','CacheLimit',51200);
    AdicRegDword('',InternetSettings + '\5.0\Cache\Content','CacheLimit',51200);
    AdicRegDword('HKLM',InternetSettings + '\Cache\Paths\path1','CacheLimit',12800);
    AdicRegDword('HKLM',InternetSettings + '\Cache\Paths\path2','CacheLimit',12800);
    AdicRegDword('HKLM',InternetSettings + '\Cache\Paths\path3','CacheLimit',12800);
    AdicRegDword('HKLM',InternetSettings + '\Cache\Paths\path4','CacheLimit',12800);
  end
  else
  begin
    AdicRegDword('HKLM',InternetSettings + '\Cache\Paths\path4','CacheLimit',12800);
    WinExec('cmd.exe /c reg import %windir%\system\IntSettings1.reg',SW_HIDE);
    WinExec('cmd.exe /c reg import %windir%\system\IntSettings2.reg',SW_HIDE);
    WinExec('cmd.exe /c reg import %windir%\system\IntSettings3.reg',SW_HIDE);
    WinExec('cmd.exe /c reg import %windir%\system\IntSettings4.reg',SW_HIDE);
    WinExec('cmd.exe /c reg import %windir%\system\IntSettings5.reg',SW_HIDE);
    WinExec('cmd.exe /c reg import %windir%\system\IntSettings6.reg',SW_HIDE);
  end;
  if CheckBox33.State = cbChecked then
  begin
    AdicRegDword('',InternetSettings,'SyncMode5',0);
  end
  else
  begin
    AdicRegDword('',InternetSettings,'SyncMode5',1);
  end;
  if CheckBox34.State = cbChecked then
  begin
    AdicRegDword('',InternetSettings + '\Url History','DaysToKeep',0);
  end
  else
  begin
    AdicRegDword('',InternetSettings + '\Url History','DaysToKeep',1);
  end;
  if CheckBox35.State = cbChecked then
  begin
    AdicRegSZ('','Control Panel\Mouse','MouseSensitivity','20');
  end
  else
  begin
    AdicRegSZ('','Control Panel\Mouse','MouseSensitivity','10');
  end;
  if CheckBox36.State = cbChecked then
  begin
    HexToBin('07000000ee0300007e6979'+
    '1ec59cd111a83f00c04fc99d612001000000000000ef030000'+
    '7e69791ec59cd111a83f00c04fc99d612101000000000000f3'+
    '0300007e69791ec59cd111a83f00c04fc99d61300100000400'+
    '0000ffffffff00000000000000000000000000000000000000'+
    '0000000000f60300007e69791ec59cd111a83f00c04fc99d61'+
    '2301000004000000f70300007e69791ec59cd111a83f00c04f'+
    'c99d613301000004000000ffffffff00000000000000000000'+
    '0000000000000000000000000000050400007e69791ec59cd1'+
    '11a83f00c04fc99d612401000004000000060400007e69791e'+
    'c59cd111a83f00c04fc99d612501000004000000fb030000a1'+
    'b70e71ed45d011924a0020afc7ac4d3170000004000000fc03'+
    '0000a1b70e71ed45d011924a0020afc7ac4d1f700000000000'+
    '00fd030000a1b70e71ed45d011924a0020afc7ac4d1e700000'+
    '00000000ffffffff0000000000000000000000000000000000'+
    '00000000000000fe030000a1b70e71ed45d011924a0020afc7'+
    'ac4d1170000004000000ff030000a1b70e71ed45d011924a00'+
    '20afc7ac4d1b7000000400000000040000a1b70e71ed45d011'+
    '924a0020afc7ac4d1370000004000000ffffffff0000000000'+
    '0000000000000000000000000000000000000001040000a1b7'+
    '0e71ed45d011924a0020afc7ac4d1870000004000000020400'+
    '00a1b70e71ed45d011924a0020afc7ac4d1970000004000000'+
    '03040000a1b70e71ed45d011924a0020afc7ac4d1a70000004'+
    '000000ffffffff000000000000000000000000000000000000'+
    '000000000000',Buffer,1184);
    AdicRegBinary('','Software\Microsoft\Internet Explorer\Toolbar','{710EB7A1-45ED-11D0-924A-0020AFC7AC4D}',592);
    AdicRegSZ('','Software\Microsoft\Internet Explorer\Toolbar','','(valor não definido)');
  end
  else
  begin
    WinExec('cmd.exe /c reg import %windir%\system\Toolbar.reg',SW_HIDE);
    WinExec('cmd.exe /c reg delete "HKCU\Software\Microsoft\Internet Explorer\Toolbar" /ve /f',SW_HIDE);
  end;
  if CheckBox37.State = cbChecked then
  begin
    HexToBin('00000000',Buffer,8);
    AdicRegBinary('','Software\Microsoft\Windows\CurrentVersion\Explorer','Link',4);
    AdicRegSZ('','Software\Microsoft\Windows\CurrentVersion\Explorer','','(valor não definido)');
  end
  else
  begin
    HexToBin('15000000',Buffer,8);
    AdicRegBinary('','Software\Microsoft\Windows\CurrentVersion\Explorer','Link',4); 
    WinExec('cmd.exe /c reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /ve /f',SW_HIDE);
  end;
  if CheckBox38.State = cbChecked then
  begin
    HexToBin('050000000001000000000000000000003f420f00',Buffer,40);
    AdicRegBinary('HKLM',Power,'Heuristics',20);
    AdicRegSZ('HKLM',Power,'','(valor não definido)');
  end
  else
  begin
    HexToBin('050000000001010000000000000000003f420f00',Buffer,40);
    AdicRegBinary('HKLM',Power,'Heuristics',20);
    WinExec('cmd.exe /c reg delete "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Power" /ve /f',SW_HIDE);
  end;
  if CheckBox39.State = cbChecked then
  begin
    AdicRegDword('HKLM','SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore','DisableSR',1);
  end
  else
  begin
    AdicRegDword('HKLM','SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore','DisableSR',0);
  end;
  if CheckBox40.State = cbChecked then
  begin
    AdicRegDword('HKLM',FirewallPolicy,'EnableFirewall',0);
    AdicRegDword('HKLM',FirewallPolicy,'DoNotAllowExceptions',1);
    AdicRegDword('HKLM',FirewallPolicy,'DisableNotifications',1);
    AdicRegDword('HKLM',SecurityCenter,'FirstRunDisabled',1);
    AdicRegDword('HKLM',SecurityCenter,'AntiVirusDisableNotify',1);
    AdicRegDword('HKLM',SecurityCenter,'FirewallDisableNotify',1);
    AdicRegDword('HKLM',SecurityCenter,'UpdatesDisableNotify',1);
    AdicRegDword('HKLM',SecurityCenter,'AntiVirusOverride',1);
    AdicRegDword('HKLM',SecurityCenter,'FirewallOverride',1);
  end
  else
  begin
    AdicRegDword('HKLM',FirewallPolicy,'EnableFirewall',1);
    AdicRegDword('HKLM',FirewallPolicy,'DoNotAllowExceptions',0);
    AdicRegDword('HKLM',FirewallPolicy,'DisableNotifications',0);
    AdicRegDword('HKLM',SecurityCenter,'FirstRunDisabled',0);
    AdicRegDword('HKLM',SecurityCenter,'AntiVirusDisableNotify',0);
    AdicRegDword('HKLM',SecurityCenter,'FirewallDisableNotify',0);
    AdicRegDword('HKLM',SecurityCenter,'UpdatesDisableNotify',0);
    AdicRegDword('HKLM',SecurityCenter,'AntiVirusOverride',0);
    AdicRegDword('HKLM',SecurityCenter,'FirewallOverride',0);
  end;
  if CheckBox41.State = cbChecked then
  begin
    if FileExists(GetEnvironmentVariable('windir') + '\system\recent.bat') then
    begin
      
    end;
  end;
  ShowMessage('As configurações foram salvas com sucesso!!!');
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  Advanced := 'Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced';
  Desktop := 'Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel';
  LSA := 'System\CurrentControlSet\Control\Lsa';
  InternetSettings := 'Software\Microsoft\Windows\CurrentVersion\Internet Settings';
  Power := 'SYSTEM\ControlSet001\Control\Session Manager\Power';
  FirewallPolicy := 'SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile';
  SecurityCenter := 'SOFTWARE\Microsoft\Security Center';
  CreateDir(GetEnvironmentVariable('windir') + '\system');
  if MessageDlg('Deseja carregar as configurações do seu sistema?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    CarregarReg('',Desktop,'{450D8FBA-AD25-11D0-98A8-0800361B1103}','n',0,CheckBox1);
    CarregarReg('',Desktop,'{20D04FE0-3AEA-1069-A2D8-08002B30309D}','n',0,CheckBox2);
    CarregarReg('',Desktop,'{208D2C60-3AEA-1069-A2D7-08002B30309D}','n',0,CheckBox3);
    CarregarReg('',Desktop,'{645FF040-5081-101B-9F08-00AA002F954E}','n',0,CheckBox4);
    CarregarReg('',Desktop,'{871C5380-42A0-1069-A2EA-08002B30309D}','n',0,CheckBox5);
    CarregarReg('',Advanced,'Start_ShowMyDocs','n',1,CheckBox6);
    CarregarReg('',Advanced,'Start_ShowRecentDocs','n',2,CheckBox7);
    CarregarReg('',Advanced,'StartMenuFavorites','n',1,CheckBox8);
    CarregarReg('',Advanced,'Start_ShowMyPics','n',1,CheckBox9);
    CarregarReg('',Advanced,'Start_ShowMyMusic','n',1,CheckBox10);
    CarregarReg('',Advanced,'Start_ShowMyComputer','n',1,CheckBox11);
    CarregarReg('',Advanced,'Start_ShowNetPlaces','n',1,CheckBox12);
    CarregarReg('',Advanced,'Start_ShowControlPanel','n',1,CheckBox13);
    CarregarReg('',Advanced,'Start_ShowSetProgramAccessAndDefaults','n',1,CheckBox14);
    CarregarReg('',Advanced,'Start_AdminToolsRoot','n',1,CheckBox15);
    CarregarReg('',Advanced,'Start_ShowNetConn','n',2,CheckBox16);
    CarregarReg('',Advanced,'Start_ShowPrinters','n',1,CheckBox17);
    CarregarReg('',Advanced,'Start_ShowHelp','n',1,CheckBox18);
    CarregarReg('',Advanced,'Start_ShowSearch','n',1,CheckBox19);
    CarregarReg('',Advanced,'Start_ShowRun','n',1,CheckBox20);
    CarregarReg('',Advanced,'Start_EnableDragDrop','n',1,CheckBox21);
    CarregarReg('',Advanced,'Start_NotifyNewApps','n',0,CheckBox22);
    CarregarReg('',Advanced,'Start_MinMFU','n',0,CheckBox23);
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CLASSES_ROOT;
    if Reg.OpenKey('*\shell\Oculta',False) then
      CheckBox24.State := cbChecked;
    Reg.CloseKey;
    CarregarReg('',Advanced,'ShowCompColor','n',0,CheckBox25);
    CarregarReg('',Advanced,'DisableThumbnailCache','n',1,CheckBox26);
    CarregarReg('',Advanced,'ShowSuperHidden','n',1,CheckBox27);
    CarregarReg('',Advanced,'HideFileExt','n',0,CheckBox28);
    CarregarReg('',Advanced,'Hidden','n',1,CheckBox29);
    CarregarReg('HKLM','SYSTEM\CurrentControlSet\Control\Lsa','forceguest','n',0,CheckBox30);
    CarregarReg('',Advanced,'FriendlyTree','n',0,CheckBox31);
    CarregarReg('HKLM',InternetSettings + '\Cache\Paths\path4','CacheLimit','n',12800,CheckBox32);
    CarregarReg('',InternetSettings,'SyncMode5','n',0,CheckBox33);
    CarregarReg('',InternetSettings + '\Url History','DaysToKeep','n',0,CheckBox34);
    CarregarReg('','Control Panel\Mouse','MouseSensitivity','t','20',CheckBox35);
    CarregarReg('','Software\Microsoft\Internet Explorer\Toolbar','','t','(valor não definido)',CheckBox36);
    CarregarReg('','Software\Microsoft\Windows\CurrentVersion\Explorer','','t','(valor não definido)',CheckBox37);
    CarregarReg('HKLM',Power,'','t','(valor não definido)',CheckBox38);
    CarregarReg('HKLM','SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore','DisableSR','n',1,CheckBox39);
    CarregarReg('HKLM',SecurityCenter,'FirewallOverride','n',1,CheckBox40);
  end
  else
  begin
    WinExec('cmd.exe /c reg export "HKCU\Control Panel\Mouse" %windir%\system\Mouse.reg',SW_HIDE);
    WinExec('cmd.exe /c reg export "HKCU\Software\Microsoft\Internet Explorer\Toolbar" %windir%\system\Toolbar.reg',SW_HIDE);
    WinExec('cmd.exe /c reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache\Content" %windir%\system\IntSettings1.reg',SW_HIDE);
    WinExec('cmd.exe /c reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\5.0\Cache\Content" %windir%\system\IntSettings2.reg',SW_HIDE);
    WinExec('cmd.exe /c reg export "HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache\Paths\path1" %windir%\system\IntSettings3.reg',SW_HIDE);
    WinExec('cmd.exe /c reg export "HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache\Paths\path2" %windir%\system\IntSettings4.reg',SW_HIDE);
    WinExec('cmd.exe /c reg export "HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache\Paths\path3" %windir%\system\IntSettings5.reg',SW_HIDE);
    WinExec('cmd.exe /c reg export "HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache\Paths\path4" %windir%\system\IntSettings6.reg',SW_HIDE);
  end;
end;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if CheckBox41.State = cbChecked then
  begin
    WinExec('cmd.exe /c %systemdrive%&&cd %userprofile%&&del/f/q/s recent\*.lnk',SW_HIDE);
  end;
  if CheckBox42.State = cbChecked then
  begin
    DeletarChave('','Software\Microsoft\Internet Explorer\TypedURLs');
    DeletarChave('','Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU');
  end;
  if CheckBox43.State = cbChecked then
  begin
    DeletarChave('','Software\Microsoft\Search Assistant\ACMru');
  end;
  if CheckBox44.State = cbChecked then
  begin
    WinExec('cmd.exe /c sfc /purgecache',SW_HIDE);
  end;
  if CheckBox45.State = cbChecked then
  begin
    WinExec('cmd.exe /c %systemdrive%&&cd %tmp%\..&&del/f/s/q Tempor~1',SW_HIDE);
  end;
  if CheckBox46.State = cbChecked then
  begin
    DeletarChave('','Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32');
    DeletarChave('','Software\Microsoft\Windows\ShellNoRoam\MUICache');
  end;
end;
end.
