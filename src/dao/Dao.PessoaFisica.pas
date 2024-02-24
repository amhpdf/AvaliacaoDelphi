unit Dao.PessoaFisica;

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
  TDAOPessoaFisica = class(TInterfacedObject, IDAOPessoaFisica)
    private
      FConexao: TConexao;
      FDQryPessoaFisica: TFDQuery;
      FDataSource: TDataSource;
    public
      constructor Create(var ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(var ADataSource: TDataSource): IDAOPessoaFisica;

      function BuscarPorId(AValue: Integer): IDAOPessoaFisica;
      function Salvar(APessoaFisica: IModelPessoaFisica): IDAOPessoaFisica;
      function ListarTodos: IDAOPessoaFisica;
      function Alterar(APessoaFisica: IModelPessoaFisica): IDAOPessoaFisica;
      function Excluir(AValue: Integer): IDAOPessoaFisica;
  end;

implementation

{ TDAOPessoaFisica }

constructor TDAOPessoaFisica.Create(var ADataSource: TDataSource);
begin
  FConexao := TConexao.Create;

  FDQryPessoaFisica := TFDQuery.Create(nil);
  FDQryPessoaFisica.Connection := FConexao.GetConexao;
  FDataSource := ADataSource;
  FDataSource.DataSet := TDataSet(FDQryPessoaFisica);
end;

destructor TDAOPessoaFisica.Destroy;
begin

  inherited Destroy;
end;

class function TDAOPessoaFisica.New(var ADataSource: TDataSource): IDAOPessoaFisica;
begin
  Result := Self.Create(ADataSource)
end;

function TDAOPessoaFisica.BuscarPorId(AValue: Integer): IDAOPessoaFisica;
begin
  Result := Self;

  FDQryPessoaFisica.Close;
  FDQryPessoaFisica.SQL.Clear;
  FDQryPessoaFisica.SQL.Add('SELECT pf.id, pf.nome, pf.cpf');
  FDQryPessoaFisica.SQL.Add('  FROM pfisica pf');
  FDQryPessoaFisica.SQL.Add(' WHERE pf.id = :idPessoaFisica');
  FDQryPessoaFisica.ParamByName('idPessoaFisica').AsInteger := AValue;
  FDQryPessoaFisica.Open;

  if FDQryPessoaFisica.IsEmpty then
    raise Exception.Create('Pessoa Física não existe');
end;

function TDAOPessoaFisica.ListarTodos: IDAOPessoaFisica;
begin
  Result := Self;

  try
    FDQryPessoaFisica.Close;
    FDQryPessoaFisica.SQL.Clear;
    FDQryPessoaFisica.SQL.Add('SELECT pf.id, pf.nome, pf.cpf');
    FDQryPessoaFisica.SQL.Add('  FROM pfisica pf');
    FDQryPessoaFisica.SQL.Add(' ORDER BY pf.id');
    FDQryPessoaFisica.Open;
  except on E: Exception do
    raise Exception.Create('Error ao listar: ' + E.Message);
  end;
end;

function TDAOPessoaFisica.Salvar(APessoaFisica: IModelPessoaFisica): IDAOPessoaFisica;
begin
  Result := Self;

  try
    FDQryPessoaFisica.Close;
    FDQryPessoaFisica.SQL.Clear;
    FDQryPessoaFisica.SQL.Add('INSERT INTO pfisica (nome, cpf)');
    FDQryPessoaFisica.SQL.Add('             VALUES (:nome, :cpf)');
    FDQryPessoaFisica.ParamByName('nome').AsString := APessoaFisica.Nome;
    FDQryPessoaFisica.ParamByName('cpf').AsString := APessoaFisica.CPF;
    FDQryPessoaFisica.ExecSQL;
  except on E: Exception do
    raise Exception.Create('Error ao inserir: ' + E.Message);
  end;
end;

function TDAOPessoaFisica.Alterar(APessoaFisica: IModelPessoaFisica): IDAOPessoaFisica;
begin
  Result := Self;

  try
    FDQryPessoaFisica.Close;
    FDQryPessoaFisica.SQL.Clear;
    FDQryPessoaFisica.SQL.Add('UPDATE pfisica ');
    FDQryPessoaFisica.SQL.Add('   SET nome = :nome, ');
    FDQryPessoaFisica.SQL.Add('        cpf = :cpf ');
    FDQryPessoaFisica.SQL.Add(' WHERE id = :id');
    FDQryPessoaFisica.ParamByName('nome').AsString := APessoaFisica.Nome;
    FDQryPessoaFisica.ParamByName('cpf').AsString := APessoaFisica.CPF;
    FDQryPessoaFisica.ParamByName('id').AsInteger := APessoaFisica.Id;
    FDQryPessoaFisica.ExecSQL;
  except on E: Exception do
    raise Exception.Create('Error ao alterar: ' + E.Message);
  end;
end;

function TDAOPessoaFisica.Excluir(AValue: Integer): IDAOPessoaFisica;
begin
  Result := Self;

  try
    FDQryPessoaFisica.Close;
    FDQryPessoaFisica.SQL.Clear;
    FDQryPessoaFisica.SQL.Add('DELETE FROM pfisica');
    FDQryPessoaFisica.SQL.Add(' WHERE id = :id');
    FDQryPessoaFisica.ParamByName('id').AsInteger := AValue;
    FDQryPessoaFisica.ExecSQL;
  except on E: Exception do
    raise Exception.Create('Error ao alterar: ' + E.Message);
  end;
end;

end.
