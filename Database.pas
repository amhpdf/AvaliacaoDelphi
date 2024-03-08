unit Database;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdsPrint = class(TDataModule)
    FDConnection: TFDConnection;
    qryCadastro: TFDQuery;
    dsCadastro: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryCadastroID: TIntegerField;
    qryCadastroNOME: TStringField;
    qryCadastroCPF_CNPJ: TStringField;
    qryCadastroENDERECO: TStringField;
    qryCadastroCEP: TStringField;
    qryCadastroUF: TStringField;
    qryCadastroCIDADE: TStringField;
    qryCadastroBAIRRO: TStringField;
    qryCadastroEMAIL: TStringField;
    qryCadastroTELEFONE: TStringField;
    qryCadastroCELULAR: TStringField;
    qryVinculo: TFDQuery;
    dsVinculo: TDataSource;
    qryCadastroTIPO: TStringField;
    qryVinculoNOME: TStringField;
    qryVinculoID: TIntegerField;
    qryPrint: TFDQuery;
    dsPrint: TDataSource;
    qryCombo: TFDQuery;
    dsCombo: TDataSource;
    qryComboNOME: TStringField;
    qryComboID: TIntegerField;
    procedure qryCadastroAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dsPrint: TdsPrint;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TdsPrint.qryCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
   //qryCadastro.Active := False;
   //qryCadastro.SQL.Text := 'select * from pessoa';
   //qryCadastro.Open;
   //qryCadastro.Refresh;
   //qryCadastro.Active := True;
end;

end.
