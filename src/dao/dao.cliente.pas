unit dao.cliente;

interface

uses
  System.SysUtils, System.Generics.Collections,

  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,

  UntConexao, classe.cliente;

type
  TClienteDAO = class
    private
      FConexao: TConexao;
      FDQryCliente: TFDQuery;
    public
      constructor Create(ADataSource: TDataSource);
      destructor Destroy; override;

      function Buscar(cliente: TCliente): TCliente;
      procedure Salvar(cliente: TCliente);
      function ListarTodos: TObjectList<TCliente>;
      function ListarTodosDS: TFDQuery;

  end;

implementation

{ TClienteDAO }

constructor TClienteDAO.Create(ADataSource: TDataSource);
begin
  FConexao := TConexao.Create;

  FDQryCliente := TFDQuery.Create(nil);
  FDQryCliente.Connection := FConexao.GetConexao;
  ADataSource.DataSet := FDQryCliente;
end;

destructor TClienteDAO.Destroy;
begin
  inherited Destroy;
end;

function TClienteDAO.Buscar(cliente: TCliente): TCliente;
begin
  Result := nil;

  try
    FDQryCliente.Close;
    FDQryCliente.SQL.Clear;
    FDQryCliente.SQL.Add('SELECT c.nome, c.cpf, c.telefone');
    FDQryCliente.SQL.Add('  FROM cliente c');
    FDQryCliente.SQL.Add(' WHERE c.id = :idCliente');
    FDQryCliente.ParamByName('idCliente').AsInteger := cliente.Id;
    FDQryCliente.Open;

    if not (FDQryCliente.IsEmpty) then
    begin
      cliente.Nome := FDQryCliente.FieldByName('nome').AsString;
      cliente.CPF := FDQryCliente.FieldByName('cpf').AsString;
      cliente.Telefone := FDQryCliente.FieldByName('telefone').AsString;

      Result := cliente;
    end;
  finally
    FDQryCliente.Close;
  end;
end;

function TClienteDAO.ListarTodos: TObjectList<TCliente>;
var
  cliente: TCliente;
begin
  Result := nil;

  try
    FDQryCliente.Close;
    FDQryCliente.SQL.Clear;
    FDQryCliente.SQL.Add('SELECT c.id, c.nome, c.cpf, c.telefone');
    FDQryCliente.SQL.Add('  FROM cliente c');
    FDQryCliente.SQL.Add(' ORDER BY c.id');
    FDQryCliente.Open;

    if not (FDQryCliente.IsEmpty) then
    begin
      FDQryCliente.First;
      while not FDQryCliente.Eof do
      begin
        cliente := TCliente.Create;
        cliente.Id := FDQryCliente.FieldByName('id').AsInteger;
        cliente.Nome := FDQryCliente.FieldByName('nome').AsString;
        cliente.CPF := FDQryCliente.FieldByName('cpf').AsString;
        cliente.Telefone := FDQryCliente.FieldByName('telefone').AsString;

        Result.Add(cliente);

        FDQryCliente.Next;
      end;
    end;
  finally
    if Assigned(cliente) then
      FreeAndNil(cliente);

    FDQryCliente.Close;
  end;
end;

function TClienteDAO.ListarTodosDS: TFDQuery;
begin
  Result := nil;

  try
    FDQryCliente.Close;
    FDQryCliente.SQL.Clear;
    FDQryCliente.SQL.Add('SELECT c.id, c.nome, c.cpf, c.telefone');
    FDQryCliente.SQL.Add('  FROM cliente c');
    FDQryCliente.SQL.Add(' ORDER BY c.id');
    FDQryCliente.Open;

    if not (FDQryCliente.IsEmpty) then
      Result := FDQryCliente;
  finally
    FDQryCliente.Close;
  end;
end;

procedure TClienteDAO.Salvar(cliente: TCliente);
begin
  try
    FDQryCliente.Close;
    FDQryCliente.SQL.Clear;
    FDQryCliente.SQL.Add('INSERT INTO cliente (id, nome, cpf, telefone)');
    FDQryCliente.SQL.Add('             VALUES (:id, :nome, :cpf, :telefone)');
    FDQryCliente.ParamByName('id').AsInteger := cliente.ID;
    FDQryCliente.ParamByName('nome').AsString := cliente.Nome;
    FDQryCliente.ParamByName('cpf').AsString := cliente.CPF;
    FDQryCliente.ParamByName('telefone').AsString := cliente.Telefone;
    FDQryCliente.ExecSQL;
  finally
    FDQryCliente.Close;
  end;
end;

end.
