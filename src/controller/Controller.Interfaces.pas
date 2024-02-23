unit Controller.Interfaces;

interface

type
  IControllerPessoaFisica = interface
    ['{898C7EC0-09E1-4C12-B561-4FFC0603E0C4}']
    function Id(AValue: Integer): IControllerPessoaFisica overload;
    function Id: integer; overload;
    function Nome(AValue: string): IControllerPessoaFisica overload;
    function Nome: string; overload;
    function CPF(AValue: string): IControllerPessoaFisica overload;
    function CPF: string; overload;

    function BuscaPorId(AId: Integer): Boolean;
    function ListarTodos: Boolean;
    function Salvar: IControllerPessoaFisica;
  end;

implementation

end.
