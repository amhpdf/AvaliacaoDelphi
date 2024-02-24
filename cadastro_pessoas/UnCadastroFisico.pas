unit UnCadastroFisico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Data.DB;

type
  TFormCadastroFisico = class(TForm)
    Panel1: TPanel;
    bbSair: TBitBtn;
    bbGravar: TBitBtn;
    GroupFisica: TGroupBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    cbCNPJ: TDBComboBox;
    Vinculo: TLabel;
    procedure bbGravarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Tipo:String;
  end;

var
  FormCadastroFisico: TFormCadastroFisico;


implementation

{$R *.dfm}

uses UnDM, UnPrincipal;

procedure TFormCadastroFisico.bbGravarClick(Sender: TObject);
begin
    DM.FDQueryPessoaFisica.Post;

    ShowMessage('Pessoa Física gravado com sucesso!');
    FormCadastroFisico.Close;

end;

procedure TFormCadastroFisico.bbSairClick(Sender: TObject);
begin
    DM.FDQueryPessoaFisica.Cancel;
    Close;
end;

procedure TFormCadastroFisico.FormCreate(Sender: TObject);
begin
    DM.FDConnection.Connected := True;

    cbCNPJ.Items.Clear;

    DM.FDQueryExecuta.Close;
    DM.FDQueryExecuta.SQL.Clear;
    DM.FDQueryExecuta.SQL.Add('select PESSOA_JURIDICA_ID from PESSOA_JURIDICA');
    DM.FDQueryExecuta.Open;

    if not DM.FDQueryExecuta.IsEmpty
       then
           begin
                DM.FDQueryExecuta.First;
                while not DM.FDQueryExecuta.EoF do
                      begin
                           cbCNPJ.Items.Add(IntToStr(DM.FDQueryExecuta.fieldByName('PESSOA_JURIDICA_ID').asInteger));
                           DM.FDQueryExecuta.Next;
                      end;
           end;

end;

procedure TFormCadastroFisico.FormShow(Sender: TObject);
begin
  if Tipo = 'edit'
        then
            begin
                 StatusBar1.Panels[0].Text := 'Edição';

                 DM.FDQueryPessoaFisica.Open;
                 DM.FDQueryPessoaFisica.Edit;
            end
     else
         begin
              StatusBar1.Panels[0].Text := 'Inserção';
              DM.FDQueryPessoaFisica.Insert;

              if DM.FDQueryPessoaFisica.State in [dsEdit,dsInsert,dsBrowse] then DM.FDQueryPessoaFisica.ClearFields;

              DM.FDQueryPessoaFisica.Open;
         end;

end;

end.
