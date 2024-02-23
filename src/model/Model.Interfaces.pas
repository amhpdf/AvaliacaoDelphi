unit Model.Interfaces;

interface

type
  IModelPessoaFisica = interface
    ['{6BD57959-346E-420F-BAE7-E813B7B3F357}']
    function Id(AValue: Integer): IModelPessoaFisica overload;
    function Id: integer; overload;
    function Nome(AValue: string): IModelPessoaFisica overload;
    function Nome: string; overload;
    function CPF(AValue: string): IModelPessoaFisica overload;
    function CPF: string; overload;

    function Salvar: IModelPessoaFisica;
    function ListarTodos: IModelPessoaFisica;
    function BuscarPorId(AValue: integer) : IModelPessoaFisica;
    function Alterar: IModelPessoaFisica;
    function Excluir(AValue: Integer): IModelPessoaFisica;
  end;

  IModelPessoaJuridica = interface
    ['{2A5AA1BA-0CDE-4668-8EE9-DA79BFC868CF}']
    function Id(AValue: Integer): IModelPessoaJuridica overload;
    function Id: integer; overload;
    function Nome(AValue: string): IModelPessoaJuridica overload;
    function Nome: string; overload;
    function CNPJ(AValue: string): IModelPessoaJuridica overload;
    function CNPJ: string; overload;
    function Endereco(AValue: string): IModelPessoaJuridica overload;
    function Endereco: string; overload;
    function Bairro(AValue: string): IModelPessoaJuridica overload;
    function Bairro: string; overload;
    function Cidade(AValue: string): IModelPessoaJuridica overload;
    function Cidade: string; overload;
    function UF(AValue: string): IModelPessoaJuridica overload;
    function UF: string; overload;
    function Cep(AValue: string): IModelPessoaJuridica overload;
    function Cep: string; overload;
    function EMail(AValue: string): IModelPessoaJuridica overload;
    function Email: string; overload;
    function Telefone(AValue: string): IModelPessoaJuridica overload;
    function Telefone: string; overload;
    function Celular(AValue: string): IModelPessoaJuridica overload;
    function Celular: string; overload;

    function Salvar: IModelPessoaJuridica;
    function ListarTodos: IModelPessoaJuridica;
    function BuscarPorId(AValue: integer) : IModelPessoaJuridica;
    function Alterar: IModelPessoaJuridica;
    function Excluir(AValue: Integer): IModelPessoaJuridica;
  end;

implementation

end.
