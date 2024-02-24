unit UnCadastroJuridico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormCadastroJuridico = class(TForm)
    GroupFisica: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    bbSair: TBitBtn;
    bbGravar: TBitBtn;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure bbGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    Tipo:String;
  end;

var
  FormCadastroJuridico: TFormCadastroJuridico;

implementation

{$R *.dfm}

uses UnDM;

procedure TFormCadastroJuridico.bbGravarClick(Sender: TObject);
begin
    DM.FDQueryPessoaJuridica.Post;

    ShowMessage('Pessoa Jurídica gravado com sucesso!');
    FormCadastroJuridico.Close;
end;

procedure TFormCadastroJuridico.bbSairClick(Sender: TObject);
begin
    DM.FDQueryPessoaJuridica.Cancel;
    Close;
end;

procedure TFormCadastroJuridico.FormCreate(Sender: TObject);
begin
    DM.FDConnection.Connected := True;
    DM.FDQueryPessoaJuridica.Open;
end;

procedure TFormCadastroJuridico.FormShow(Sender: TObject);
begin
  if Tipo = 'edit'
        then
            begin
                 StatusBar1.Panels[0].Text := 'Edição';
                 DM.FDQueryPessoaJuridica.Open;
                 DM.FDQueryPessoaJuridica.Edit;
            end
     else
         begin
              StatusBar1.Panels[0].Text := 'Inserção';
              DM.FDQueryPessoaJuridica.Insert;

              if DM.FDQueryPessoaJuridica.State in [dsEdit,dsInsert,dsBrowse] then DM.FDQueryPessoaJuridica.ClearFields;

              DM.FDQueryPessoaJuridica.Open;

         end;
end;

end.
