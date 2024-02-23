unit Dao.PessoaFisica;

interface

uses
  System.SysUtils, System.Generics.Collections,

  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,

  UntConexao, Model.Interfaces;

type
  TDAOPessoaFisica = class
    private
      FConexao: TConexao;
      FDQryPessoaFisica: TFDQuery;
      FDataSource: TDataSource;
    public
      constructor Create(ADataSource: TDataSource);
      destructor Destroy; override;

      function Buscar(APessoaFisica: IModelPessoaFisica): IModelPessoaFisica;
      procedure Salvar(APessoaFisica: IModelPessoaFisica);
      function ListarTodos: Boolean;

  end;

implementation

{ TDAOPessoaFisica }

constructor TDAOPessoaFisica.Create(ADataSource: TDataSource);
begin
  FConexao := TConexao.Create;

  FDQryPessoaFisica := TFDQuery.Create(nil);
  FDQryPessoaFisica.Connection := FConexao.GetConexao;
//  ADataSource.DataSet := FDQryPessoaFisica.DataSource.DataSet;
end;

destructor TDAOPessoaFisica.Destroy;
begin
  inherited Destroy;
end;

function TDAOPessoaFisica.Buscar(APessoaFisica: IModelPessoaFisica): IModelPessoaFisica;
begin
  Result := nil;

  try
    FDQryPessoaFisica.Close;
    FDQryPessoaFisica.SQL.Clear;
    FDQryPessoaFisica.SQL.Add('SELECT pf.nome, pf.cpf');
    FDQryPessoaFisica.SQL.Add('  FROM pfisica pf');
    FDQryPessoaFisica.SQL.Add(' WHERE pf.id = :idPessoaFisica');
    FDQryPessoaFisica.ParamByName('idPessoaFisica').AsInteger := APessoaFisica.Id;
    FDQryPessoaFisica.Open;

    if not (FDQryPessoaFisica.IsEmpty) then
    begin
      APessoaFisica
        .Nome(FDQryPessoaFisica.FieldByName('nome').AsString)
        .CPF(FDQryPessoaFisica.FieldByName('cpf').AsString);

      Result := APessoaFisica;
    end;
  finally
    FDQryPessoaFisica.Close;
  end;
end;

function TDAOPessoaFisica.ListarTodos: Boolean;
begin
  Result := False;
  try
    FDQryPessoaFisica.Close;
    FDQryPessoaFisica.SQL.Clear;
    FDQryPessoaFisica.SQL.Add('SELECT pf.id, pf.nome, pf.cpf');
    FDQryPessoaFisica.SQL.Add('  FROM pfisica pf');
    FDQryPessoaFisica.SQL.Add(' ORDER BY pf.id');
    FDQryPessoaFisica.Open;

    Result := FDQryPessoaFisica.IsEmpty;
  finally
    //FDQryPessoaFisica.Close;
  end;
end;

procedure TDAOPessoaFisica.Salvar(APessoaFisica: IModelPessoaFisica);
begin
  try
    FDQryPessoaFisica.Close;
    FDQryPessoaFisica.SQL.Clear;
    FDQryPessoaFisica.SQL.Add('INSERT INTO pfisica (nome, cpf)');
    FDQryPessoaFisica.SQL.Add('             VALUES (:nome, :cpf)');
    FDQryPessoaFisica.ParamByName('nome').AsString := APessoaFisica.Nome;
    FDQryPessoaFisica.ParamByName('cpf').AsString := APessoaFisica.CPF;
    FDQryPessoaFisica.ExecSQL;
  finally
    FDQryPessoaFisica.Close;
  end;
end;

end.
