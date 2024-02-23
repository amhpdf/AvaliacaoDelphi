program Crud01;

uses
  Vcl.Forms,
  View.Principal in 'src\view\View.Principal.pas' {FrmPrincipal},
  View.Modelo in 'src\view\View.Modelo.pas' {FrmCadastroPadrao},
  Model.PessoaFisica in 'src\model\Model.PessoaFisica.pas',
  Model.PessoaJuridica in 'src\model\Model.PessoaJuridica.pas',
  Model.Vinculo in 'src\model\Model.Vinculo.pas',
  View.PessoaFisica in 'src\view\View.PessoaFisica.pas' {FrmCadastroCliente},
  UntConexao in 'src\dao\UntConexao.pas',
  Dao.PessoaFisica in 'src\dao\Dao.PessoaFisica.pas',
  Controller.PessoaFisica in 'src\controller\Controller.PessoaFisica.pas',
  Controller.PessoaJuridica in 'src\controller\Controller.PessoaJuridica.pas',
  Dao.PessoaJuridica in 'src\dao\Dao.PessoaJuridica.pas',
  Model.Interfaces in 'src\model\Model.Interfaces.pas',
  Controller.Interfaces in 'src\controller\Controller.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
