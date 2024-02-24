unit Model.PessoaFisica;

interface

uses
  Model.Interfaces, Dao.Interfaces, Dao.PessoaFisica, DB;

type
  TModelPessoaFisica = class(TInterfacedObject, IModelPessoaFisica)
    private
      FId: integer;
      FNome: string;
      FCPF: string;
      FDAOPessoaFisica: IDAOPessoaFisica;
      FDataSource: TDataSource;
    public
      constructor Create(var ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(var ADataSource: TDataSource): IModelPessoaFisica;

      function Id(AValue: Integer): IModelPessoaFisica overload;
      function Id: Integer; overload;
      function Nome(AValue: string): IModelPessoaFisica overload;
      function Nome: string; overload;
      function CPF(AValue: string): IModelPessoaFisica overload;
      function CPF: string; overload;

      function Salvar: IModelPessoaFisica;
      function ListarTodos: IModelPessoaFisica;
      function BuscarPorId(AValue: Integer): IModelPessoaFisica;
      function Alterar: IModelPessoaFisica;
      function Excluir(AValue: Integer): IModelPessoaFisica;
  end;

implementation

{ TModelPessoaFisica }

constructor TModelPessoaFisica.Create(var ADataSource: TDataSource);
begin
  Self.FDataSource := ADataSource;
  FDAOPessoaFisica := TDAOPessoaFisica.New(FDataSource);
end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited Destroy;
end;

class function TModelPessoaFisica.New(var ADataSource: TDataSource): IModelPessoaFisica;
begin
  Result := Self.Create(ADataSource);
end;

function TModelPessoaFisica.Id: Integer;
begin
  Result := Self.FId;
end;

function TModelPessoaFisica.Id(AValue: Integer): IModelPessoaFisica;
begin
  Result := Self;
  Self.FId := AValue;
end;

function TModelPessoaFisica.Nome: string;
begin
  Result := Self.FNome;
end;

function TModelPessoaFisica.Nome(AValue: string): IModelPessoaFisica;
begin
  Result := Self;
  Self.FNome := AValue;
end;

function TModelPessoaFisica.CPF: string;
begin
  Result := Self.FCPF;
end;

function TModelPessoaFisica.CPF(AValue: string): IModelPessoaFisica;
begin
  Result := Self;
  Self.FCPF := AValue;
end;

function TModelPessoaFisica.BuscarPorId(AValue: Integer): IModelPessoaFisica;
begin
  Result := Self;
  FDAOPessoaFisica.BuscarPorId(AValue)
end;

function TModelPessoaFisica.ListarTodos: IModelPessoaFisica;
begin
  Result := Self;
  FDAOPessoaFisica.ListarTodos;
end;

function TModelPessoaFisica.Alterar: IModelPessoaFisica;
begin
  Result := Self;
  FDAOPessoaFisica.Alterar(Self);
end;

function TModelPessoaFisica.Excluir(AValue: Integer): IModelPessoaFisica;
begin
  Result := Self;
  FDAOPessoaFisica.Excluir(AValue);
end;

function TModelPessoaFisica.Salvar: IModelPessoaFisica;
begin
  Result := Self;
  FDAOPessoaFisica.Salvar(Self);
end;

end.
