unit Controller.PessoaJuridica;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client;

type
  TFornecedorController = class
    private

    public
      constructor Create;
      destructor Destroy; override;

  end;

implementation

{ TFornecedorController }

constructor TFornecedorController.Create;
begin

end;

destructor TFornecedorController.Destroy;
begin
  inherited Destroy;
end;

end.
