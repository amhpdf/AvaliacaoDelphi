unit Dao.Vinculo;

interface

uses
  System.SysUtils, System.Generics.Collections,

  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,

  UntConexao, Model.Interfaces, Dao.Interfaces;

type
  TDAOVinculo = class(TInterfacedObject, IDAOVinculo)
    private
      FConexao: TConexao;
      FDQryVinculo: TFDQuery;
      FDataSource: TDataSource;
    public
      constructor Create(var ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(var ADataSource: TDataSource): IDAOVinculo;

      function Adicionar(AVinculo: IModelVinculo): IDAOVinculo;
      function Remover(AVinculo: IModelVinculo): IDAOVinculo;
      function ListarPorPessoaJuridica(AValue: Integer): IDAOVinculo;
  end;
  
implementation

{ TDAOVinculo }

constructor TDAOVinculo.Create(var ADataSource: TDataSource);
begin
  FConexao := TConexao.Create;

  FDQryVinculo := TFDQuery.Create(nil);
  FDQryVinculo.Connection := FConexao.GetConexao;
  FDataSource := ADataSource;
  FDataSource.DataSet := TDataSet(FDQryVinculo);
end;

destructor TDAOVinculo.Destroy;
begin

  inherited Destroy;
end;

class function TDAOVinculo.New(var ADataSource: TDataSource): IDAOVinculo;
begin
  Result := Self.Create(ADataSource);
end;

function TDAOVinculo.Adicionar(AVinculo: IModelVinculo): IDAOVinculo;
begin
  Result := Self;

  try
    FDQryVinculo.Close;
    FDQryVinculo.SQL.Clear;
    FDQryVinculo.SQL.Add('INSERT INTO vinculo (id_pjuridica, id_pfisica)');
    FDQryVinculo.SQL.Add('              VALUES(:idPessoaJuridica, :idPessoaFisica)');
    FDQryVinculo.ParamByName('idPessoaJuridica').AsInteger := AVinculo.IdPessoaJuridica;
    FDQryVinculo.ParamByName('idPessoaFisica').AsInteger := AVinculo.IdPessoaFisica;
  except on E: Exception do
    raise Exception.Create('Error ao inserir ' + E.Message);
  end;
end;

function TDAOVinculo.Remover(AVinculo: IModelVinculo): IDAOVinculo;
begin
  Result := Self;

  try
    FDQryVinculo.Close;
    FDQryVinculo.SQL.Clear;
    FDQryVinculo.SQL.Add('DELETE vinculo');
    FDQryVinculo.SQL.Add(' WHERE id_pjuridica = :idPessoaJuridica');
    FDQryVinculo.SQL.Add('   AND id_pfisica = :idPessoaFisica');
    FDQryVinculo.ParamByName('idPessoaJuridica').AsInteger := AVinculo.IdPessoaJuridica;
    FDQryVinculo.ParamByName('idPessoaFisica').AsInteger := AVinculo.IdPessoaFisica;
  except on E: Exception do
    raise Exception.Create('Error ao inserir ' + E.Message);
  end;
end;

function TDAOVinculo.ListarPorPessoaJuridica(AValue: Integer): IDAOVinculo;
begin
  Result := Self;

  try
    FDQryVinculo.Close;
    FDQryVinculo.SQL.Clear;
    FDQryVinculo.SQL.Add('SELECT V.ID_PJURIDICA, PJ.NOME AS PESSOA_JURIDICA, ');
    FDQryVinculo.SQL.Add('       V.ID_PFISICA, PF.NOME AS PESSOA_FISICA      ');
    FDQryVinculo.SQL.Add('  FROM VINCULO V                                   ');
    FDQryVinculo.SQL.Add(' INNER JOIN PJURIDICA PJ ON V.ID_PJURIDICA= PJ.ID  ');
    FDQryVinculo.SQL.Add(' INNER JOIN PFISICA PF ON V.ID_PFISICA = PF.ID     ');
    FDQryVinculo.SQL.Add(' WHERE v.ID_PJURIDICA = :IDPESSOAJURIDICA          ');
    FDQryVinculo.ParamByName('idPessoaJuridica').AsInteger := AValue;
    FDQryVinculo.Open;
  except on E: Exception do
    raise Exception.Create('Error ao inserir ' + E.Message);
  end;
end;

end.
