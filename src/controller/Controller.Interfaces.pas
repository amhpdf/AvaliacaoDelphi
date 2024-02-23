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

  IControllerPessoaJuridica = interface
    ['{DC5C0C7B-633F-4B84-B70B-1E3086CB299C}']
    function Id(AValue: Integer): IControllerPessoaJuridica overload;
    function Id: integer; overload;
    function Nome(AValue: string): IControllerPessoaJuridica overload;
    function Nome: string; overload;
    function CNPJ(AValue: string): IControllerPessoaJuridica overload;
    function CNPJ: string; overload;
    function Endereco(AValue: string): IControllerPessoaJuridica overload;
    function Endereco: string; overload;
    function Bairro(AValue: string): IControllerPessoaJuridica overload;
    function Bairro: string; overload;
    function Cidade(AValue: string): IControllerPessoaJuridica overload;
    function Cidade: string; overload;
    function UF(AValue: string): IControllerPessoaJuridica overload;
    function UF: string; overload;
    function Cep(AValue: string): IControllerPessoaJuridica overload;
    function Cep: string; overload;
    function EMail(AValue: string): IControllerPessoaJuridica overload;
    function Email: string; overload;
    function Telefone(AValue: string): IControllerPessoaJuridica overload;
    function Telefone: string; overload;
    function Celular(AValue: string): IControllerPessoaJuridica overload;
    function Celular: string; overload;

    function BuscaPorId(AId: Integer): Boolean;
    function ListarTodos: Boolean;
    function Salvar: IControllerPessoaJuridica;
  end;

implementation

end.
