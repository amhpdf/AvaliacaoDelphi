unit Dao.PessoaJuridica;

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
  TDAOPessoaJuridica = class
    private
      FConexao: TConexao;
      FDQryPessoaJuridica: TFDQuery;
      FDataSource: TDataSource;
    public
      constructor Create(ADataSource: TDataSource);
      destructor Destroy; override;

     function Buscar(APessoaJuridica: IModelPessoaJuridica): IModelPessoaJuridica;
     procedure Salvar(APessoaJuridica: IModelPessoaJuridica);
     function ListarTodos: Boolean;
  end;

implementation

{ TDAOPessoaJuridica }

constructor TDAOPessoaJuridica.Create;
begin
  FConexao := TConexao.Create;

  FDQryPessoaJuridica := TFDQuery.Create(nil);
  FDQryPessoaJuridica.Connection := FConexao.GetConexao;
end;

destructor TDAOPessoaJuridica.Destroy;
begin
  inherited Destroy;
end;

function TDAOPessoaJuridica.Buscar(APessoaJuridica: IModelPessoaJuridica): IModelPessoaJuridica;
begin
  Result := nil;

  try
    FDQryPessoaJuridica.Close;
    FDQryPessoaJuridica.SQL.Clear;
    FDQryPessoaJuridica.SQL.Add('SELECT pj.id, pj.nome, pj.cnpj, pj.endereco, pj.bairro,');
    FDQryPessoaJuridica.SQL.Add('       pj.cidade, pj.uf, pj.cep, pj.email, pj.telefone, pj.celular');
    FDQryPessoaJuridica.SQL.Add('  FROM PJuridica pj');
    FDQryPessoaJuridica.SQL.Add(' WHERE pj.id = :idPessoaJuridica');
    FDQryPessoaJuridica.ParamByName('idPessoaJuridica').AsInteger := APessoaJuridica.Id;
    FDQryPessoaJuridica.Open;

    if not (FDQryPessoaJuridica.IsEmpty) then
    begin
      APessoaJuridica
        .Nome(FDQryPessoaJuridica.FieldByName('nome').AsString)
        .CNPJ(FDQryPessoaJuridica.FieldByName('cnpj').AsString)
        .Endereco(FDQryPessoaJuridica.FieldByName('endereco').AsString)
        .Bairro(FDQryPessoaJuridica.FieldByName('bairro').AsString)
        .Cidade(FDQryPessoaJuridica.FieldByName('cidade').AsString)
        .UF(FDQryPessoaJuridica.FieldByName('uf').AsString)
        .Cep(FDQryPessoaJuridica.FieldByName('cep').AsString)
        .Email(FDQryPessoaJuridica.FieldByName('email').AsString)
        .Telefone(FDQryPessoaJuridica.FieldByName('telefone').AsString)
        .Celular(FDQryPessoaJuridica.FieldByName('celular').AsString);

      Result := APessoaJuridica;
    end;
  finally
    FDQryPessoaJuridica.Close;
  end;
end;

function TDAOPessoaJuridica.ListarTodos: Boolean;
begin
 Result := False;

  try
    FDQryPessoaJuridica.Close;
    FDQryPessoaJuridica.SQL.Clear;
    FDQryPessoaJuridica.SQL.Add('SELECT pj.id, pj.nome, pj.cnpj, pj.endereco, pj.bairro,');
    FDQryPessoaJuridica.SQL.Add('       pj.cidade, pj.uf, pj.cep, pj.email, pj.telefone, pj.celular');
    FDQryPessoaJuridica.SQL.Add('  FROM PJuridica pj');
    FDQryPessoaJuridica.SQL.Add(' ORDER BY pj.id');
    FDQryPessoaJuridica.Open;

    Result := FDQryPessoaJuridica.IsEmpty;
  finally
    //FDQryPessoaJuridica.Close;
  end;
end;

procedure TDAOPessoaJuridica.Salvar(APessoaJuridica: IModelPessoaJuridica);
begin
  try
    FDQryPessoaJuridica.Close;
    FDQryPessoaJuridica.SQL.Clear;
    FDQryPessoaJuridica.SQL.Add('INSERT INTO PessoaJuridica (nome, cnpj, endereco, bairro, ');
    FDQryPessoaJuridica.SQL.Add('                 cidade, uf, cep, email, telefone, celular');
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
  finally
    FDQryPessoaJuridica.Close;
  end;
end;

end.

