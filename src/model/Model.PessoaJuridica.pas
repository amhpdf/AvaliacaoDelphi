unit Model.PessoaJuridica;

interface

uses
  Model.Interfaces;

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
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IModelPessoaJuridica;

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
  end;

implementation

{ TModelPessoaJuridica }

function TModelPessoaJuridica.Bairro: string;
begin
  Result := Self.FBairro;
end;

function TModelPessoaJuridica.Bairro(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;

  Self.FBairro := AValue;
end;

function TModelPessoaJuridica.Celular(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;

  Self.FCelular := AValue;
end;

function TModelPessoaJuridica.Celular: string;
begin
  Result := Self.FCelular;
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

function TModelPessoaJuridica.Cidade(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;

  Self.FCep := AValue;
end;

function TModelPessoaJuridica.Cidade: string;
begin
  Result := Self.FCidade;
end;

function TModelPessoaJuridica.CNPJ(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;

  Self.FCep := AValue;
end;

function TModelPessoaJuridica.CNPJ: string;
begin
  Result := Self.FCNPJ;
end;

constructor TModelPessoaJuridica.Create;
begin
end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited Destroy;
end;

function TModelPessoaJuridica.EMail(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;

  Self.FEmail := AValue;
end;

function TModelPessoaJuridica.EMail: string;
begin
  Result := Self.FEmail;
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

function TModelPessoaJuridica.Id(AValue: Integer): IModelPessoaJuridica;
begin
  Result := Self;

  Self.FId := AValue;
end;

function TModelPessoaJuridica.Id: integer;
begin
  Result := Self.FId;
end;

class function TModelPessoaJuridica.New: IModelPessoaJuridica;
begin
  Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;

  Self.FNome := AValue;
end;

function TModelPessoaJuridica.Nome: string;
begin
  Result := Self.FNome;
end;

function TModelPessoaJuridica.Telefone(AValue: string): IModelPessoaJuridica;
begin
  Result := Self;

  Self.FTelefone := AValue;
end;

function TModelPessoaJuridica.Telefone: string;
begin
  Result := Self.FTelefone;
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

end.
