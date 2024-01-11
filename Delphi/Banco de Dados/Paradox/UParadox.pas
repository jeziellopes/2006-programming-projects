unit UParadox;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, XPMan, ImgList;
type
  TForm1 = class(TForm)
    Table1: TTable;
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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
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
  Table1.First;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  Table1.Last;
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
  if not Table1.Eof then
    Table1.Next;
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
  if Table1.State in [dsEdit, dsInsert] then
    Table1.Post;
end;
procedure TForm1.Button7Click(Sender: TObject);
begin
  Table1.Cancel;
end;
procedure TForm1.Button8Click(Sender: TObject);
begin
  Table1.Insert;
end;
procedure TForm1.Button9Click(Sender: TObject);
begin
  Table1.Delete;
end;

end.
