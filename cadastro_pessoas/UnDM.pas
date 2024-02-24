unit UnDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TDM = class(TDataModule)
    FDConnection: TFDConnection;
    FDQueryPessoaFisica: TFDQuery;
    DsPessoaFisica: TDataSource;
    FDQueryPessoaJuridica: TFDQuery;
    DsPessoaJuridica: TDataSource;
    FDQueryPessoaFisicaPESSOA_FISICA_ID: TIntegerField;
    FDQueryPessoaFisicaNOME: TStringField;
    FDQueryPessoaFisicaCPF: TStringField;
    FDQueryPessoaJuridicaPESSOA_JURIDICA_ID: TIntegerField;
    FDQueryPessoaJuridicaNOME: TStringField;
    FDQueryPessoaJuridicaENDERECO: TStringField;
    FDQueryPessoaJuridicaTELEFONE: TStringField;
    FDQueryPessoaJuridicaCELULAR: TStringField;
    FDQueryPessoaJuridicaCNPJ: TStringField;
    FDQueryPessoaFisicaPESSOA_JURIDICA_ID: TIntegerField;
    FDQueryPessoaJuridicaEMAIL: TStringField;
    FDQueryExecuta: TFDQuery;
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
