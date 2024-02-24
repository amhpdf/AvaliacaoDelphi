unit Dao.Interfaces;

interface

uses
  Model.Interfaces;

type
  IDAOPessoaFisica = interface
    ['{4BB2CDB8-4044-4A71-B545-F9564942A6BB}']
    function BuscarPorId(AValue: Integer): IDAOPessoaFisica;
    function Salvar(APessoaFisica: IModelPessoaFisica): IDAOPessoaFisica;
    function ListarTodos: IDAOPessoaFisica;
    function Alterar(APessoaFisica: IModelPessoaFisica): IDAOPessoaFisica;
    function Excluir(AValue: Integer): IDAOPessoaFisica;
  end;

  IDAOPessoaJuridica = interface
    ['{839A1ED7-912F-4158-8104-840C0EE0FFC8}']
    function BuscarPorId(AValue: Integer): IDAOPessoaJuridica;
    function Salvar(APessoaJuridica: IModelPessoaJuridica): IDAOPessoaJuridica;
    function ListarTodos: IDAOPessoaJuridica;
    function Alterar(APessoaJuridica: IModelPessoaJuridica): IDAOPEssoaJuridica;
    function Excluir(AValue: Integer): IDAOPessoaJuridica;
  end;

  IDAOVinculo = interface
    ['{C0E14600-134D-4D61-AD24-6EF3EBC39916}']
    function Adicionar(AVinculo: IModelVinculo): IDAOVinculo;
    function Remover(AVinculo: IModelVinculo): IDAOVinculo;
    function ListarPorPessoaJuridica(AValue: Integer): IDAOVinculo;
  end;
implementation

end.
