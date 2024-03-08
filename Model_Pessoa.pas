unit Model_Pessoa;

interface

uses
  Controller_Pessoa, DB, Database;

type
  TModelPessoa = class(TInterfacedObject)
   private
    fTipo: String;
    fControllerPessoa: TControllerPessoa;

   public
    constructor Create;
    procedure Incluir(sTipo: String);
    procedure Consultar;
    procedure Cancelar;
    procedure Editar;
    procedure Gravar;
    procedure Vincular(iId: Integer);
  end;

implementation

constructor TModelPessoa.Create;
begin
  inherited;
  fControllerPessoa := TControllerPessoa.Create;

end;

procedure TModelPessoa.Incluir(sTipo: String);
begin
  fControllerPessoa.Incluir(sTipo);
end;

procedure TModelPessoa.Consultar;
begin
  fControllerPessoa.Consultar;
end;

procedure TModelPessoa.Cancelar;
begin
  fControllerPessoa.Cancelar;
end;

procedure TModelPessoa.Editar;
begin
  fControllerPessoa.Editar;
end;

procedure TModelPessoa.Gravar;
begin
  fControllerPessoa.Gravar;
end;

procedure TModelPessoa.Vincular(iId: Integer);
begin
  fControllerPessoa.Vincular(iId);
end;

end.
