unit Model.Vinculo;

interface

type
  TGrupo = class
    private
      FIdPessoaFisica: Integer;
      FIdPessoaJuridica: Integer;
    public
      constructor Create;
      destructor Destroy; override;
  end;

implementation

{ TGrupo }

constructor TGrupo.Create;
begin
  inherited;
end;

destructor TGrupo.Destroy;
begin
  inherited Destroy;
end;

end.
