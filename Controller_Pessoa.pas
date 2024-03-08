unit Controller_Pessoa;

interface

uses
  Database, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.DB;

type
TControllerPessoa = class(TInterfacedObject)

   private
    fControllerPessoa: TControllerPessoa;
    procedure Conexao;

   public
    qryAux: TFDQuery;
    fConexao: TFDConnection;
    dsConexao: TDataSource;

    constructor Create;
    procedure Incluir(sTipo: String);
    procedure Consultar;
    procedure Cancelar;
    procedure Editar;
    procedure Gravar;
    procedure Vincular(iId: Integer);
  end;

implementation

constructor TControllerPessoa.Create;
begin
  inherited;
end;

procedure TControllerPessoa.Conexao;
begin
  fConexao := TFDConnection.Create(nil);
  fConexao.Params.Database := 'C:\Banco\cadastro.fdb';
  fConexao.Params.DriverID := 'FB';
  fConexao.Params.UserName := 'SYSDBA';
  fConexao.Params.Password := 'masterkey';
  fConexao.LoginPrompt := False;

  qryAux := TFDQuery.Create(nil);
  qryAux.Connection := fConexao;
  dsConexao := TDataSource.Create(nil);
  dsConexao.DataSet := TDataSet(qryAux);
end;

procedure TControllerPessoa.Incluir(sTipo: String);
begin
  Database.dsPrint.qryCadastro.Append;

  Conexao;

  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add('select gen_id(GEN_PESSOA_ID, 1) as ID from rdb$database');
  qryAux.Open;
  Database.dsPrint.qryCadastro.FieldByName('ID').AsInteger := qryAux.FieldByName('ID').AsInteger;
  Database.dsPrint.qryCadastro.FieldByName('TIPO').AsString := sTipo;

  qryAux.Destroy;
  dsConexao.Destroy;
  fConexao.Destroy;
end;

procedure TControllerPessoa.Consultar;
begin
  Database.dsPrint.qryCadastro.Refresh;
end;

procedure TControllerPessoa.Cancelar;
begin
  Database.dsPrint.qryCadastro.CancelUpdates;
  Database.dsPrint.qryCadastro.Refresh;
end;

procedure TControllerPessoa.Editar;
begin
  Database.dsPrint.qryCadastro.Edit;
end;

procedure TControllerPessoa.Gravar;
begin
  Database.dsPrint.qryCadastro.ApplyUpdates;
end;

procedure TControllerPessoa.Vincular(iId: Integer);
begin
  Conexao;

  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add('select list(p.id) from pessoa p inner join pessoa_vinculo pv on p.id = pv.id_pfisico and pv.id_pjuridico = :id');
  qryAux.ParamByName('id').AsInteger := Database.dsPrint.qryCadastro.FieldByName('id').AsInteger;
  qryAux.Open;

  if Pos(iId.ToString, qryAux.FieldByName('list').AsString) <> 0 then
    raise Exception.Create('Esta pessoa já está vinculada');

  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add('insert into PESSOA_VINCULO (id_pfisico, id_pjuridico) VALUES (:id_f, :id_j)');
  qryAux.ParamByName('id_f').AsInteger := iId;
  qryAux.ParamByName('id_j').AsInteger := Database.dsPrint.qryCadastro.FieldByName('id').AsInteger;
  qryAux.ExecSQL;

  qryAux.Destroy;
  dsConexao.Destroy;
  fConexao.Destroy;

   Database.dsPrint.qryVinculo.Refresh;
end;

end.
