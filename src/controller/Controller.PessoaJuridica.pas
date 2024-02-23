unit Controller.PessoaJuridica;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client,
     DB, 
     Dao.PessoaJuridica, 
     Controller.Interfaces, Model.Interfaces, Model.PessoaJuridica;

type
  TControllerPessoaJuridica = class(TInterfacedObject, IControllerPessoaJuridica)
    private
      //FDAOPessoaJuridica = TDAOPessoaJuridica;
      FDataSource: TDataSource;
      FModelPessoaJuridica: IModelPessoaJuridica;
      function Bairro(AValue: String): IControllerPessoaJuridica;
      function Celular(AValue: String): IControllerPessoaJuridica;
      function Cep(AValue: String): IControllerPessoaJuridica;
      function Cidade(AValue: String): IControllerPessoaJuridica;
      function CNPJ(AValue: String): IControllerPessoaJuridica;
      function Email(AValue: String): IControllerPessoaJuridica;
      function Endereco(AValue: String): IControllerPessoaJuridica;
      function Id(AValue: Integer): IControllerPessoaJuridica;
      function Nome(AValue: String): IControllerPessoaJuridica;
      function Telefone(AValue: String): IControllerPessoaJuridica;
      function UF(AValue: String): IControllerPessoaJuridica;
    public
      constructor Create(ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(ADataSource: TDataSource): IControllerPessoaJuridica;

      function Id(AValue: Integer): IControllerPessoaJuridica overload;
      function Id: integer; overload;
      function Nome(AValue: string): IControllerPessoaJuridica overload;
      function Nome: string; overload;
      function CNPJ(AValue: string): IControllerPessoaJuridica overload;
      function CNPJ: string; overload;
      function Endereco(AValue: string): IControllerPessoaJuridica overload;
      function Endereco: string; overload;
      function Bairro(AValue: string): IControllerPessoaJuridica overload;
      function Bairro: string; overload;
      function Cidade(AValue: string): IControllerPessoaJuridica overload;
      function Cidade: string; overload;
      function UF(AValue: string): IControllerPessoaJuridica overload;
      function UF: string; overload;
      function Cep(AValue: string): IControllerPessoaJuridica overload;
      function Cep: string; overload;
      function EMail(AValue: string): IControllerPessoaJuridica overload;
      function Email: string; overload;
      function Telefone(AValue: string): IControllerPessoaJuridica overload;
      function Telefone: string; overload;
      function Celular(AValue: string): IControllerPessoaJuridica overload;
      function Celular: string; overload;

      function BuscaPorId(AId: Integer): Boolean;
      function ListarTodos: Boolean;
      function Salvar: IControllerPessoaJuridica;
  end;

implementation

{ TControllerPessoaJuridica }

constructor TControllerPessoaJuridica.Create(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  FModelPessoaJuridica := TModelPessoaJuridica.New(FDataSource);
end;

destructor TControllerPessoaJuridica.Destroy;
begin
  inherited Destroy;
end;

class function TControllerPessoaJuridica.New(ADataSource: TDataSource): IControllerPessoaJuridica;
begin
  Result := Self.Create(ADataSource);
end;

function TControllerPessoaJuridica.Nome(
  AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.Id(AValue: Integer): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Id(AValue);
end;

function TControllerPessoaJuridica.Nome: String;
begin

end;

function TControllerPessoaJuridica.Nome(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Nome(AValue);
end;

function TControllerPessoaJuridica.Telefone(
  AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.CNPJ: String;
begin

end;

function TControllerPessoaJuridica.CNPJ(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.CNPJ(AValue);
end;

function TControllerPessoaJuridica.Endereco: String;
begin

end;

function TControllerPessoaJuridica.Email(
  AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.Endereco(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Endereco(AValue);
end;

function TControllerPessoaJuridica.Endereco(
  AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.Id(
  AValue: Integer): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.Bairro: String;
begin

end;

function TControllerPessoaJuridica.Bairro(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Bairro(AValue);
end;

function TControllerPessoaJuridica.BuscaPorId(AId: Integer): Boolean;
begin

end;

function TControllerPessoaJuridica.Cidade: String;
begin

end;

function TControllerPessoaJuridica.Cidade(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Cidade(AValue);
end;

function TControllerPessoaJuridica.CNPJ(
  AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.UF: String;
begin

end;

function TControllerPessoaJuridica.UF(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.UF(AValue);
end;

function TControllerPessoaJuridica.Cep: String;
begin

end;

function TControllerPessoaJuridica.Celular(
  AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.Cep(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Cep(AValue);
end;

function TControllerPessoaJuridica.Cep(
  AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.Cidade(
  AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.Email: String;
begin

end;

function TControllerPessoaJuridica.Email(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Email(AValue);
end;

function TControllerPessoaJuridica.Telefone: String;
begin

end;

function TControllerPessoaJuridica.Telefone(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Telefone(AValue);
end;

function TControllerPessoaJuridica.UF(AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.Celular: String;
begin

end;

function TControllerPessoaJuridica.Bairro(AValue: String): IControllerPessoaJuridica;
begin

end;

function TControllerPessoaJuridica.Celular(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Celular(AValue);
end;

function TControllerPessoaJuridica.Id: Integer;
begin

end;

function TControllerPessoaJuridica.ListarTodos: Boolean;
begin
  Result := FModelPessoaJuridica.ListarTodos;
end;

function TControllerPessoaJuridica.Salvar: IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Salvar;
end;

end.
