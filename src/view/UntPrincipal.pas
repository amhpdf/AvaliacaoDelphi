unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    actlstMenu: TActionList;
    mmMenu: TMainMenu;
    actPFisica: TAction;
    actPJuridica: TAction;
    actSair: TAction;
    Cadastro: TMenuItem;
    mniCliente: TMenuItem;
    mniFornecedor: TMenuItem;
    mniSair: TMenuItem;
    procedure actPFisicaExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation


{$R *.dfm}

procedure TFrmPrincipal.actPFisicaExecute(Sender: TObject);
//var
//  FrmPessoaFisica: TFrmPessoaFisica;
begin
//  FrmPessoaFisica := TFrmPessoaFisica.Create(nil);
//
//  try
//    FrmPessoaFisica.ShowModal;
//  finally
//    if FrmPessoaFisica <> nil then
//      FreeAndNil(FrmPessoaFisica);
//  end;
end;

procedure TFrmPrincipal.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0,0);
  end;
end;

end.
