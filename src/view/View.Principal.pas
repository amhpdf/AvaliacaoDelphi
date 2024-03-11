unit View.Principal;

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
    procedure actPJuridicaExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  View.PessoaFisica, View.PessoaJuridica;


{$R *.dfm}

procedure TFrmPrincipal.actPFisicaExecute(Sender: TObject);
var
  FrmPessoaFisica: TFrmCadastroPessoaFisica;
begin
  FrmPessoaFisica := TFrmCadastroPessoaFisica.Create(nil);

  try
    FrmPessoaFisica.ShowModal;
  finally
    if FrmPessoaFisica <> nil then
      FreeAndNil(FrmPessoaFisica);
  end;
end;

procedure TFrmPrincipal.actPJuridicaExecute(Sender: TObject);
var
  FrmPessoaJuridica: TFrmCadastroPessoaJuridica;
begin
  FrmPessoaJuridica := TFrmCadastroPessoaJuridica.Create(nil);

  try
    FrmPessoaJuridica.ShowModal;
  finally
    if FrmPessoaJuridica <> nil then
      FreeAndNil(FrmPessoaJuridica);
  end;
end;

procedure TFrmPrincipal.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Application.MessageBox('Sair do sistema?', 'Confirmar', MB_YESNO + MB_ICONQUESTION) = mrYes then
    Application.Terminate
  else
    CanClose := False;
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
