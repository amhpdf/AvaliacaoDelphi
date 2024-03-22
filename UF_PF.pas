unit UF_PF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UF_PADRAO, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, U_DM, Vcl.StdCtrls;

type
  TFR_PF = class(TFR_PADRAO)
    grid_pf: TDBGrid;
    pnl_rodape: TPanel;
    btn_adicionar: TButton;
    procedure grid_pfDblClick(Sender: TObject);
    procedure btn_adicionarClick(Sender: TObject);
  private
    { Private declarations }
    procedure deletaPF();
    procedure inserePF();
  public
    { Public declarations }
  end;

implementation

var
  FR_PF: TFR_PF;

{$R *.dfm}

procedure TFR_PF.btn_adicionarClick(Sender: TObject);
begin
  inherited;
  inserePF;
end;

procedure TFR_PF.deletaPF;
begin
  if dm.tbl_pfID.AsInteger > 0 then
  begin
    if MessageDlg('Deseja excluir o cadastro de ' + dm.tbl_pfNOME.AsString + '?', TMsgDlgType.mtConfirmation, mbYesNo, 0) = mrYes then
      dm.tbl_pf.Delete
  end;
end;

procedure TFR_PF.grid_pfDblClick(Sender: TObject);
begin
  inherited;
  deletaPF;
end;

procedure TFR_PF.inserePF;
begin
  exit;
end;

end.
