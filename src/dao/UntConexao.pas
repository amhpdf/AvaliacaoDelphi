unit UntConexao;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
  TConexao = class
    private
      FConn: TFDConnection;
      FDPhysFBDriverLink: TFDPhysDriverLink;

      procedure ConfigurarConexao;
    public
      constructor Create;
      destructor Destroy; override;

      function GetConexao: TFDConnection;
  end;

  const
    BANCO_DADOS = 'C:\Desen\Delphi\iCarros\DB\icarros.fdb';

implementation

{ TConexao }

constructor TConexao.Create;
begin
  FConn := TFDConnection.Create(nil);

  ConfigurarConexao;

  inherited;
end;

destructor TConexao.Destroy;
begin
  inherited Destroy;
end;

procedure TConexao.ConfigurarConexao;
begin
  FConn.Params.Database := BANCO_DADOS;
  FConn.Params.DriverID := 'FB';
  FConn.Params.UserName := 'sysdba';
  FConn.Params.Password := 'masterkey';
  FConn.LoginPrompt := False;
end;

function TConexao.GetConexao: TFDConnection;
begin
  Result := FConn;
end;

end.
