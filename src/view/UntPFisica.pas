unit UntPFisica;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.UITypes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntModelo, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    procedure btnSalvarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
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
//var
//  LCliente: TCliente;
//  CCliente: TClienteController;
begin
//  LCliente := TCliente.Create;
//  CCliente := TClienteController.Create(dsConsultaCliente); // no constructor dessa camarada tu passa um datasource...
//
//  try
//    LCliente.Nome := edtNome.Text;
//    LCliente.CPF := edtCPF.Text;
//    LCliente.Telefone := edtTelefone.Text;
//
//    try
//      CCliente.Salvar(LCliente);
//    except on E: Exception do
//      MessageDlg('Erro ao salvar o cliente', mtError, [mbOK], 0);
//    end;
//  finally
//    FreeAndNil(LCliente);
//    FreeAndNil(CCliente);
//  end;

  inherited;
end;

procedure TFrmCadastroCliente.FormCreate(Sender: TObject);
//var
//  LCliente: TCliente;
//  CCliente: TClienteController;
begin
//  LCliente := TCliente.Create;
//  CCliente := TClienteController.Create(dsConsultaCliente);
//
//  try
//    dsConsultaCliente.DataSet := CCliente.ListarTodosDS;
//  finally
//    FreeAndNil(LCliente);
//    FreeAndNil(CCliente);
//  end;

  inherited;
end;

end.
