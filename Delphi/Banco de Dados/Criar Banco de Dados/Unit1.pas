unit Unit1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB, OleServer, ADOX_TLB, XPMan;
type
  TForm1 = class(TForm)
    btn_criarbase: TButton;
    btn_criartabelas: TButton;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADOXCatalog1: TADOXCatalog;
    SaveDialog1: TSaveDialog;
    XPManifest1: TXPManifest;
    procedure btn_criarbaseClick(Sender: TObject);
    procedure btn_criartabelasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  Path: String;
implementation
{$R *.dfm}
procedure TForm1.btn_criarbaseClick(Sender: TObject);
var
  Base: String;
begin
  SaveDialog1.Execute;
  if SaveDialog1.FileName <> '' then
  begin
    Path := SaveDialog1.FileName;
    Base := 'Provider=Microsoft.Jet.OLEDB.4.0'+
    ';Data Source=' + SaveDialog1.FileName +
    ';Jet OLEDB:Engine Type=5';
    ADOXCatalog1.Create1(Base);
  end;
end;
procedure TForm1.btn_criartabelasClick(Sender: TObject);
var
  base, comando: string;
begin
  { definindo a base de dados }
  base := 'Provider=Microsoft.Jet.OLEDB.4.0' +
  ';Data Source=' + Path +
  ';Persist Security Info=False';
  ADOConnection1.ConnectionString := base;
  { Criando as tabelas... }
  {>>> PROPRIETARIO <<<}
  comando := 'CREATE TABLE PROPRIETARIO (' +
  'PRO_ID INT,' +
  'PRO_NOME TEXT(50))';
  ADOCommand1.CommandText := comando;
  ADOCommand1.Execute;
  { ADICIONANDO INDICES }
  comando := 'CREATE INDEX IDX_PRO_ID ' +
  'ON PROPRIETARIO (PRO_ID) WITH PRIMARY';
  ADOCommand1.CommandText := comando;
  ADOCommand1.Execute;
  {>>> ANIMAL <<<}
  comando := 'CREATE TABLE ANIMAL (' +
  'ANI_ID INT,' +
  'ANI_PROPRIETARIO INT ' +
  'CONSTRAINT IDX_PRO_ID ' +
  'REFERENCES PROPRIETARIO (PRO_ID),' +
  'ANI_NOME TEXT (50),' +
  'ANI_NASCIMENTO DATETIME)';
  ADOCommand1.CommandText := comando;
  ADOCommand1.Execute;
end;
end.
