unit Dao.PessoaJuridica;

interface

uses
  System.SysUtils, System.Generics.Collections,

  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,

  UntConexao, Model.PessoaJuridica;

type
  TFornecedorDAO = class
    private
      FConexao: TConexao;
      FDQryFornecedor: TFDQuery;
    public
      constructor Create;
      destructor Destroy; override;

//      function Buscar(fornecedor: TFornecedor): TFornecedor;
//      procedure Salvar(fornecedor: TFornecedor);
//      function ListarTodos: TObjectList<TFornecedor>;
  end;

implementation

{ TFornecedorDAO }

constructor TFornecedorDAO.Create;
begin
  FConexao := TConexao.Create;

  FDQryFornecedor := TFDQuery.Create(nil);
  FDQryFornecedor.Connection := FConexao.GetConexao;
end;

destructor TFornecedorDAO.Destroy;
begin
  inherited Destroy;
end;

//function TFornecedorDAO.Buscar(fornecedor: TFornecedor): TFornecedor;
//begin
//  Result := nil;
//
//  try
//    FDQryFornecedor.Close;
//    FDQryFornecedor.SQL.Clear;
//    FDQryFornecedor.SQL.Add('SELECT f.nome, f.cpf, f.telefone');
//    FDQryFornecedor.SQL.Add('  FROM fornecedor f');
//    FDQryFornecedor.SQL.Add(' WHERE f.id = :idFornecedor');
//    FDQryFornecedor.ParamByName('idFornecedor').AsInteger := fornecedor.Id;
//    FDQryFornecedor.Open;
//
//    if not (FDQryFornecedor.IsEmpty) then
//    begin
//      fornecedor.Nome := FDQryFornecedor.FieldByName('nome').AsString;
//      fornecedor.CNPJ := FDQryFornecedor.FieldByName('cpf').AsString;
//      fornecedor.Telefone := FDQryFornecedor.FieldByName('telefone').AsString;
//
//      Result := fornecedor;
//    end;
//  finally
//    FDQryFornecedor.Close;
//  end;
//end;

//function TFornecedorDAO.ListarTodos: TObjectList<TFornecedor>;
//var
//  fornecedor: TFornecedor;
//begin
//  Result := nil;
//
//  try
//    FDQryFornecedor.Close;
//    FDQryFornecedor.SQL.Clear;
//    FDQryFornecedor.SQL.Add('SELECT f.id, f.nome, f.cnpj, f.telefone');
//    FDQryFornecedor.SQL.Add('  FROM fornecedor f');
//    FDQryFornecedor.SQL.Add(' ORDER BY f.id');
//    FDQryFornecedor.Open;
//
//    if not (FDQryFornecedor.IsEmpty) then
//    begin
//      FDQryFornecedor.First;
//      while not FDQryFornecedor.Eof do
//      begin
//        fornecedor := TFornecedor.Create;
//        fornecedor.Id := FDQryFornecedor.FieldByName('id').AsInteger;
//        fornecedor.Nome := FDQryFornecedor.FieldByName('nome').AsString;
//        fornecedor.CNPJ := FDQryFornecedor.FieldByName('cnpj').AsString;
//        fornecedor.Telefone := FDQryFornecedor.FieldByName('telefone').AsString;
//
//        Result.Add(fornecedor);
//
//        FDQryFornecedor.Next;
//      end;
//    end;
//  finally
//    if Assigned(fornecedor) then
//      FreeAndNil(fornecedor);
//
//    FDQryFornecedor.Close;
//  end;
//end;

//procedure TFornecedorDAO.Salvar(fornecedor: TFornecedor);
//begin
//  try
//    FDQryFornecedor.Close;
//    FDQryFornecedor.SQL.Clear;
//    FDQryFornecedor.SQL.Add('INSERT INTO fornecedor (nome, cnpj, telefone)');
//    FDQryFornecedor.SQL.Add('           VALUES (:nome, :cnpj, :telefone)');
//    FDQryFornecedor.ParamByName('nome').AsString := fornecedor.Nome;
//    FDQryFornecedor.ParamByName('cnpj').AsString := fornecedor.CNPJ;
//    FDQryFornecedor.ParamByName('telefone').AsString := fornecedor.Telefone;
//    FDQryFornecedor.ExecSQL;
//  finally
//    FDQryFornecedor.Close;
//  end;
//end;

end.

