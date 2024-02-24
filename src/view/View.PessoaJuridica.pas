unit View.PessoaJuridica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Modelo,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB,
  Controller.Interfaces, Controller.PessoaJuridica;

type
  TFrmCadastroPessoaJuridica = class(TFrmCadastroPadrao)
    lblId: TLabel;
    lblNome: TLabel;
    lblCNPJ: TLabel;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    lblCep: TLabel;
    lblEmail: TLabel;
    lblTelefone: TLabel;
    lblCelular: TLabel;
    edtID: TEdit;
    edtNome: TEdit;
    edtCNPJ: TEdit;
    edtEndereco: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtUF: TEdit;
    edtCep: TEdit;
    edtEmail: TEdit;
    edtTelefone: TEdit;
    edtCelular: TEdit;
    tsVinculo: TTabSheet;
    pnlVinculo: TPanel;
    pnlAdicionarVinculo: TPanel;
    Label1: TLabel;
    edtIdPessoaJuridica: TEdit;
    btnAdicionarVinculo: TButton;
    dbgVinculo: TDBGrid;
    pnlNavegadorVinculo: TPanel;
    dbnGridVinculo: TDBNavigator;
    edtNomePessoaJuridica: TEdit;
    edtIdPessoaFisica: TEdit;
    Label2: TLabel;
    edtNomePessoaFisica: TEdit;
    dsVinculo: TDataSource;
    btnRemoverVinculo: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure pgcMainChange(Sender: TObject);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FControllerPessoaJuridica: IControllerPessoaJuridica;
    procedure HabilitarEditsVinculo(AValue: Boolean);
  public
    { Public declarations }
  end;

var
  FrmCadastroPessoaJuridica: TFrmCadastroPessoaJuridica;

implementation

uses
  View.Listagem;

{$R *.dfm}

procedure TFrmCadastroPessoaJuridica.btnIncluirClick(Sender: TObject);
begin
  inherited;

  edtID.Enabled := False;
  edtNome.SetFocus;
end;

procedure TFrmCadastroPessoaJuridica.btnSalvarClick(Sender: TObject);
begin
  if FOperacao = opIncluir then
    FControllerPessoaJuridica
      .Id(0)
      .Nome(edtNome.Text)
      .CNPJ(edtCNPJ.Text)
      .Endereco(edtEndereco.Text)
      .Bairro(edtBairro.Text)
      .Cidade(edtCidade.Text)
      .UF(edtUF.Text)
      .Cep(edtCep.Text)
      .EMail(edtEmail.Text)
      .Telefone(edtTelefone.Text)
      .Celular(edtCelular.Text)
      .Salvar
      .ListarTodos
  else
    FControllerPessoaJuridica
      .Id(0)
      .Nome(edtNome.Text)
      .CNPJ(edtCNPJ.Text)
      .Endereco(edtEndereco.Text)
      .Bairro(edtBairro.Text)
      .Cidade(edtCidade.Text)
      .UF(edtUF.Text)
      .Cep(edtCep.Text)
      .EMail(edtEmail.Text)
      .Telefone(edtTelefone.Text)
      .Celular(edtCelular.Text)
      .Alterar
      .ListarTodos;

  inherited;
end;

procedure TFrmCadastroPessoaJuridica.FormCreate(Sender: TObject);
begin
  FControllerPessoaJuridica := TControllerPessoaJuridica.New(dsConsultar);
  FControllerPessoaJuridica.ListarTodos;
end;

procedure TFrmCadastroPessoaJuridica.pgcMainChange(Sender: TObject);
begin
  inherited;

  if (pgcMain.ActivePage = tsVinculo) then
  begin
    HabilitarEditsVinculo(False);
    edtIdPessoaFisica.SetFocus;
  end;
end;

procedure TFrmCadastroPessoaJuridica.HabilitarEditsVinculo(AValue: Boolean);
begin
  edtIdPessoaJuridica.Enabled := AValue;
  edtNomePessoaJuridica.Enabled := AValue;
  edtIdPessoaFisica.Enabled := not AValue;
  edtNomePessoaFisica.Enabled := AValue;
end;

procedure TFrmCadastroPessoaJuridica.dsConsultarDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtIdPessoaJuridica.Text := dsConsultar.DataSet.FieldByName('id').AsString;
  edtNomePessoaJuridica.Text := dsConsultar.DataSet.FieldByName('nome').AsString;

  edtId.Text := dsConsultar.DataSet.FieldByName('id').AsString;
  edtNome.Text := dsConsultar.DataSet.FieldByName('nome').AsString;
  edtCNPJ.Text := dsConsultar.DataSet.FieldByName('cnpj').AsString;
  edtEndereco.Text := dsConsultar.DataSet.FieldByName('endereco').AsString;
  edtBairro.Text := dsConsultar.DataSet.FieldByName('bairro').AsString;
  edtCidade.Text := dsConsultar.DataSet.FieldByName('cidade').AsString;
  edtUF.Text := dsConsultar.DataSet.FieldByName('uf').AsString;
  edtCep.Text := dsConsultar.DataSet.FieldByName('cep').AsString;
  edtEmail.Text := dsConsultar.DataSet.FieldByName('email').AsString;
  edtTelefone.Text := dsConsultar.DataSet.FieldByName('telefone').AsString;
  edtCelular.Text := dsConsultar.DataSet.FieldByName('celular').AsString;
end;

procedure TFrmCadastroPessoaJuridica.btnImprimirClick(Sender: TObject);
var
  FrmListagem: TFrmListagem;
begin
  FrmListagem := TFrmListagem.Create(nil);

  try
    FrmListagem.qrlTitulo.Caption := 'Listagem de Pessoas Jurídicas';
    FrmListagem.qrListagem.DataSet := dsConsultar.DataSet;
    FrmListagem.qrlTipoDoc.Caption := 'CNPJ';
    FrmListagem.qrdbtDocumento.DataSet := dsConsultar.DataSet;
    FrmListagem.qrdbtDocumento.DataField := 'CNPJ';
    FrmListagem.qrdbtNome.DataSet := dsConsultar.DataSet;
    FrmListagem.qrdbtNome.DataField := 'NOME';

    FrmListagem.qrListagem.Preview;
  finally
    if FrmListagem <> nil then
      FreeAndNil(FrmListagem);
  end;
end;

end.
