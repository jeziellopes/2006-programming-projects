program PFuncoes;

uses
  Forms,
  Funcoes in 'Funcoes.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Programa Em Delphi';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
