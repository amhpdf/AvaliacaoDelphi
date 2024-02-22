unit classe.produto;

interface

uses
  classe.grupo;

type
  TProduto = class
    private
      FId: Integer;
      FDescricao: string;
      FGrupo: TGrupo;
    public
      constructor Create;
      destructor Destroy; override;

      property Id: Integer read FId write Fid;
      property Descricao: string read FDescricao write FDescricao;
      property Grupo: TGrupo read FGrupo write FGrupo;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin
  inherited;

  FGrupo := TGrupo.Create;
end;

destructor TProduto.Destroy;
begin
  inherited Destroy;
end;

end.
