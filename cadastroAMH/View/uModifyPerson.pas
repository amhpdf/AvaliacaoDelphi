﻿unit uModifyPerson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uMainAMH,utils,
  Vcl.Imaging.pngimage, uDM;

type
  TTypeForm = (tadd,tupdate);

  TFrmModifyPerson = class(TForm)
    pnlTop: TPanel;
    labTittle: TLabel;
    pnlBottom: TPanel;
    labConfirmar: TLabel;
    scrollBoxBody: TScrollBox;
    pnlRegisterLegal: TPanel;
    pnlMenuTop: TPanel;
    Shape1: TShape;
    Shape5: TShape;
    Shape2: TShape;
    Shape17: TShape;
    Shape15: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape28: TShape;
    pnlBodyName: TPanel;
    pnlEdtNameLegal: TPanel;
    Shape4: TShape;
    edtNameLegal: TEdit;
    pnllabNameLegal: TPanel;
    shpRight: TShape;
    labName: TLabel;
    shpLeft: TShape;
    pnlBodyCnpj: TPanel;
    pnlLabCnpj: TPanel;
    shpRightCmb: TShape;
    shpLeftCmb: TShape;
    labCNPJ: TLabel;
    pnlEdtCnpj: TPanel;
    Shape3: TShape;
    edtCnpjLegal: TEdit;
    pnlBodyAdress: TPanel;
    pnlEdtAdress: TPanel;
    Shape18: TShape;
    edtAdressLegal: TEdit;
    pnlLabAdress: TPanel;
    Shape19: TShape;
    labAdressLegal: TLabel;
    Shape20: TShape;
    pnlBodyFone: TPanel;
    pnlLabFone: TPanel;
    Shape21: TShape;
    Shape22: TShape;
    labFone: TLabel;
    pnlEdtFone: TPanel;
    Shape23: TShape;
    edtFone: TEdit;
    pnlBodyCellfone: TPanel;
    pnlEdtCellfone: TPanel;
    Shape9: TShape;
    edtCellfoneLegal: TEdit;
    pnlLabCellfone: TPanel;
    Shape10: TShape;
    labCellfoneLegal: TLabel;
    Shape11: TShape;
    pnlBodyEmail: TPanel;
    pnlLabEmail: TPanel;
    Shape12: TShape;
    Shape13: TShape;
    labEmailLegal: TLabel;
    pnlEdtEmail: TPanel;
    Shape14: TShape;
    edtEmailLegal: TEdit;
    pnlBodyVinculed: TPanel;
    Panel3: TPanel;
    Shape24: TShape;
    Shape26: TShape;
    Label1: TLabel;
    Panel4: TPanel;
    Shape27: TShape;
    cmbTypePerson: TComboBox;
    pnlRegisterPhysical: TPanel;
    Shape8: TShape;
    Shape16: TShape;
    Shape25: TShape;
    pnlBodyNamePhysical: TPanel;
    pnlEdtNamePhysical: TPanel;
    Shape29: TShape;
    edtNamePhysical: TEdit;
    pnlLabNamePhysical: TPanel;
    Shape30: TShape;
    LabNamePhysical: TLabel;
    Shape31: TShape;
    pnlBodyCpfPhysical: TPanel;
    pnlLabCPFPhysical: TPanel;
    Shape32: TShape;
    Shape33: TShape;
    LabCPFPhysical: TLabel;
    pnEdtCPFPhysical: TPanel;
    Shape34: TShape;
    edtCPFPhysical: TEdit;
    labConectionTittle: TLabel;
    labTittleDados: TLabel;
    pnlBodyButtons: TPanel;
    pnlButtons: TPanel;
    imgDeletePerson: TImage;
    imgAddPerson: TImage;
    listConnectPersons: TListBox;
    procedure cmbTypePersonDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cmbTypePersonChange(Sender: TObject);
    procedure pnlBodyButtonsResize(Sender: TObject);
    procedure imgAddPersonClick(Sender: TObject);
    procedure labConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure listConnectPersonsDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure listConnectPersonsClick(Sender: TObject);
    procedure imgDeletePersonClick(Sender: TObject);
  private
    fperson: TPerson;
    ftypeForm: TTypeForm;
    procedure setPerson(const Value: TPerson);
    procedure setVisiblePersonsVinculed;
    function getPerson: TPerson;
    { Private declarations }
  public
    { Public declarations }
    idItemSelected: integer;

    property Person: TPerson read getPerson write setPerson;
    property TypeForm: TTypeForm read ftypeForm write ftypeForm;
  end;

var
  FrmModifyPerson: TFrmModifyPerson;

implementation

uses uListPerson;

{$R *.dfm}



procedure TFrmModifyPerson.cmbTypePersonChange(Sender: TObject);
begin
  setVisiblePersonsVinculed;
end;

procedure TFrmModifyPerson.cmbTypePersonDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  cmbTypePerson.Canvas.Font.Color := $00606060;
  cmbTypePerson.Canvas.Brush.style := bsSolid;
  cmbTypePerson.Canvas.Brush.Color := $00F8F8F8;

  cmbTypePerson.Canvas.TextOut(Rect.Left + 2, Rect.Top, cmbTypePerson.Items[Index]);
end;

procedure TFrmModifyPerson.FormShow(Sender: TObject);
begin
  self.Left := (Screen.Width - Width) div 2;
  self.Top := (Screen.Height - Height) div 2;
end;

function TFrmModifyPerson.getPerson: TPerson;
begin
  result := fperson;
end;

procedure TFrmModifyPerson.imgAddPersonClick(Sender: TObject);
begin
  if frmListPersons <> nil then
    freeandnil(frmListPersons);
  try

    frmListPersons := TfrmListPersons.create(nil);
    frmListPersons.fmodifyPerson := self;

    //criar rotina na dm que preencha um listboxghenerico com as pessoasFisicas

    frmListPersons.showmodal;
  finally
    if frmListPersons <> nil then
      freeandnil(frmListPersons);
  end;
end;

procedure TFrmModifyPerson.imgDeletePersonClick(Sender: TObject);
begin
  for var lintIndex := listConnectPersons.Items.Count -1 downto 0 do
  begin
    if lerstrings(listConnectPersons.items[lintIndex], 7) = 'T' then
    begin
      listConnectPersons.Items.delete(lintIndex);
    end;

  end;

  setVisiblePersonsVinculed;

end;

procedure TFrmModifyPerson.labConfirmarClick(Sender: TObject);
begin
  case (fperson) of
    physical:
    begin
      case ftypeForm of
        tadd:
        begin
          if (DM.registerPersonPhysical(fperson, edtNamePhysical.text, edtCPFPhysical.text)) then
            self.close;

        end;
        tupdate:
        begin
          if (DM.AlterPersonPhysical(fperson,idItemSelected, edtNamePhysical.text, edtCPFPhysical.text)) then
            self.close;

        end;
      end;

    end;

    legal:
    begin

      case ftypeForm of
        tadd:
        begin
          if (DM.registerPersonLegal(fperson, edtNameLegal.text, edtCnpjLegal.text, edtAdressLegal.text, edtFone.text, edtCellfoneLegal.text, edtEmailLegal.text, listConnectPersons)) then
            self.close;
        end;
        tupdate:
        begin
          if (DM.AlterrPersonLegal(fperson,idItemSelected, edtNameLegal.text, edtCnpjLegal.text, edtAdressLegal.text, edtFone.text, edtCellfoneLegal.text, edtEmailLegal.text, listConnectPersons)) then
            self.close;

        end;
      end;
    end;
  end;
end;

procedure TFrmModifyPerson.listConnectPersonsClick(Sender: TObject);
begin
  if lerStrings(listConnectPersons.items[listConnectPersons.itemIndex], 7) = 'F' then
    listConnectPersons.items[listConnectPersons.itemIndex] := gravastrings(listConnectPersons.items[listConnectPersons.itemIndex],7, 'T')
  else
    listConnectPersons.items[listConnectPersons.itemIndex] := gravastrings(listConnectPersons.items[listConnectPersons.itemIndex],7, 'F');
end;

procedure TFrmModifyPerson.listConnectPersonsDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin

 with listConnectPersons.Canvas do
  begin
    pen.color := $00DCDCDC;

    if lerStrings(listConnectPersons.items[index], 7) = 'T' then
      brush.color := $00ffebd7
    else
      brush.Color := clWhite;

    rectangle(trect.Create(rect.left, rect.top, rect.right, rect.bottom + 1));

    font.Name := 'calibri';
    font.Size := 12;
    font.color := $00606060;
    font.style := [];

    brush.Style := bsClear;

    TextOut(rect.Left + 35, Rect.Top + 7, lerStrings(listConnectPersons.items[index], 2));
    rectangle(rect.Left + 230, Rect.top, rect.Left + 231, rect.bottom);

    TextOut(rect.Left + 236, Rect.Top + 8, lerStrings(listConnectPersons.items[index], 5));

    if (odFocused in State) then
      DrawFocusRect(Rect);
  end;
end;

procedure TFrmModifyPerson.pnlBodyButtonsResize(Sender: TObject);
begin
    pnlButtons.left := pnlBodyButtons.width div 2 - pnlButtons.width div 2;
end;

procedure TFrmModifyPerson.setPerson(const Value: TPerson);
begin
  fperson := Value;

  case (value) of
    physical:
    begin
      labTittleDados.Caption := 'Dados da pessoa física';
      pnlRegisterPhysical.visible := Value = physical;
    end;

    legal:
    begin
      case typeForm of
        tadd:
        begin
          labTittleDados.Caption := 'Dados da pessoa jurídica';
        end;


        tupdate:
        begin
          labTittleDados.Caption := 'Alterar dados da pessoa jurídica';
          cmbTypePerson.ItemIndex := 1;
          setVisiblePersonsVinculed;

        end;
      end;
      pnlRegisterLegal.visible := Value = legal;

    end;
  end;

end;

procedure TFrmModifyPerson.setVisiblePersonsVinculed;
begin
  pnlRegisterLegal.height := 400;

  listConnectPersons.visible :=  cmbTypePerson.ItemIndex = 1;
  pnlBodyButtons.Visible := cmbTypePerson.ItemIndex = 1;
  labConectionTittle.Visible := cmbTypePerson.ItemIndex = 1;

  pnlRegisterLegal.height := pnlRegisterLegal.height + listConnectPersons.items.count * 35;

  pnlBodyButtons.top := listConnectPersons.height + listConnectPersons.items.count * 35;

  labConectionTittle.top := pnlBodyVinculed.top - pnlBodyVinculed.height;
end;

end.