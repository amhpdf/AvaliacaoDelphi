unit controller.cliente;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client,
     classe.cliente, dao.cliente, DB;

type
  TClienteController = class
    private
      FClienteDAO: TClienteDAO;
      FDataSource: TDataSource;
    public
      constructor Create(ADataSource: TDataSource);
      destructor Destroy; override;

      function Buscar(cliente: TCliente): TCliente;
      procedure Salvar(cliente: TCliente);
      function ListarTodos: TObjectList<TCliente>;
      function ListarTodosDS: TFDQuery;
  end;

implementation

{ TClienteController }

constructor TClienteController.Create(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  FClienteDAO := TClienteDAO.Create(FDataSource);
end;

destructor TClienteController.Destroy;
begin
  inherited Destroy;
end;

function TClienteController.Buscar(cliente: TCliente): TCliente;
begin
  Result := FClienteDAO.Buscar(cliente);
end;

function TClienteController.ListarTodos: TObjectList<TCliente>;
begin
  Result := FClienteDAO.ListarTodos;
end;

function TClienteController.ListarTodosDS: TFDQuery;
begin
  Result := FClienteDAO.ListarTodosDS;
end;

procedure TClienteController.Salvar(cliente: TCliente);
begin
  FClienteDAO.Salvar(cliente);
end;

end.
