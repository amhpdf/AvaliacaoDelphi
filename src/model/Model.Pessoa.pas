unit Model.Pessoa;

interface

uses
  Model.Interfaces;

type
  TPessoa = class
    private
      FId: integer;
      FNome: string;
    public
      constructor Create;
      destructor Destroy; override;

      function Id(AValue: Integer): IModelPessoaFisica overload;
      function Id: integer; overload;
      function Nome(AValue: string): IModelPessoaFisica overload;
      function Nome: string; overload;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin
  inherited;
end;

destructor TPessoa.Destroy;
begin
  inherited Destroy;
end;

function TPessoa.Id(AValue: Integer): IModelPessoaFisica;
begin
  Result := Self;

  Self.FId := AValue;
end;

function TPessoa.Id: integer;
begin
  Result := Self.FId;
end;

class function TPessoa.New: IModelPessoaFisica;
begin
  Result := Self.Create;
end;

function TPessoa.Nome(AValue: string): IModelPessoaFisica;
begin
  Result := Self;

  Self.FNome := AValue;
end;

function TPessoa.Nome: string;
begin
  Result := Self.FNome;
end;

end.
