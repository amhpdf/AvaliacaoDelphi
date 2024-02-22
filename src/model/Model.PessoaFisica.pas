unit Model.PessoaFisica;

interface

uses
  Model.Interfaces;

type
  TModelPessoaFisica = class(TInterfacedObject, IModelPessoaFisica)
    private
      FId: integer;
      FNome: string;
      FCPF: string;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IModelPessoaFisica;
      function Id(AValue: Integer): IModelPessoaFisica overload;
      function Id: integer; overload;
      function Nome(AValue: string): IModelPessoaFisica overload;
      function Nome: string; overload;
      function CPF(AValue: string): IModelPessoaFisica overload;
      function CPF: string; overload;
  end;

implementation

{ TModelPessoaFisica }

function TModelPessoaFisica.CPF: string;
begin
  Result := Self.FCPF;
end;

function TModelPessoaFisica.CPF(AValue: string): IModelPessoaFisica;
begin
  Result := Self;

  Self.FCPF := AValue;
end;

constructor TModelPessoaFisica.Create;
begin
  inherited;
end;

destructor TModelPessoaFisica.Destroy;
begin
  inherited Destroy;
end;

function TModelPessoaFisica.Id(AValue: Integer): IModelPessoaFisica;
begin
  Result := Self;

  Self.FId := AValue;
end;

function TModelPessoaFisica.Id: integer;
begin
  Result := Self.FId;
end;

class function TModelPessoaFisica.New: IModelPessoaFisica;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Nome(AValue: string): IModelPessoaFisica;
begin
  Result := Self;

  Self.FNome := AValue;
end;

function TModelPessoaFisica.Nome: string;
begin
  Result := Self.FNome;
end;

end.
