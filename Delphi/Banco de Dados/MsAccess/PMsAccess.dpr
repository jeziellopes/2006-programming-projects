program PMsAccess;

uses
  Forms,
  UMsAccess in 'UMsAccess.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
