unit Controller.PessoaJuridica;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client,
     DB,
     Controller.Interfaces, Model.Interfaces, Model.PessoaJuridica;

type
  TControllerPessoaJuridica = class(TInterfacedObject, IControllerPessoaJuridica)
    private
      //FDAOPessoaJuridica = TDAOPessoaJuridica;
      FDataSource: TDataSource;
      FModelPessoaJuridica: IModelPessoaJuridica;
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

      function BuscarPorId(AValue: Integer): IControllerPessoaJuridica;
      function Salvar: IControllerPessoaJuridica;
      function ListarTodos: IControllerPessoaJuridica;
      function Alterar: IControllerPessoaJuridica;
      function Excluir(AValue: Integer): IControllerPessoaJuridica;
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

function TControllerPessoaJuridica.Id: Integer;
begin
  Result := FModelPessoaJuridica.Id;
end;

function TControllerPessoaJuridica.Id(AValue: Integer): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Id(AValue);
end;

function TControllerPessoaJuridica.Nome: String;
begin
  Result := FModelPessoaJuridica.Nome;
end;

function TControllerPessoaJuridica.Nome(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;

  if AValue.IsEmpty then
    raise Exception.Create('O Nome da Pessoa não pode ser vazio.');

  FModelPessoaJuridica.Nome(Avalue);
end;

function TControllerPessoaJuridica.CNPJ: String;
begin
  Result := FModelPessoaJuridica.CNPJ;
end;

function TControllerPessoaJuridica.CNPJ(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;

  if AValue.IsEmpty then
    raise Exception.Create('O CNPJ não pode ser vazio.');

  FModelPessoaJuridica.CNPJ(AValue);
end;

function TControllerPessoaJuridica.Endereco: String;
begin
  Result := FModelPessoaJuridica.Endereco;
end;

function TControllerPessoaJuridica.Endereco(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Endereco(AValue);
end;

function TControllerPessoaJuridica.Bairro: String;
begin
  Result := FModelPessoaJuridica.Bairro;
end;

function TControllerPessoaJuridica.Bairro(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Bairro(AValue);
end;

function TControllerPessoaJuridica.Cidade: String;
begin
  Result := FModelPessoaJuridica.Cidade;
end;

function TControllerPessoaJuridica.Cidade(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Cidade(AValue);
end;

function TControllerPessoaJuridica.UF: String;
begin
  Result := FModelPessoaJuridica.UF;
end;

function TControllerPessoaJuridica.UF(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.UF(AValue);
end;

function TControllerPessoaJuridica.Cep: String;
begin
  Result := FModelPessoaJuridica.Cep;
end;

function TControllerPessoaJuridica.Cep(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Cep(AValue);
end;

function TControllerPessoaJuridica.Email: String;
begin
  Result := FModelPessoaJuridica.EMail;
end;

function TControllerPessoaJuridica.Email(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.EMail(AValue);
end;

function TControllerPessoaJuridica.Telefone: String;
begin
  Result := FModelPessoaJuridica.Telefone;
end;

function TControllerPessoaJuridica.Telefone(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Telefone(AValue);
end;

function TControllerPessoaJuridica.Celular: String;
begin
  Result := FModelPessoaJuridica.Celular;
end;

function TControllerPessoaJuridica.Celular(AValue: String): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Celular(AValue);
end;

function TControllerPessoaJuridica.BuscarPorId(AValue: Integer): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.BuscarPorId(AValue);
end;

function TControllerPessoaJuridica.ListarTodos: IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.ListarTodos;
end;

function TControllerPessoaJuridica.Salvar: IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Salvar;
end;

function TControllerPessoaJuridica.Alterar: IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Alterar;
end;

function TControllerPessoaJuridica.Excluir(AValue: Integer): IControllerPessoaJuridica;
begin
  Result := Self;
  FModelPessoaJuridica.Excluir(AValue);
end;

end.
