program Project2;

uses
  Vcl.Forms,
  View_Pessoa in 'View_Pessoa.pas' {fPrincipal},
  Database in 'Database.pas' {dsPrint: TDataModule},
  Model_Pessoa in 'Model_Pessoa.pas',
  Controller_Pessoa in 'Controller_Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TdsPrint, dsPrint);
  Application.Run;
end.
