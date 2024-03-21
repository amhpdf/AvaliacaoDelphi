program avaliacao_AMHPDF;

uses
  Vcl.Forms,
  U_MAIN in 'U_MAIN.pas' {F_MAIN},
  UF_PADRAO in 'UF_PADRAO.pas' {FR_PADRAO: TFrame},
  UF_PJ in 'UF_PJ.pas' {FR_PJ: TFrame},
  UF_PF in 'UF_PF.pas' {FR_PF: TFrame},
  U_PREVIEW in 'U_PREVIEW.pas' {F_PREVIEW},
  U_DM in 'U_DM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_MAIN, F_MAIN);
  Application.CreateForm(TF_PREVIEW, F_PREVIEW);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
