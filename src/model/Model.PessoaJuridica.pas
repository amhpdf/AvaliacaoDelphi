unit Model.PessoaJuridica;

interface

uses
  Model.Interfaces, Dao.Interfaces, Dao.PessoaJuridica, DB;

type
  TModelPessoaJuridica = class(TInterfacedObject, IModelPessoaJuridica)
    private
      FId: integer;
      FNome: string;
      FCNPJ: string;
      FEndereco: string;
      FBairro: string;
      FCidade: string;
      FUF: string;
      FCep: string;
      FEmail: string;
      FTelefone: string;
      FCelular: string;
      FDAOPessoaJuridica : IDAOPessoaJuridica;
    public
      constructor Create(ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(ADataSource: TDataSource): IModelPessoaJuridica;

      function Id(AValue: Integer): IModelPessoaJuridica overload;
      function Id: integer; overload;
      function Nome(AValue: string): IModelPessoaJuridica overload;
      function Nome: string; overload;
      function CNPJ(AValue: string): IModelPessoaJuridica overload;
      function CNPJ: string; overload;
      function Endereco(AValue: string): IModelPessoaJuridica overload;
      function Endereco: string; overload;
      function Bairro(AValue: string): IModelPessoaJuridica overload;
      function Bairro: string; overload;
      function Cidade(AValue: string): IModelPessoaJuridica overload;
      function Cidade: string; overload;
      function UF(AValue: string): IModelPessoaJuridica overload;
      function UF: string; overload;
      function Cep(AValue: string): IModelPessoaJuridica overload;
      function Cep: string; overload;
      function EMail(AValue: string): IModelPessoaJuridica overload;
      function Email: string; overload;
      function Telefone(AValue: string): IModelPessoaJuridica overload;
      function Telefone: string; overload;
      function Celular(AValue: string): IModelPessoaJuridica overload;
      function Celular: string; overload;

      function Salvar: IModelPessoaJuridica;
      function ListarTodos: IModelPessoaJuridica;
      function BuscarPorId(AValue: integer): IModelPessoaJuridica;
      function Alterar: IModelPessoaJuridica;
      function Excluir(AValue: Integer): IModelPessoaJuridica;
  end;

implementation

{ TModelPessoaJuridica }

constructor TModelPessoaJuridica.Create(ADataSource: TDataSource);
begin
  FDAOPessoaJuridica := TDAOPessoaJuridica.New(ADataSource);
end;

destructor TModelPessoaJuridica.Destroy;
begin
  inherited Destroy;
end;

class function TModelPessoaJuridica.New(ADataSource: TDataSource): IModelPessoaJuridica;
begin
  Result := Self.Create(ADataSource);
end;

function TModelPessoaJuridica.Id: integer;
begin
  Result := Self.FId;
end;

function TModelPessoaJuridica.Id(AValue: Integer): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FId := AValue;
end;

function TModelPessoaJuridica.Nome: string;
begin
  Result := Self.FNome;
end;

function TModelPessoaJuridica.Nome(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FNome := AValue;
end;

function TModelPessoaJuridica.CNPJ: string;
begin
  Result := Self.FCNPJ;
end;

function TModelPessoaJuridica.CNPJ(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FCNPJ := AValue;
end;

function TModelPessoaJuridica.Endereco: string;
begin
  Result := Self.FEndereco;
end;

function TModelPessoaJuridica.Endereco(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FEndereco := AValue;
end;

function TModelPessoaJuridica.Bairro: string;
begin
  Result := Self.FBairro;
end;

function TModelPessoaJuridica.Bairro(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FBairro := AValue;
end;

function TModelPessoaJuridica.Cidade(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FCep := AValue;
end;

function TModelPessoaJuridica.Cidade: string;
begin
  Result := Self.FCidade;
end;

function TModelPessoaJuridica.UF: string;
begin
  Result := Self.FUF;
end;

function TModelPessoaJuridica.UF(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FUF := AValue;
end;

function TModelPessoaJuridica.Cep: string;
begin
  Result := Self.FCep;
end;

function TModelPessoaJuridica.Cep(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FCep := AValue;
end;

function TModelPessoaJuridica.EMail: string;
begin
  Result := Self.FEmail;
end;

function TModelPessoaJuridica.EMail(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FEmail := AValue;
end;

function TModelPessoaJuridica.Telefone: string;
begin
  Result := Self.FTelefone;
end;

function TModelPessoaJuridica.Telefone(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FTelefone := AValue;
end;

function TModelPessoaJuridica.Celular: string;
begin
  Result := Self.FCelular;
end;

function TModelPessoaJuridica.Celular(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;
  Self.FCelular := AValue;
end;

function TModelPessoaJuridica.BuscarPorId(AValue: integer): IModelPessoaJuridica;
begin
  Result := Self;
  FDAOPessoaJuridica.Excluir(AValue);
end;

function TModelPessoaJuridica.ListarTodos: IModelPessoaJuridica;
begin
  Result := Self;
  FDAOPessoaJuridica.ListarTodos;
end;

function TModelPessoaJuridica.Salvar: IModelPessoaJuridica;
begin
  Result := Self;
  FDAOPessoaJuridica.Salvar(Self);
end;

function TModelPessoaJuridica.Alterar: IModelPessoaJuridica;
begin
  Result := Self;
  FDAOPessoaJuridica.Alterar(Self);
end;

function TModelPessoaJuridica.Excluir(AValue: Integer): IModelPessoaJuridica;
begin
  Result := Self;
  FDAOPessoaJuridica.Excluir(AValue);
end;

end.
