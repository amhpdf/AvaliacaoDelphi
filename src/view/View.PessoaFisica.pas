unit View.PessoaFisica;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.UITypes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Modelo, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Controller.Interfaces, Controller.PessoaFisica;

type
  TFrmCadastroCliente = class(TFrmCadastroPadrao)
    lblDesc: TLabel;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    lblCPF: TLabel;
    edtCPF: TEdit;
    edtTelefone: TEdit;
    lblTelefone: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    FControllerPessoaFisica: IControllerPessoaFisica;
  public
    { Public declarations }
  end;

var
  FrmCadastroCliente: TFrmCadastroCliente;

implementation

{$R *.dfm}


procedure TFrmCadastroCliente.btnIncluirClick(Sender: TObject);
begin
  inherited;

  pgcMain.ActivePageIndex := 1;
  edtNome.SetFocus;
end;

procedure TFrmCadastroCliente.btnSalvarClick(Sender: TObject);
begin
  FControllerPessoaFisica
    .Id(0)
    .Nome(edtNome.Text)
    .CPF(edtCPF.Text)
    .Salvar;

  inherited;
end;

procedure TFrmCadastroCliente.FormCreate(Sender: TObject);
begin
  FControllerPessoaFisica := TControllerPessoaFisica.New(dsConsultar);
  FControllerPessoaFisica.ListarTodos;
end;

end.
