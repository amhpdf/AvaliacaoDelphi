unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    fd_connection: TFDConnection;
    tbl_pj: TFDTable;
    tbl_pf: TFDTable;
    tbl_pj_pf: TFDTable;
    tbl_pfID: TSmallintField;
    tbl_pfNOME: TStringField;
    tbl_pfCPF: TStringField;
    tbl_pj_pfID: TIntegerField;
    tbl_pj_pfID_PF: TIntegerField;
    tbl_pj_pfID_PJ: TIntegerField;
    tbl_pjID: TIntegerField;
    tbl_pjNOME: TStringField;
    tbl_pjTELEFONE: TStringField;
    tbl_pjCELULAR: TStringField;
    tbl_pjEMAIL: TStringField;
    tbl_pjUF: TStringField;
    tbl_pjCIDADE: TStringField;
    tbl_pjENDERECO: TStringField;
    tbl_pjCNPJ: TStringField;
    ds_pf: TDataSource;
    ds_pj: TDataSource;
    ds_pj_pf: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
