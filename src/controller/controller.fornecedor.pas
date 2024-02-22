unit controller.fornecedor;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client,
     classe.fornecedor, dao.fornecedor;

type
  TFornecedorController = class
    private
      FFornecedorDAO: TFornecedorDAO;
    public
      constructor Create;
      destructor Destroy; override;

      function Buscar(fornecedor: TFornecedor): TFornecedor;
      procedure Salvar(fornecedor: TFornecedor);
      function ListarTodos: TObjectList<TFornecedor>;
  end;

implementation

{ TFornecedorController }

constructor TFornecedorController.Create;
begin
  FFornecedorDAO := TFornecedorDAO.Create;
end;

destructor TFornecedorController.Destroy;
begin
  inherited Destroy;
end;

function TFornecedorController.Buscar(fornecedor: TFornecedor): TFornecedor;
begin
  Result := FFornecedorDAO.Buscar(fornecedor);
end;

function TFornecedorController.ListarTodos: TObjectList<TFornecedor>;
begin
  Result := FFornecedorDAO.ListarTodos;
end;

procedure TFornecedorController.Salvar(fornecedor: TFornecedor);
begin
  FFornecedorDAO.Salvar(fornecedor);
end;

end.
