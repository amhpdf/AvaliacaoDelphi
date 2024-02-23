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
    function Salvar(ApessoaJuridica: IModelPessoaJuridica): IDAOPessoaJuridica;
    function ListarTodos: IDAOPessoaJuridica;
    function Alterar(ApessoaJuridica: IModelPessoaJuridica): IDAOPEssoaJuridica;
    function Excluir(AValue: Integer): IDAOPessoaJuridica;
  end;

implementation

end.
