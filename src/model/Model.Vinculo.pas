unit Model.Vinculo;

interface

uses
  Model.Interfaces, Dao.Interfaces, Dao.Vinculo, DB;

type
  TModelVinculo = class(TInterfacedObject, IModelVinculo)
    private
      FIdPessoaFisica: Integer;
      FIdPessoaJuridica: Integer;
      FDAOVinculo: IDAOVinculo;
      FDataSource: TDataSource;
    public
      constructor Create(var ADataSource: TDataSource);
      destructor Destroy; override;
      class function New(var ADataSource: TDataSource): IModelVinculo;

      function IdPessoaJuridica: Integer; overload;
      function IdPessoaJuridica(AValue: Integer): IModelVinculo overload;

      function IdPessoaFisica: Integer; overload;
      function IdPessoaFisica(AValue: Integer): IModelVinculo overload;

      function Adicionar: IModelVinculo;
      function Remover(AVinculo: IModelVinculo): IModelVinculo;
      function ListarPorPessoaJuridica(AValue: Integer): IModelVinculo;
  end;

implementation

{ TModelVinculo }

constructor TModelVinculo.Create(var ADataSource: TDataSource);
begin
  Self.FDataSource := ADataSource;
  FDAOVinculo := TDAOVinculo.New(FDataSource)
end;

destructor TModelVinculo.Destroy;
begin

  inherited Destroy;
end;

class function TModelVinculo.New(var ADataSource: TDataSource): IModelVinculo;
begin
  Result := Self.Create(ADataSource);
end;

function TModelVinculo.IdPessoaFisica: Integer;
begin
  Result := FIdPessoaFisica;
end;

function TModelVinculo.IdPessoaFisica(AValue: Integer): IModelVinculo;
begin
  Result := Self;
  Self.FIdPessoaFisica := AValue;
end;

function TModelVinculo.IdPessoaJuridica: Integer;
begin
  Result := Self.IdPessoaJuridica;
end;

function TModelVinculo.IdPessoaJuridica(AValue: Integer): IModelVinculo;
begin
  Result := Self;
  Self.IdPessoaJuridica := AValue;
end;

function TModelVinculo.ListarPorPessoaJuridica(AValue: Integer): IModelVinculo;
begin
  Result := Self;
  FDAOVinculo.ListarPorPessoaJuridica(AValue);
end;

function TModelVinculo.Adicionar: IModelVinculo;
begin
  Result := Self;
  FDAOVinculo.Adicionar(Self);
end;

function TModelVinculo.Remover(AVinculo: IModelVinculo): IModelVinculo;
begin
  Result := Self;
  FDAOVinculo.Remover(AVinculo);
end;

end.
