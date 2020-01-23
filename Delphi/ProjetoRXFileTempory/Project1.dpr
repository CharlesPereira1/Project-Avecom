program Project1;

uses
  Forms,
  cadastroTemporario in 'cadastroTemporario.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
