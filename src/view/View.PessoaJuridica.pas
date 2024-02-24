unit View.PessoaJuridica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Modelo,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB,
  Controller.Interfaces,
  Controller.Vinculo,
  Controller.PessoaJuridica,
  Controller.PessoaFisica;

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
    dsPessoaFisica: TDataSource;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure pgcMainChange(Sender: TObject);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnAdicionarVinculoClick(Sender: TObject);
    procedure edtIdPessoaFisicaExit(Sender: TObject);
    procedure dsVinculoDataChange(Sender: TObject; Field: TField);
    procedure btnRemoverVinculoClick(Sender: TObject);
  private
    { Private declarations }
    FControllerPessoaJuridica : IControllerPessoaJuridica;
    FControllerVinculo        : IControllerVinculo;
    FControllerPessoaFisica   : IControllerPessoaFisica;
    procedure HabilitarEditsVinculo(AValue: Boolean);
    procedure ConfigurarGrid;
    procedure ConfigurarGridVinculo;
  public
    { Public declarations }
  end;

var
  FrmCadastroPessoaJuridica: TFrmCadastroPessoaJuridica;

implementation

uses
  View.Listagem;

{$R *.dfm}

procedure TFrmCadastroPessoaJuridica.ConfigurarGrid;
begin
  dbgConsultar.Columns.Items[0].Width := 20;
  dbgConsultar.Columns.Items[1].Width := 160;
  dbgConsultar.Columns.Items[2].Width := 80;
  dbgConsultar.Columns.Items[3].Width := 200;
  dbgConsultar.Columns.Items[4].Width := 100;
  dbgConsultar.Columns.Items[5].Width := 100;
  dbgConsultar.Columns.Items[6].Width := 20;
  dbgConsultar.Columns.Items[7].Width := 40;
  dbgConsultar.Columns.Items[8].Width := 100;
  dbgConsultar.Columns.Items[9].Width := 80;
  dbgConsultar.Columns.Items[10].Width := 80;
end;

procedure TFrmCadastroPessoaJuridica.ConfigurarGridVinculo;
begin
  dbgVinculo.Columns.Items[0].Width := 80;
  dbgVinculo.Columns.Items[1].Width := 160;
  dbgVinculo.Columns.Items[2].Width := 80;
  dbgVinculo.Columns.Items[3].Width := 160;
end;

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

  ConfigurarGrid;

  inherited;
end;

procedure TFrmCadastroPessoaJuridica.FormCreate(Sender: TObject);
begin
  FControllerPessoaFisica := TControllerPessoaFisica.New(dsPessoaFisica);

  FControllerPessoaJuridica := TControllerPessoaJuridica.New(dsConsultar);
  FControllerPessoaJuridica.ListarTodos;

  FControllerVinculo := TControllerVinculo.New(dsVinculo);
  FControllerVinculo
    .ListarPorPessoaJuridica(dsConsultar.DataSet.FieldByName('id').AsInteger);

  ConfigurarGrid;
  ConfigurarGridVinculo;
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
  edtIdPessoaJuridica.Enabled   := AValue;
  edtNomePessoaJuridica.Enabled := AValue;
  edtIdPessoaFisica.Enabled     := not AValue;
  edtNomePessoaFisica.Enabled   := AValue;
end;

procedure TFrmCadastroPessoaJuridica.dsConsultarDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  edtIdPessoaJuridica.Text   := dsConsultar.DataSet.FieldByName('id').AsString;
  edtNomePessoaJuridica.Text := dsConsultar.DataSet.FieldByName('nome').AsString;

  edtId.Text       := dsConsultar.DataSet.FieldByName('id').AsString;
  edtNome.Text     := dsConsultar.DataSet.FieldByName('nome').AsString;
  edtCNPJ.Text     := dsConsultar.DataSet.FieldByName('cnpj').AsString;
  edtEndereco.Text := dsConsultar.DataSet.FieldByName('endereco').AsString;
  edtBairro.Text   := dsConsultar.DataSet.FieldByName('bairro').AsString;
  edtCidade.Text   := dsConsultar.DataSet.FieldByName('cidade').AsString;
  edtUF.Text       := dsConsultar.DataSet.FieldByName('uf').AsString;
  edtCep.Text      := dsConsultar.DataSet.FieldByName('cep').AsString;
  edtEmail.Text    := dsConsultar.DataSet.FieldByName('email').AsString;
  edtTelefone.Text := dsConsultar.DataSet.FieldByName('telefone').AsString;
  edtCelular.Text  := dsConsultar.DataSet.FieldByName('celular').AsString;
end;

procedure TFrmCadastroPessoaJuridica.dsVinculoDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if pgcMain.ActivePage = tsVinculo then
  begin
    btnRemoverVinculo.Enabled := not dsVinculo.DataSet.IsEmpty;
    edtIdPessoaFisica.Text    := dsVinculo.DataSet.FieldByName('id_pfisica').AsString;
    edtNomePessoaFisica.Text  := dsVinculo.DataSet.FieldByName('pessoa_fisica').AsString;
  end;
end;

procedure TFrmCadastroPessoaJuridica.edtIdPessoaFisicaExit(Sender: TObject);
begin
  inherited;

  if (StrToIntDef(edtIdPessoaFisica.Text, -1) > 0) then
    FControllerPessoaFisica
      .BuscaPorId(StrToIntDef(edtIdPessoaFisica.Text, 0));
end;

procedure TFrmCadastroPessoaJuridica.btnAdicionarVinculoClick(Sender: TObject);
begin
  inherited;

  FControllerVinculo.ListarPorPessoaJuridica(StrToIntDef(edtIdPessoaFisica.Text, 0));

  if not dsVinculo.DataSet.IsEmpty then
  begin
    ShowMessage('Vinculo já cadastrado.');
    Exit
  end;

  FControllerVinculo
    .IdPessoaJuridica(StrToIntDef(edtIdPessoaJuridica.Text,0))
    .IdPessoaFisica(StrToIntDef(edtIdPessoaFisica.Text, 0))
    .Adicionar
    .ListarPorPessoaJuridica(StrToIntDef(edtIdPessoaJuridica.Text,0));

  ConfigurarGridVinculo;
end;

procedure TFrmCadastroPessoaJuridica.btnRemoverVinculoClick(Sender: TObject);
begin
  inherited;

  FControllerVinculo.ListarPorPessoaJuridica(StrToIntDef(edtIdPessoaFisica.Text, 0));

  FControllerVinculo
    .IdPessoaJuridica(StrToIntDef(edtIdPessoaJuridica.Text,0))
    .IdPessoaFisica(StrToIntDef(edtIdPessoaFisica.Text, 0))
    .Remover
    .ListarPorPessoaJuridica(StrToIntDef(edtIdPessoaJuridica.Text,0));

  ConfigurarGridVinculo;
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
