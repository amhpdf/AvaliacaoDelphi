unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList;

type
  TfrmPrincipal = class(TForm)
    actlstMenu: TActionList;
    mmMenu: TMainMenu;
    actCliente: TAction;
    actFornecedor: TAction;
    actProduto: TAction;
    actVenda: TAction;
    actGrupo: TAction;
    Cadastros: TMenuItem;
    Movimento: TMenuItem;
    N1: TMenuItem;
    Produtos1: TMenuItem;
    Sair: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actClienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.actClienteExecute(Sender: TObject);
begin
  try
    FrmCliente := TFrmCliente.Create;
    FrmCliente.ShowModal;
  finally
    if FrmCliente <> nil then
      FreeAndNil(FrmCliente);
  end;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0,0);
  end;
end;

end.
