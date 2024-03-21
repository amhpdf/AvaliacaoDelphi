program cadastro;

uses
  Vcl.Forms,
  uMainAMH in 'uMainAMH.pas' {Form1},
  uDM in 'Model\uDM.pas' {DM: TDataModule},
  uModifyPerson in 'View\uModifyPerson.pas' {FrmModifyPerson},
  uListPerson in 'View\uListPerson.pas' {frmListPersons},
  utils in 'common\utils.pas',
  uRelatorio in 'View\uRelatorio.pas' {frmQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.