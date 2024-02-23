unit dao.grupo;

interface

uses
  System.SysUtils, System.Generics.Collections,

  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,

  UntConexao;

type
  TGrupoDAO = class
    private
      FConexao: TConexao;
      FDQryGrupo: TFDQuery;
    public
      constructor Create;
      destructor Destroy; override;

//      function Buscar(grupo: TGrupo): TGrupo;
//      procedure Salvar(grupo: TGrupo);
//      function ListarTodos: TObjectList<TGrupo>;
  end;

implementation


{ TGrupoDAO }

constructor TGrupoDAO.Create;
begin
  FConexao := TConexao.Create;

  FDQryGrupo := TFDQuery.Create(nil);
  FDQryGrupo.Connection := FConexao.GetConexao;

  inherited;
end;

destructor TGrupoDAO.Destroy;
begin
  inherited Destroy;
end;

//function TGrupoDAO.Buscar(grupo: TGrupo): TGrupo;
//begin
//  Result := nil;
//
//  try
//    FDQryGrupo.Close;
//    FDQryGrupo.SQL.Clear;
//    FDQryGrupo.SQL.Add('SELECT g.descricao');
//    FDQryGrupo.SQL.Add('  FROM grupo g');
//    FDQryGrupo.SQL.Add(' WHERE g.id = :idGrupo');
//    FDQryGrupo.ParamByName('idGrupo').AsInteger := grupo.Id;
//    FDQryGrupo.Open;
//
//    if not (FDQryGrupo.IsEmpty) then
//    begin
//      grupo.Descricao := FDQryGrupo.FieldByName('descricao').AsString;
//
//      Result := grupo;
//    end;
//  finally
//    FDQryGrupo.Close;
//  end;
//end;
//
//function TGrupoDAO.ListarTodos: TObjectList<TGrupo>;
//var
//  grupo: TGrupo;
//begin
//  Result := nil;
//
//  try
//    FDQryGrupo.Close;
//    FDQryGrupo.SQL.Clear;
//    FDQryGrupo.SQL.Add('SELECT g.id, g.descricao');
//    FDQryGrupo.SQL.Add('  FROM grupo g');
//    FDQryGrupo.SQL.Add(' ORDER BY g.id');
//    FDQryGrupo.Open;
//
//    if not (FDQryGrupo.IsEmpty) then
//    begin
//      FDQryGrupo.First;
//      while not FDQryGrupo.Eof do
//      begin
//        grupo := TGrupo.Create;
//        grupo.Id := FDQryGrupo.FieldByName('id').AsInteger;
//        grupo.Descricao := FDQryGrupo.FieldByName('descricao').AsString;
//
//        Result.Add(grupo);
//
//        FDQryGrupo.Next;
//      end;
//    end;
//  finally
//    if Assigned(grupo) then
//      FreeAndNil(grupo);
//
//    FDQryGrupo.Close;
//  end;
//end;
//
//procedure TGrupoDAO.Salvar(grupo: TGrupo);
//begin
//  try
//    FDQryGrupo.Close;
//    FDQryGrupo.SQL.Clear;
//    FDQryGrupo.SQL.Add('INSERT INTO grupo (descricao)');
//    FDQryGrupo.SQL.Add('           VALUES (:descricao)');
//    FDQryGrupo.ParamByName('descricao').AsString := grupo.Descricao;
//    FDQryGrupo.ExecSQL;
//  finally
//    FDQryGrupo.Close;
//  end;
//end;

end.
