unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TFormPrincipal = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    bbAlterar: TBitBtn;
    bbImprimirJuridico: TBitBtn;
    bbExcluir: TBitBtn;
    t: TBitBtn;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PageControl2: TPageControl;
    bbNovo: TBitBtn;
    DBGrid3: TDBGrid;
    procedure bbNovoClick(Sender: TObject);
    procedure bbEditarClick(Sender: TObject);
    procedure tClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure bbImprimirJuridicoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;


implementation

{$R *.dfm}

uses UnDM, UnCadastroFisico, UnCadastroJuridico, UnRelPessoaFisica, UnRelPessoaJuridica;


procedure TFormPrincipal.bbEditarClick(Sender: TObject);
var form:TForm;
begin
    if PageControl1.ActivePageIndex = 0 then
        form := FindComponent('FormCadastroFisico') as TForm;
        begin
            if form=Nil
                then
                    begin
                         if DM.FDQueryPessoaFisicaPESSOA_FISICA_ID.AsInteger = 0
                            then
                                begin
                                     ShowMessage('Selecione ao menos uma pessoa!');
                                     abort;
                                end;

                         Application.CreateForm(TFormCadastroFisico,FormCadastroFisico);
                         try
                            FormCadastroFisico.Tipo := 'edit';

                            FormCadastroFisico.ShowModal;
                         finally
                                FormCadastroFisico.Release;
                                FormCadastroFisico := nil;
                         end;
                    end

            else
               begin
                    form := FindComponent('FormCadastroJuridico') as TForm;
                    begin
                        if form=nil then
                          begin
                               Application.CreateForm(TFormCadastroJuridico,FormCadastroJuridico);
                               try
                                  FormCadastroJuridico.Tipo := 'edit';

                                  FormCadastroJuridico.ShowModal;
                               finally
                                      FormCadastroJuridico.Release;
                                      FormCadastroJuridico := nil
                               end;
                          end;
                    end
               end;
        end;

end;

procedure TFormPrincipal.bbExcluirClick(Sender: TObject);
begin
    if PageControl1.ActivePageIndex = 0 then
      begin
          DM.FDQueryPessoaFisica.Delete;

          ShowMessage('Excluido com sucesso!')
      end
    else
      begin
          DM.FDQueryPessoaJuridica.Delete;

          ShowMessage('Excluido com sucesso!')
      end;
end;

procedure TFormPrincipal.bbImprimirJuridicoClick(Sender: TObject);
begin
     FormRelPessoaJuridica.RLPessoaJuridica.Preview();
end;

procedure TFormPrincipal.bbNovoClick(Sender: TObject);
var form:TForm;
begin
    if PageControl1.ActivePageIndex = 1 then
        form := FindComponent('FormCadastroJuridico') as TForm;
        begin
            if form=nil then
              begin
                   Application.CreateForm(TFormCadastroJuridico,FormCadastroJuridico);
                   try
                      FormCadastroJuridico.Tipo := 'novo';

                      FormCadastroJuridico.ShowModal;
                   finally
                          FormCadastroJuridico.Release;
                          FormCadastroJuridico := nil;
                          DM.FDQueryPessoaJuridica.Refresh;
                   end;
              end

             else
               begin
                    form := FindComponent('FormCadastroFisico') as TForm;
                    begin
                        if form=nil then
                          begin
                               Application.CreateForm(TFormCadastroFisico,FormCadastroFisico);
                               try
                                  FormCadastroFisico.Tipo := 'novo';

                                  FormCadastroFisico.ShowModal;
                               finally
                                      FormCadastroFisico.Release;
                                      FormCadastroFisico := nil;
                                      DM.FDQueryPessoaFisica.Refresh;
                               end;
                          end;
                    end
               end;
        end;


end;

procedure TFormPrincipal.BitBtn3Click(Sender: TObject);
var count:integer;
begin
     FormRelPessoaFisica.RlPessoaFisica.Preview();
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 0;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
     DM.FDQueryPessoaFisica.Open;
     DM.FDQueryPessoaJuridica.Open;
end;

procedure TFormPrincipal.tClick(Sender: TObject);
begin
    Close;
end;

end.
