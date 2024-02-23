unit View.PessoaFisica;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.UITypes,

  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Modelo, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,

  Controller.Interfaces, Controller.PessoaFisica;

type
  TFrmCadastroPessoaFisica = class(TFrmCadastroPadrao)
    lblDesc: TLabel;
    lblCodigo: TLabel;
    edtId: TEdit;
    edtNome: TEdit;
    lblCPF: TLabel;
    edtCPF: TEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FControllerPessoaFisica: IControllerPessoaFisica;
  public
    { Public declarations }
  end;

var
  FrmCadastroPessoaFisica: TFrmCadastroPessoaFisica;

implementation

uses
  View.Listagem;

{$R *.dfm}


procedure TFrmCadastroPessoaFisica.FormCreate(Sender: TObject);
begin
  inherited;

  FControllerPessoaFisica := TControllerPessoaFisica.New(dsConsultar);
  FControllerPessoaFisica.ListarTodos;
end;

procedure TFrmCadastroPessoaFisica.btnPesquisarClick(Sender: TObject);
begin
  inherited;

  if StrToIntDef(edtPesquisar.Text, 0) > 0 then
    FControllerPessoaFisica
      .BuscaPorId(StrToIntDef(edtPesquisar.Text, 0))
  else
    FControllerPessoaFisica
      .ListarTodos;
end;

procedure TFrmCadastroPessoaFisica.btnIncluirClick(Sender: TObject);
begin
  inherited;

  edtId.Enabled := False;
  edtNome.SetFocus;
end;

procedure TFrmCadastroPessoaFisica.btnAlterarClick(Sender: TObject);
begin
  inherited;

  edtId.Enabled := False;
  edtNome.SetFocus;
end;

procedure TFrmCadastroPessoaFisica.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Exclusão' , 'Atenção !!!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = mrYes then
  begin
    FControllerPessoaFisica
      .Excluir(StrToIntDef(edtId.Text, 0))
      .ListarTodos;
  end;

  inherited;
end;

procedure TFrmCadastroPessoaFisica.btnSalvarClick(Sender: TObject);
begin
  if (FOperacao = opIncluir) then
    FControllerPessoaFisica
      .Id(StrToIntDef(edtId.Text, 0))
      .Nome(edtNome.Text)
      .CPF(edtCPF.Text)
      .Salvar
      .ListarTodos
  else
    FControllerPessoaFisica
      .Id(StrToIntDef(edtId.Text, 0))
      .Nome(edtNome.Text)
      .CPF(edtCPF.Text)
      .Alterar
      .ListarTodos;

  inherited;
end;

procedure TFrmCadastroPessoaFisica.dsConsultarDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  edtId.Text := dsConsultar.DataSet.FieldByName('id').AsString;
  edtNome.Text := dsConsultar.DataSet.FieldByName('nome').AsString;
  edtCPF.Text := dsConsultar.DataSet.FieldByName('cpf').AsString;
end;

procedure TFrmCadastroPessoaFisica.btnImprimirClick(Sender: TObject);
var
  FrmListagem: TFrmListagem;
begin
  FrmListagem := TFrmListagem.Create(nil);

  try
    FrmListagem.qrlTitulo.Caption := 'Listagem de Pessoas Física';
    FrmListagem.qrListagem.DataSet := dsConsultar.DataSet;
    FrmListagem.qrlTipoDoc.Caption := 'CPF';
    FrmListagem.qrdbtDocumento.DataSet := dsConsultar.DataSet;
    FrmListagem.qrdbtDocumento.DataField := 'CPF';
    FrmListagem.qrdbtNome.DataSet := dsConsultar.DataSet;
    FrmListagem.qrdbtNome.DataField := 'NOME';

    FrmListagem.qrListagem.Preview;
  finally
    if FrmListagem <> nil then
      FreeAndNil(FrmListagem);
  end;
end;

end.
