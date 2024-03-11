unit Controller.Vinculo;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client,
     DB,
     Controller.Interfaces, Model.Interfaces,
     Model.Vinculo, Dao.Vinculo;

type
  TControllerVinculo = class(TInterfacedObject, IControllerVinculo)
  private
    FDataSource: TDataSource;
    FModelVinculo: IModelVinculo;
  public
    constructor Create(var ADatasource: TDataSource);
    destructor Destroy; override;
    class function New(var ADataSource: TDataSource): IControllerVinculo;

    function IdPessoaJuridica: Integer; overload;
    function IdPessoaJuridica(AValue: Integer): IControllerVinculo; overload;
    function IdPessoaFisica: Integer; overload;
    function IdPessoaFisica(AValue: Integer): IControllerVinculo; overload;

    function Adicionar: IControllerVinculo;
    function Remover: IControllerVinculo;
    function ListarPorPessoaJuridica(AValue: Integer): IControllerVinculo;
    function ConsultarVinculo: IControllerVinculo;
  end;

implementation

{ TControllerVinculo }

constructor TControllerVinculo.Create(var ADatasource: TDataSource);
begin
  FDataSource := ADatasource;
  FModelVinculo := TModelVinculo.New(FDataSource);
end;

destructor TControllerVinculo.Destroy;
begin

  inherited;
end;

function TControllerVinculo.Adicionar: IControllerVinculo;
begin
  Result := Self;
  FModelVinculo.Adicionar;
end;

function TControllerVinculo.IdPessoaFisica: Integer;
begin
  Result := FModelVinculo.IdPessoaFisica;
end;

function TControllerVinculo.IdPessoaFisica(AValue: Integer): IControllerVinculo;
begin
  Result := Self;
  FModelVinculo.IdPessoaFisica(AValue);
end;

function TControllerVinculo.IdPessoaJuridica: Integer;
begin
  Result := FModelVinculo.IdPessoaJuridica;
end;

function TControllerVinculo.IdPessoaJuridica(AValue: Integer): IControllerVinculo;
begin
  Result := Self;
  FModelVinculo.IdPessoaJuridica(AValue)
end;

function TControllerVinculo.ListarPorPessoaJuridica(AValue: Integer): IControllerVinculo;
begin
  Result := Self;
  FModelVinculo.ListarPorPessoaJuridica(AValue);
end;

class function TControllerVinculo.New(var ADataSource: TDataSource): IControllerVinculo;
begin
  Result := Self.Create(ADataSource);
end;

function TControllerVinculo.Remover: IControllerVinculo;
begin
  Result := Self;
  FModelVinculo.Remover(FModelVinculo);
end;

function TControllerVinculo.ConsultarVinculo: IControllerVinculo;
begin
  Result := Self;
  FModelVinculo.ConsultarVinculo(FModelVinculo);
end;

end.
