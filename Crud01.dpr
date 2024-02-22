program Crud01;

uses
  Vcl.Forms,
  UntPrincipal in 'src\view\UntPrincipal.pas' {FrmPrincipal},
  UntModelo in 'src\view\UntModelo.pas' {FrmCadastroPadrao},
  Model.PessoaFisica in 'src\model\Model.PessoaFisica.pas',
  Model.PessoaJuridica in 'src\model\Model.PessoaJuridica.pas',
  Model.Vinculo in 'src\model\Model.Vinculo.pas',
  UntPFisica in 'src\view\UntPFisica.pas' {FrmCadastroCliente},
  UntConexao in 'src\dao\UntConexao.pas',
  dao.grupo in 'src\dao\dao.grupo.pas',
  controller.grupo in 'src\controller\controller.grupo.pas',
  dao.cliente in 'src\dao\dao.cliente.pas',
  controller.cliente in 'src\controller\controller.cliente.pas',
  controller.fornecedor in 'src\controller\controller.fornecedor.pas',
  dao.fornecedor in 'src\dao\dao.fornecedor.pas',
  Model.Interfaces in 'src\model\Model.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
