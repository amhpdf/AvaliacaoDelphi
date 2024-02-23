unit View.Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmCadastroPadrao = class(TForm)
    pnlcontainer: TPanel;
    pnlBottuns: TPanel;
    pgcMain: TPageControl;
    tsConsulta: TTabSheet;
    tsEdit: TTabSheet;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    btnSalvar: TButton;
    btnFechar: TButton;
    pnlMainConsultar: TPanel;
    pnlMainEditar: TPanel;
    pnlPesquisar: TPanel;
    edtPesquisar: TEdit;
    btnPesquisar: TButton;
    dbbGridConsultar: TDBGrid;
    pnlNavegador: TPanel;
    dbnGridConsultar: TDBNavigator;
    lblPesquisarCodigo: TLabel;
    dsConsultar: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pgcMainChange(Sender: TObject);
    procedure HabilitarBotoes(estado: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimparCampos;
    procedure HabilitarCampos(estado: Boolean);
  public
    { Public declarations }
  end;

var
  FrmCadastroPadrao: TFrmCadastroPadrao;

implementation

{$R *.dfm}

procedure TFrmCadastroPadrao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadastroPadrao.btnIncluirClick(Sender: TObject);
begin
  LimparCampos;
  HabilitarBotoes(False);
  HabilitarCampos(True);
end;

procedure TFrmCadastroPadrao.btnSalvarClick(Sender: TObject);
begin
  HabilitarBotoes(True);
  HabilitarCampos(False);
end;

procedure TFrmCadastroPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0,0);
  end;
end;

procedure TFrmCadastroPadrao.FormShow(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 0;
  HabilitarCampos(False);
  HabilitarBotoes(True);
end;

procedure TFrmCadastroPadrao.HabilitarBotoes(estado: Boolean);
begin
  btnIncluir.Enabled  := estado;
  btnAlterar.Enabled  := estado;
  btnExcluir.Enabled  := estado;
  btnCancelar.Enabled := not estado;
  btnSalvar.Enabled   := not estado;
  btnFechar.Enabled   := estado;
end;

procedure TFrmCadastroPadrao.LimparCampos;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then TEdit(Components[i]).Clear;
    if (Components[i] is TCheckBox) then TCheckBox(Components[i]).Checked := False;
  end;
end;

procedure TFrmCadastroPadrao.pgcMainChange(Sender: TObject);
begin
  if (pgcMain.ActivePageIndex = 0) and (edtPesquisar.Enabled) then
    edtPesquisar.SetFocus;
end;

procedure TFrmCadastroPadrao.HabilitarCampos(estado: Boolean);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if ( (Components[i] is TEdit) or (Components[i] is TCheckBox) ) then
      TWinControl(Components[i]).Enabled := estado;
  end;
end;

end.
