unit Dao.PessoaJuridica;

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
  TDAOPessoaJuridica = class(TInterfacedObject, IDAOPessoaJuridica)
    private
      FConexao: TConexao;
      FDQryPessoaJuridica: TFDQuery;
      FDataSource: TDataSource;
    public
      constructor Create(var ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(var ADataSource: TDataSource): IDAOPessoaJuridica;

      function BuscarPorId(AValue: Integer): IDAOPessoaJuridica;
      function Salvar(ApessoaJuridica: IModelPessoaJuridica): IDAOPessoaJuridica;
      function ListarTodos: IDAOPessoaJuridica;
      function Alterar(ApessoaJuridica: IModelPessoaJuridica): IDAOPEssoaJuridica;
      function Excluir(AValue: Integer): IDAOPessoaJuridica;
  end;

implementation

{ TDAOPessoaJuridica }

constructor TDAOPessoaJuridica.Create(var ADataSource: TDataSource);
begin
  FConexao := TConexao.Create;

  FDQryPessoaJuridica := TFDQuery.Create(nil);
  FDQryPessoaJuridica.Connection := FConexao.GetConexao;
  FDataSource := ADataSource;
  FDataSource.DataSet := TDataSet(FDQryPessoaJuridica);
end;

destructor TDAOPessoaJuridica.Destroy;
begin
  inherited Destroy;
end;

class function TDAOPessoaJuridica.New(var ADataSource: TDataSource): IDAOPessoaJuridica;
begin
  Result := Self.Create(ADataSource);
end;

function TDAOPessoaJuridica.BuscarPorId(AValue: Integer): IDAOPessoaJuridica;
begin
  Result := self;

  try
    FDQryPessoaJuridica.Close;
    FDQryPessoaJuridica.SQL.Clear;
    FDQryPessoaJuridica.SQL.Add('SELECT pj.id, pj.nome, pj.cnpj, pj.endereco, pj.bairro,');
    FDQryPessoaJuridica.SQL.Add('       pj.cidade, pj.uf, pj.cep, pj.email, pj.telefone, pj.celular');
    FDQryPessoaJuridica.SQL.Add('  FROM PJuridica pj');
    FDQryPessoaJuridica.SQL.Add(' WHERE pj.id = :idPessoaJuridica');
    FDQryPessoaJuridica.ParamByName('idPessoaJuridica').AsInteger := AValue;
    FDQryPessoaJuridica.Open;
  except on E: Exception do
    raise Exception.Create('Error ao consultar: ' + E.Message);
  end;
end;

function TDAOPessoaJuridica.ListarTodos: IDAOPessoaJuridica;
begin
  Result := Self;

  try
    FDQryPessoaJuridica.Close;
    FDQryPessoaJuridica.SQL.Clear;
    FDQryPessoaJuridica.SQL.Add('SELECT pj.id, pj.nome, pj.cnpj, pj.endereco, pj.bairro,');
    FDQryPessoaJuridica.SQL.Add('       pj.cidade, pj.uf, pj.cep, pj.email, pj.telefone, pj.celular');
    FDQryPessoaJuridica.SQL.Add('  FROM pjuridica pj');
    FDQryPessoaJuridica.SQL.Add(' ORDER BY pj.id');
    FDQryPessoaJuridica.Open;
  except on E: Exception do
    raise Exception.Create('Error ao listar: ' + E.Message);
  end;
end;

function TDAOPessoaJuridica.Salvar(ApessoaJuridica: IModelPessoaJuridica): IDAOPessoaJuridica;
begin
  Result := Self;

  try
    FDQryPessoaJuridica.Close;
    FDQryPessoaJuridica.SQL.Clear;
    FDQryPessoaJuridica.SQL.Add('INSERT INTO PJuridica (nome, cnpj, endereco, bairro, ');
    FDQryPessoaJuridica.SQL.Add('                 cidade, uf, cep, email, telefone, celular)');
    FDQryPessoaJuridica.SQL.Add('     VALUES (:nome, :cnpj, :endereco, :bairro, :cidade, :uf,');
    FDQryPessoaJuridica.SQL.Add('             :cep, :email, :telefone, :celular)');
    FDQryPessoaJuridica.ParamByName('nome').AsString := APessoaJuridica.Nome;
    FDQryPessoaJuridica.ParamByName('cnpj').AsString := APessoaJuridica.CNPJ;
    FDQryPessoaJuridica.ParamByName('endereco').AsString := APessoaJuridica.Endereco;
    FDQryPessoaJuridica.ParamByName('bairro').AsString := APessoaJuridica.Bairro;
    FDQryPessoaJuridica.ParamByName('cidade').AsString := APessoaJuridica.Cidade;
    FDQryPessoaJuridica.ParamByName('uf').AsString := APessoaJuridica.UF;
    FDQryPessoaJuridica.ParamByName('cep').AsString := APessoaJuridica.Cep;
    FDQryPessoaJuridica.ParamByName('email').AsString := APessoaJuridica.Email;
    FDQryPessoaJuridica.ParamByName('telefone').AsString := APessoaJuridica.Telefone;
    FDQryPessoaJuridica.ParamByName('celular').AsString := APessoaJuridica.Celular;
    FDQryPessoaJuridica.ExecSQL;
  except on E: Exception do
    raise Exception.Create('Error ao inserir: ' + E.Message);
  end;
end;

function TDAOPessoaJuridica.Alterar(ApessoaJuridica: IModelPessoaJuridica): IDAOPEssoaJuridica;
begin
  Result := Self;

  try
    FDQryPessoaJuridica.Close;
    FDQryPessoaJuridica.SQL.Clear;
    FDQryPessoaJuridica.SQL.Add('UPDATE FROM pjuridica');
    FDQryPessoaJuridica.SQL.Add('   SET nome = :nome');
    FDQryPessoaJuridica.SQL.Add('       cnpj = :cnpj');
    FDQryPessoaJuridica.SQL.Add('   endereco = :endereco');
    FDQryPessoaJuridica.SQL.Add('     bairro = :bairro');
    FDQryPessoaJuridica.SQL.Add('     cidade = :cidade');
    FDQryPessoaJuridica.SQL.Add('         uf = :uf');
    FDQryPessoaJuridica.SQL.Add('        cep = :cep');
    FDQryPessoaJuridica.SQL.Add('      email = :email');
    FDQryPessoaJuridica.SQL.Add('   telefone = :telefone');
    FDQryPessoaJuridica.SQL.Add('    celular = :celular');
    FDQryPessoaJuridica.ParamByName('nome').AsString := APessoaJuridica.Nome;
    FDQryPessoaJuridica.ParamByName('cnpj').AsString := APessoaJuridica.CNPJ;
    FDQryPessoaJuridica.ParamByName('endereco').AsString := APessoaJuridica.Endereco;
    FDQryPessoaJuridica.ParamByName('bairro').AsString := APessoaJuridica.Bairro;
    FDQryPessoaJuridica.ParamByName('cidade').AsString := APessoaJuridica.Cidade;
    FDQryPessoaJuridica.ParamByName('uf').AsString := APessoaJuridica.UF;
    FDQryPessoaJuridica.ParamByName('cep').AsString := APessoaJuridica.Cep;
    FDQryPessoaJuridica.ParamByName('email').AsString := APessoaJuridica.Email;
    FDQryPessoaJuridica.ParamByName('telefone').AsString := APessoaJuridica.Telefone;
    FDQryPessoaJuridica.ParamByName('celular').AsString := APessoaJuridica.Celular;
    FDQryPessoaJuridica.ExecSQL;
  except on E: Exception do
    raise Exception.Create('Error ao atualizar: ' + E.Message);
  end;
end;

function TDAOPessoaJuridica.Excluir(AValue: Integer): IDAOPessoaJuridica;
begin
  Result := Self;

  try
    FDQryPessoaJuridica.Close;
    FDQryPessoaJuridica.SQL.Clear;
    FDQryPessoaJuridica.SQL.Add('DELETE FROM pfisica');
    FDQryPessoaJuridica.SQL.Add(' WHERE id = :id');
    FDQryPessoaJuridica.ParamByName('id').AsInteger := AValue;
    FDQryPessoaJuridica.ExecSQL;
  except on E: Exception do
    raise Exception.Create('Error ao excluir: ' + E.Message);
  end;
end;
end.

