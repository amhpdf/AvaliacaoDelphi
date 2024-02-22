unit controller.grupo;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client,
   dao.grupo;

type
  TGrupoController = class
    private
      FGrupoDAO: TGrupoDAO;
    public
      constructor Create;
      destructor Destroy; override;

      function Buscar(grupo: TGrupo): TGrupo;
      procedure Salvar(grupo: TGrupo);
      function ListarTodos: TObjectList<TGrupo>;
  end;

implementation

{ TGrupoController }

constructor TGrupoController.Create;
begin
  FGrupoDAO := TGrupoDAO.Create;
end;

destructor TGrupoController.Destroy;
begin
  inherited Destroy;
end;

function TGrupoController.Buscar(grupo: TGrupo): TGrupo;
begin
  Result := FGrupoDAO.Buscar(grupo);
end;

function TGrupoController.ListarTodos: TObjectList<TGrupo>;
begin
  Result := FGrupoDAO.ListarTodos;
end;

procedure TGrupoController.Salvar(grupo: TGrupo);
begin
//  FGrupoDAO.Salvar(grupo);
end;

end.
