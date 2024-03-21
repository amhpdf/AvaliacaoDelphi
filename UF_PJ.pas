unit UF_PJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UF_PADRAO, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, U_DM, Vcl.StdCtrls;

type
  TFR_PJ = class(TFR_PADRAO)
    grid_pj: TDBGrid;
    pnl_rodape: TPanel;
    btn_adicionar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

var
  FR_PJ: TFR_PJ;

{$R *.dfm}

end.
