unit Controller.PessoaFisica;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client,
     Model.PessoaFisica, Dao.PessoaFisica, DB, Controller.Interfaces,
  Model.Interfaces;

type
  TControllerPessoaFisica = class(TInterfacedObject, IControllerPessoaFisica)
    private
//      FDAOPessoaFisica: TDAOPessoaFisica;
      FDataSource: TDataSource;
      FModelPessoaFisica: IModelPessoaFisica;
    public
      constructor Create(ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(ADataSource: TDataSource): IControllerPessoaFisica;
      function Id(AValue: Integer): IControllerPessoaFisica overload;
      function Id: integer; overload;
      function Nome(AValue: string): IControllerPessoaFisica overload;
      function Nome: string; overload;
      function CPF(AValue: string): IControllerPessoaFisica overload;
      function CPF: string; overload;

      function BuscaPorId(AId: Integer): Boolean;
      function ListarTodos: Boolean;
      function Salvar: IControllerPessoaFisica;
  end;

implementation

{ TControllerPessoaFisica }

function TControllerPessoaFisica.BuscaPorId(AId: Integer): Boolean;
begin

end;

function TControllerPessoaFisica.CPF(AValue: string): IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.CPF(AValue);
end;

function TControllerPessoaFisica.CPF: string;
begin

end;

constructor TControllerPessoaFisica.Create(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
//  FClienteDAO := TClienteDAO.Create(FDataSource);
  FModelPessoaFisica := TModelPessoaFisica.New(FDataSource);
end;

destructor TControllerPessoaFisica.Destroy;
begin
  inherited Destroy;
end;

function TControllerPessoaFisica.Id: integer;
begin

end;

function TControllerPessoaFisica.Id(AValue: Integer): IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.Id(AValue);
end;

function TControllerPessoaFisica.ListarTodos: Boolean;
begin
  Result := FModelPessoaFisica.ListarTodos;
end;

class function TControllerPessoaFisica.New(ADataSource: TDataSource): IControllerPessoaFisica;
begin
  Result := Self.Create(ADataSource);
end;

function TControllerPessoaFisica.Nome: string;
begin

end;

function TControllerPessoaFisica.Nome(AValue: string): IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.Nome(AValue);
end;

function TControllerPessoaFisica.Salvar: IControllerPessoaFisica;
begin
  Result := Self;
  FModelPessoaFisica.Salvar;
end;

end.
