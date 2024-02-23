unit Controller.PessoaFisica;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client,
     DB,
     Dao.PessoaFisica,
     Controller.Interfaces, Model.Interfaces, Model.PessoaFisica;

type


  TControllerPessoaFisica = class(TInterfacedObject, IControllerPessoaFisica)
    private
      //FDAOPessoaFisica: TDAOPessoaFisica;
      FDataSource: TDataSource;
      FModelPessoaFisica: IModelPessoaFisica;
    public
      constructor Create(var ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(var ADataSource: TDataSource): IControllerPessoaFisica;

      function Id(AValue: Integer): IControllerPessoaFisica overload;
      function Id: integer; overload;
      function Nome(AValue: string): IControllerPessoaFisica overload;
      function Nome: string; overload;
      function CPF(AValue: string): IControllerPessoaFisica overload;
      function CPF: string; overload;

      function BuscaPorId(AValue: Integer): IControllerPessoaFisica;
      function ListarTodos: IControllerPessoaFisica;
      function Salvar: IControllerPessoaFisica;
      function Alterar: IControllerPessoaFisica;
      function Excluir(AValue: Integer): IControllerPessoaFisica;
  end;

implementation

{ TControllerPessoaFisica }

constructor TControllerPessoaFisica.Create(var ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  FModelPessoaFisica := TModelPessoaFisica.New(FDataSource);
end;

destructor TControllerPessoaFisica.Destroy;
begin
  inherited Destroy;
end;

class function TControllerPessoaFisica.New(var ADataSource: TDataSource): IControllerPessoaFisica;
begin
  Result := Self.Create(ADataSource);
end;

function TControllerPessoaFisica.Id: integer;
begin
  Result := FModelPessoaFisica.Id;
end;

function TControllerPessoaFisica.Id(AValue: Integer): IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.Id(AValue);
end;

function TControllerPessoaFisica.Nome: string;
begin
  Result := FModelPessoaFisica.Nome;
end;

function TControllerPessoaFisica.Nome(AValue: string): IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.Nome(AValue);
end;

function TControllerPessoaFisica.CPF: string;
begin
  Result := FModelPessoaFisica.CPF;
end;

function TControllerPessoaFisica.CPF(AValue: string): IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.CPF(AValue);
end;

function TControllerPessoaFisica.Alterar: IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.Alterar;
end;

function TControllerPessoaFisica.Excluir(AValue: Integer): IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.Excluir(AValue);
end;

function TControllerPessoaFisica.BuscaPorId(AValue: Integer): IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.BuscarPorId(AValue);
end;

function TControllerPessoaFisica.ListarTodos: IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.ListarTodos;
end;

function TControllerPessoaFisica.Salvar: IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.Salvar;
end;

end.
