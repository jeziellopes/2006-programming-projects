unit Funcoes;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, XPMan, StdCtrls, MMSystem, Registry, ExtDlgs;
type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox5: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    RadioButton21: TRadioButton;
    RadioButton22: TRadioButton;
    RadioButton23: TRadioButton;
    RadioButton24: TRadioButton;
    RadioButton25: TRadioButton;
    RadioButton26: TRadioButton;
    RadioButton27: TRadioButton;
    RadioButton28: TRadioButton;
    RadioButton29: TRadioButton;
    RadioButton30: TRadioButton;
    RadioButton31: TRadioButton;
    RadioButton32: TRadioButton;
    RadioButton33: TRadioButton;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    Bevel1: TBevel;
    Edit1: TEdit;
    Edit2: TEdit;
    OpenDialog1: TOpenDialog;
    Button4: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure RadioButton14Click(Sender: TObject);
    procedure RadioButton15Click(Sender: TObject);
    procedure RadioButton16Click(Sender: TObject);
    procedure RadioButton17Click(Sender: TObject);
    procedure RadioButton18Click(Sender: TObject);
    procedure RadioButton19Click(Sender: TObject);
    procedure RadioButton20Click(Sender: TObject);
    procedure RadioButton21Click(Sender: TObject);
    procedure RadioButton22Click(Sender: TObject);
    procedure RadioButton23Click(Sender: TObject);
    procedure RadioButton24Click(Sender: TObject);
    procedure RadioButton25Click(Sender: TObject);
    procedure RadioButton26Click(Sender: TObject);
    procedure RadioButton27Click(Sender: TObject);
    procedure RadioButton28Click(Sender: TObject);
    procedure RadioButton29Click(Sender: TObject);
    procedure RadioButton30Click(Sender: TObject);
    procedure RadioButton31Click(Sender: TObject);
    procedure RadioButton32Click(Sender: TObject);
    procedure RadioButton33Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  pt: TPoint;
  R: TRect;
  OldValue: LongBool;
  Reg: TRegistry;
  Papel: String;
  Programa: String;
  implementation
uses Math;
{$R *.dfm}
procedure TForm1.Timer1Timer(Sender: TObject);
begin
  GetCursorPos(pt);
  Edit1.Text := IntToStr(pt.x);
  Edit2.Text := IntToStr(pt.y);
end;
procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  SwapMouseButton(false);
end;
procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  SwapMouseButton(true);
end;
procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  ClipCursor(nil);
end;
procedure TForm1.RadioButton4Click(Sender: TObject);
begin
  R := GetClientRect;
  R.TopLeft := ClientToScreen(R.TopLeft);
  R.BottomRight := ClientToScreen(R.BottomRight);
  ClipCursor(@R);
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  mciSendString('Set cdaudio door open wait',nil,0,handle);
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  mciSendString('Set cdaudio door closed wait',nil,0,handle);
end;
procedure TForm1.RadioButton5Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton5.Caption);
end;
procedure TForm1.RadioButton6Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton6.Caption);
end;
procedure TForm1.RadioButton7Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton7.Caption);
end;
procedure TForm1.RadioButton8Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton8.Caption);
end;
procedure TForm1.RadioButton9Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton9.Caption);
end;
procedure TForm1.RadioButton10Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton10.Caption);
end;
procedure TForm1.RadioButton11Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton11.Caption);
end;
procedure TForm1.RadioButton12Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton12.Caption);
end;
procedure TForm1.RadioButton13Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton13.Caption);
end;procedure TForm1.RadioButton14Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton14.Caption);
end;
procedure TForm1.RadioButton15Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton15.Caption);
end;
procedure TForm1.RadioButton16Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton16.Caption);
end;
procedure TForm1.RadioButton17Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton17.Caption);
end;
procedure TForm1.RadioButton18Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton18.Caption);
end;
procedure TForm1.RadioButton19Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton19.Caption);
end;
procedure TForm1.RadioButton20Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton20.Caption);
end;
procedure TForm1.RadioButton21Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton21.Caption);
end;
procedure TForm1.RadioButton22Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton22.Caption);
end;
procedure TForm1.RadioButton23Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton23.Caption);
end;
procedure TForm1.RadioButton24Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton24.Caption);
end;
procedure TForm1.RadioButton25Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton25.Caption);
end;
procedure TForm1.RadioButton26Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton26.Caption);
end;
procedure TForm1.RadioButton27Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton27.Caption);
end;
procedure TForm1.RadioButton28Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton28.Caption);
end;
procedure TForm1.RadioButton29Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton29.Caption);
end;
procedure TForm1.RadioButton30Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton30.Caption);
end;
procedure TForm1.RadioButton31Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton31.Caption);
end;
procedure TForm1.RadioButton32Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton32.Caption);
end;
procedure TForm1.RadioButton33Click(Sender: TObject);
begin
  Label1.Caption := GetEnvironmentVariable(RadioButton33.Caption);
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  label1.Caption := GetEnvironmentVariable(RadioButton5.Caption);
  Reg := TRegistry.Create;
with Reg do
begin
if OpenKey ('Control Panel\Desktop',false) then
  if ValueExists ('wallpaper') then
    Papel := ReadString('wallpaper');
    if Papel <> '' then
      image1.Picture.LoadFromFile(Papel);
      OpenPictureDialog1.FileName := Papel;
    if Papel = '' then
      Papel := GetEnvironmentVariable('windir') + '\SlowView Wallpaper.bmp';
      image1.Picture.LoadFromFile(Papel);
      OpenPictureDialog1.FileName := Papel;
      WriteString('wallpaper',Papel);
  end;
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  if OpenPictureDialog1.FileName <> '' then
  SystemParametersInfo(SPI_SETDESKWALLPAPER,0,
  PChar(OpenPictureDialog1.FileName),SPIF_SENDWININICHANGE);
  Reg.WriteString('wallpaper',OpenPictureDialog1.FileName);
  image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  Papel := OpenPictureDialog1.FileName;
end;
procedure TForm1.Button4Click(Sender: TObject);
begin
  close;
end;
end.
