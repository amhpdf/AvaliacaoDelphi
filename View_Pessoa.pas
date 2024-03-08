unit View_Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Tabs, Vcl.DockTabSet, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.Buttons, Vcl.Menus, Database, Model_Pessoa, RLReport;

type

  TEstado = (eIncluir, eEditar, eConsultar);

  TfPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    pgcPrincipal: TPageControl;
    tsOperacao: TTabSheet;
    pnlOperacoes: TPanel;
    btnIncluir: TButton;
    btnCancelar: TButton;
    btnEditar: TButton;
    btnGravar: TButton;
    btnImprimir: TButton;
    pnlGrid: TPanel;
    gbListagem: TGroupBox;
    gbDados: TGroupBox;
    grdPessoa: TDBGrid;
    lbNome: TLabel;
    dbeNome: TDBEdit;
    lbCPFCNPJ: TLabel;
    dbeCPFCNPJ: TDBEdit;
    lbTipo: TLabel;
    pmIncluir: TPopupMenu;
    PessoaFisica: TMenuItem;
    PessoaJurdica: TMenuItem;
    dbeTipo: TDBEdit;
    gbDadosJuridica: TGroupBox;
    lbEndereco: TLabel;
    lbCEP: TLabel;
    lbUF: TLabel;
    lbCidade: TLabel;
    lbBairro: TLabel;
    lbEmail: TLabel;
    lbTelefone: TLabel;
    lbCelular: TLabel;
    dbeEndereco: TDBEdit;
    dbeCep: TDBEdit;
    dbeUF: TDBEdit;
    dbeCidade: TDBEdit;
    dbeBairro: TDBEdit;
    dbeEmail: TDBEdit;
    dbeTelefone: TDBEdit;
    dbeCelular: TDBEdit;
    rlrPrint: TRLReport;
    pmPrint: TPopupMenu;
    ListadePFsicas1: TMenuItem;
    ListadePJurdicas1: TMenuItem;
    RLBand1: TRLBand;
    trlTitulo: TRLLabel;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    trlCPF_CNPJ: TRLLabel;
    RLLabel1: TRLLabel;
    tsVinculo: TTabSheet;
    gbVinculo: TGroupBox;
    DBText1: TDBText;
    lblVinculo: TLabel;
    DBGrid1: TDBGrid;
    btnAdicionarVinculo: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure PessoaFisicaClick(Sender: TObject);
    procedure PessoaJurdicaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure grdPessoaCellClick(Column: TColumn);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ListadePFsicas1Click(Sender: TObject);
    procedure ListadePJurdicas1Click(Sender: TObject);
    procedure btnAdicionarVinculoClick(Sender: TObject);
  private
    fEstado: TEstado;
    fModel_Pessoa: TModelPessoa;
    procedure IncluirPessoa(sTipo: String);
    procedure ConfigurarCampos(sTipo: String);
    procedure Consultar;
    procedure VerificarCamposObrigadorios;
  public
    { Public declarations }
  end;

  const
    FISICA   = 'Física';
    JURIDICA = 'Jurídica';
var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

procedure TfPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  fEstado := eConsultar;
  fModel_Pessoa := TModelPessoa.Create;
end;

procedure TfPrincipal.FormShow(Sender: TObject);
begin
    Consultar;
     pgcPrincipal.ActivePage := tsOperacao;
end;

procedure TfPrincipal.IncluirPessoa(sTipo: String);
begin
  fEstado := eIncluir;
  fModel_Pessoa.Incluir(sTipo);
  ConfigurarCampos(sTipo);
  dbeNome.SetFocus;
end;

procedure TfPrincipal.ListadePFsicas1Click(Sender: TObject);
begin
  rlrPrint.Caption    := 'Lista de Pessoas Físicas';
  trlTitulo.Caption   := 'Lista de Pessoas Físicas';
  trlCPF_CNPJ.Caption := 'CPF';
  Database.dsPrint.qryPrint.Close;
  Database.dsPrint.qryPrint.SQL.Clear;
  Database.dsPrint.qryPrint.SQL.Add('SELECT p.nome, p.cpf_cnpj from pessoa p WHERE p.tipo = ''Física''');
  Database.dsPrint.qryPrint.Open;
  rlrPrint.Preview();
end;

procedure TfPrincipal.ListadePJurdicas1Click(Sender: TObject);
begin
  rlrPrint.Caption    := 'Lista de Pessoas Jurídicas';
  trlTitulo.Caption   := 'Lista de Pessoas Jurídicas';
  trlCPF_CNPJ.Caption := 'CNPJ';
  Database.dsPrint.qryPrint.Close;
  Database.dsPrint.qryPrint.SQL.Clear;
  Database.dsPrint.qryPrint.SQL.Add('SELECT p.nome, p.cpf_cnpj from pessoa p WHERE p.tipo = ''Jurídica''');
  Database.dsPrint.qryPrint.Open;
  rlrPrint.Preview();
end;

procedure TfPrincipal.PessoaFisicaClick(Sender: TObject);
begin
  IncluirPessoa(FISICA);
end;

procedure TfPrincipal.PessoaJurdicaClick(Sender: TObject);
begin
  IncluirPessoa(JURIDICA);
end;

procedure TfPrincipal.Consultar;
begin
  fModel_Pessoa.Consultar;
  ConfigurarCampos(Database.dsPrint.qryCadastro.FieldByName('TIPO').AsString);
end;

procedure TfPrincipal.grdPessoaCellClick(Column: TColumn);
begin
  ConfigurarCampos(Database.dsPrint.qryCadastro.FieldByName('TIPO').AsString);
  Database.dsPrint.qryVinculo.Close;
  Database.dsPrint.qryVinculo.ParamByName('ID').AsInteger := Database.dsPrint.qryCadastro.FieldByName('ID').AsInteger;
  Database.dsPrint.qryVinculo.Open;
end;

procedure TfPrincipal.btnAdicionarVinculoClick(Sender: TObject);
begin
  if Database.dsPrint.qryCombo.FieldByName('ID').AsInteger <> Database.dsPrint.qryCadastro.FieldByName('ID').AsInteger then
    fModel_Pessoa.Vincular(Database.dsPrint.qryCombo.FieldByName('ID').AsInteger);
end;

procedure TfPrincipal.btnCancelarClick(Sender: TObject);
begin
   fModel_Pessoa.Cancelar;
   Consultar;
   fEstado := eConsultar;
   ConfigurarCampos(Database.dsPrint.qryCadastro.FieldByName('TIPO').AsString);
end;

procedure TfPrincipal.btnEditarClick(Sender: TObject);
begin
  Consultar;
  fEstado := eEditar;
  fModel_Pessoa.Editar;
  ConfigurarCampos(Database.dsPrint.qryCadastro.FieldByName('TIPO').Value);
  dbeNome.SetFocus;
end;

procedure TfPrincipal.btnGravarClick(Sender: TObject);
begin
  VerificarCamposObrigadorios;
  fModel_Pessoa.Gravar;
  fEstado := eConsultar;
  ConfigurarCampos(Database.dsPrint.qryCadastro.FieldByName('TIPO').Value);
end;

procedure TfPrincipal.btnImprimirClick(Sender: TObject);
begin
   pmPrint.Popup(mouse.CursorPos.X, mouse.CursorPos.Y);
end;

procedure TfPrincipal.btnIncluirClick(Sender: TObject);
begin
   pmIncluir.Popup(mouse.CursorPos.X, mouse.CursorPos.Y);
end;

procedure TfPrincipal.btnIncluirContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
   pmIncluir.Popup(mouse.CursorPos.X, mouse.CursorPos.Y);
end;

procedure TfPrincipal.ConfigurarCampos(sTipo: String);
begin
  btnIncluir.Enabled      := fEstado = eConsultar;
  btnCancelar.Enabled     := not (fEstado = eConsultar);
  btnEditar.Enabled       := fEstado = eConsultar;
  btnGravar.Enabled       := not (fEstado = eConsultar);
  btnImprimir.Enabled     := fEstado = eConsultar;
  gbListagem.Enabled      := fEstado = eConsultar;
  gbDados.Enabled         := not (fEstado = eConsultar);
  gbDadosJuridica.Visible := sTipo = JURIDICA;
  btnAdicionarVinculo.Enabled := (sTipo = JURIDICA) and not (fEstado = eConsultar);
end;

procedure TfPrincipal.VerificarCamposObrigadorios;
var
  sCampos: String;
begin
  sCampos := '';

  if Database.dsPrint.qryCadastro.FieldByName('Tipo').AsString = FISICA then
  begin
    if Database.dsPrint.qryCadastro.FieldByName('NOME').AsString = '' then
      sCampos := 'Nome, ';

    if Database.dsPrint.qryCadastro.FieldByName('CPF_CNPJ').AsString = '' then
      sCampos := sCampos + 'CPF';
  end
  else
  begin
    if Database.dsPrint.qryCadastro.FieldByName('NOME').AsString = '' then
      sCampos := 'Nome, ';

    if Database.dsPrint.qryCadastro.FieldByName('CPF_CNPJ').AsString = '' then
      sCampos := sCampos + 'CNPJ, ';  

    if Database.dsPrint.qryCadastro.FieldByName('CEP').AsString = '' then
      sCampos := sCampos + 'CEP, ';  

    if Database.dsPrint.qryCadastro.FieldByName('UF').AsString = '' then
      sCampos := sCampos + 'UF, '; 
      
    if Database.dsPrint.qryCadastro.FieldByName('CIDADE').AsString = '' then
      sCampos := sCampos + 'Cidade, ';   

    if Database.dsPrint.qryCadastro.FieldByName('BAIRRO').AsString = '' then
      sCampos := sCampos + 'Bairro, ';

    if Database.dsPrint.qryCadastro.FieldByName('ENDERECO').AsString = '' then
      sCampos := sCampos + 'Endereço, '; 

    if Database.dsPrint.qryCadastro.FieldByName('TELEFONE').AsString = '' then
      sCampos := sCampos + 'Telefone, '; 

    if Database.dsPrint.qryCadastro.FieldByName('CELULAR').AsString = '' then
      sCampos := sCampos + 'Celular, ';

    if Database.dsPrint.qryCadastro.FieldByName('EMAIL').AsString = '' then
      sCampos := sCampos + 'E-mail, ';
  end;

  if sCampos <> '' then
    raise Exception.Create('Os campos ' + sCampos + 'são de preenchimento obrigatório');
end;

end.
