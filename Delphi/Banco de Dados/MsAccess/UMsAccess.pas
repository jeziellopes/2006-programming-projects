unit UMsAccess;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, XPMan, ImgList,
  ADODB, DBCtrls;
type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    XPManifest1: TXPManifest;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
  ADOTable1.First;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  ADOTable1.Last;
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
  if not ADOTable1.Eof then
    ADOTable1.Next;
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
  if ADOTable1.State in [dsEdit, dsInsert] then
    ADOTable1.Post;
end;
procedure TForm1.Button7Click(Sender: TObject);
begin
  ADOTable1.Cancel;
end;
procedure TForm1.Button8Click(Sender: TObject);
begin
  ADOTable1.Insert;
end;
procedure TForm1.Button9Click(Sender: TObject);
begin
  ADOTable1.Delete;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data '+
  'Source=TimerCafe.mdb;'+
  'Mode=Share Deny None;Extended Properties="";Persist Security Info=False;'+
  'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";'+
  'Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
  'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
  'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
  'Jet OLEDB:Don'+char(39)+'t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;'+
  'Jet OLEDB:SFP=False';
  ADOConnection1.Connected := True;
  ADOTable1.Active := True;
end;
end.
