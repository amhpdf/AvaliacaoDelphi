unit Model.PessoaFisica;

interface

uses
  Model.Interfaces, Dao.PessoaFisica, DB;

type
  TModelPessoaFisica = class(TInterfacedObject, IModelPessoaFisica)
    private
      FId: integer;
      FNome: string;
      FCPF: string;
      FDAOPessoaFisica: TDAOPessoaFisica;
    public
      constructor Create(ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(ADataSource: TDataSource): IModelPessoaFisica;
      function Id(AValue: Integer): IModelPessoaFisica overload;
      function Id: integer; overload;
      function Nome(AValue: string): IModelPessoaFisica overload;
      function Nome: string; overload;
      function CPF(AValue: string): IModelPessoaFisica overload;
      function CPF: string; overload;

      function Salvar: IModelPessoaFisica;
      function ListarTodos: Boolean;
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

constructor TModelPessoaFisica.Create(ADataSource: TDataSource);
begin
  FDAOPessoaFisica := TDAOPessoaFisica.Create(ADataSource);
end;

destructor TModelPessoaFisica.Destroy;
begin
  FDAOPessoaFisica.DisposeOf;
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

function TModelPessoaFisica.ListarTodos: Boolean;
begin
  Result := FDAOPessoaFisica.ListarTodos;
end;

class function TModelPessoaFisica.New(ADataSource: TDataSource): IModelPessoaFisica;
begin
  Result := Self.Create(ADataSource);
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

function TModelPessoaFisica.Salvar: IModelPessoaFisica;
begin
  Result := Self;
  FDAOPessoaFisica.Salvar(Self);
end;

end.
