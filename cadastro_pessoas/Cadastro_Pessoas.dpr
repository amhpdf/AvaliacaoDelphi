program Cadastro_Pessoas;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {FormPrincipal},
  UnDM in 'UnDM.pas' {DM: TDataModule},
  UnCadastroFisico in 'UnCadastroFisico.pas' {FormCadastroFisico},
  UnCadastroJuridico in 'UnCadastroJuridico.pas' {FormCadastroJuridico},
  UnRelPessoaFisica in 'UnRelPessoaFisica.pas' {FormRelPessoaFisica},
  UnRelPessoaJuridica in 'UnRelPessoaJuridica.pas' {FormRelPessoaJuridica};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormRelPessoaFisica, FormRelPessoaFisica);
  Application.CreateForm(TFormRelPessoaJuridica, FormRelPessoaJuridica);
  Application.Run;
end.
