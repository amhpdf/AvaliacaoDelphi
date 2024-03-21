unit uMainAMH;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, utils, uRelatorio;

type
  TPerson = (physical, legal);

  TformMain = class(TForm)
    pnlMain: TPanel;
    pnlBody: TPanel;
    pnlTop: TPanel;
    labTittle: TLabel;
    shpExit: TShape;
    pnlMenuTop: TPanel;
    pnlMenuSubTittles: TPanel;
    pnlMenuItems: TPanel;
    pnlSubtittleSearch: TPanel;
    Label1: TLabel;
    pnlCmbTypePerson: TPanel;
    shpRightCmb: TShape;
    cmbTypePerson: TComboBox;
    pnlTypePerson: TPanel;
    shpRight: TShape;
    Label2: TLabel;
    Panel3: TPanel;
    edtSearch: TEdit;
    Shape1: TShape;
    shpLeft: TShape;
    shpLeftCmb: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    labSearch: TLabel;
    lstPerson: TListBox;
    pnlBottom: TPanel;
    pnlBottomContainer: TPanel;
    labChangePerson: TLabel;
    labExcluir: TLabel;
    labPrint: TLabel;
    labNewPerson: TLabel;

    procedure shpExitMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbTypePersonDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure pnlBottomResize(Sender: TObject);
    procedure labSearchClick(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure labNewPersonClick(Sender: TObject);
    procedure lstPersonDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure lstPersonClick(Sender: TObject);
    procedure labChangePersonClick(Sender: TObject);
    procedure labExcluirClick(Sender: TObject);
    procedure labPrintClick(Sender: TObject);

  private
    fperson: TPerson;
    procedure setPerson(const Value: TPerson);
    function getPerson: TPerson;

    { Private declarations }
  public
    { Public declarations }

    property Person:  TPerson read getPerson write setPerson;
  end;

var
  formMain: TformMain;

implementation

uses uDM, uModifyPerson;

{$R *.dfm}


procedure TformMain.cmbTypePersonDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  cmbTypePerson.Canvas.Font.Color := $00606060;
  cmbTypePerson.Canvas.Brush.style := bsSolid;
  cmbTypePerson.Canvas.Brush.Color := $00F8F8F8;

  cmbTypePerson.Canvas.TextOut(Rect.Left + 2, Rect.Top, cmbTypePerson.Items[Index]);

end;

procedure TformMain.edtSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;

    labSearchClick(nil);

    edtSearch.SelectAll;
  end;
end;

function TformMain.getPerson: TPerson;
begin
  result := fperson;
end;

procedure TformMain.labChangePersonClick(Sender: TObject);
begin
  if lstPerson.itemIndex < 0 then
    showmessage('Selecione um item da lista para alterar');

  if (FrmModifyPerson) <> nil then
  freeandnil(FrmModifyPerson);

  FrmModifyPerson := TFrmModifyPerson.Create(nil);

  FrmModifyPerson.typeForm := tupdate;
  FrmModifyPerson.Person := getPerson;

  try
    case fperson of
      physical:
      begin
        FrmModifyPerson.edtNamePhysical.text := lerstrings(lstPerson.items[lstPerson.itemIndex], 2);
        FrmModifyPerson.edtCPFPhysical.text := lerstrings(lstPerson.items[lstPerson.itemIndex], 5);
        FrmModifyPerson.idItemSelected := lerstrings(lstPerson.items[lstPerson.itemIndex], 0).ToInteger;
      end;

      legal:
      begin
        FrmModifyPerson.edtNameLegal.text := lerstrings(lstPerson.items[lstPerson.itemIndex], 2);
        FrmModifyPerson.edtAdressLegal.text := lerstrings(lstPerson.items[lstPerson.itemIndex], 3);
        FrmModifyPerson.edtFone.text := lerstrings(lstPerson.items[lstPerson.itemIndex], 4);
        FrmModifyPerson.edtCnpjLegal.text := lerstrings(lstPerson.items[lstPerson.itemIndex], 5);
        FrmModifyPerson.edtCellfoneLegal.text :=  lerstrings(lstPerson.items[lstPerson.itemIndex], 6);
        FrmModifyPerson.edtEmailLegal.text :=  lerstrings(lstPerson.items[lstPerson.itemIndex], 9);

        FrmModifyPerson.idItemSelected := lerstrings(lstPerson.items[lstPerson.itemIndex], 0).ToInteger;

        dm.searchPersonsVinculed(lerstrings(lstPerson.items[lstPerson.itemIndex], 0).ToInteger, FrmModifyPerson.listConnectPersons);
        FrmModifyPerson.pnlRegisterLegal.height := FrmModifyPerson.pnlRegisterLegal.height + FrmModifyPerson.listConnectPersons.Items.count * 35;

        FrmModifyPerson.cmbTypePerson.ItemIndex := 1;

      end;
    end;

    FrmModifyPerson.ShowModal;

  finally
    if (FrmModifyPerson) <> nil then
      freeandnil(FrmModifyPerson);
  end;

  labSearchClick(nil);

end;

procedure TformMain.labExcluirClick(Sender: TObject);
var
  options: Integer;
begin
  if lstPerson.itemIndex < 0 then
    showmessage('Selecione um item da lista para excluir');

  case fperson of
    physical:
    begin
      options :=  MessageDlg('Deseja Excluir a pessoa  física' + ' - ' + lerstrings(lstPerson.items[lstPerson.itemIndex], 2)  + '?:', mtConfirmation, mbYesNo, 0);
      case options of
        mrYes:
        begin
          if DM.deletePersonPhysical(lerstrings(lstPerson.items[lstPerson.itemIndex], 0).tointeger) then
            labSearchClick(nil);

        end;
        mrNo: exit;

      end;
    end;
    legal:
    begin
     options :=  MessageDlg('Deseja Excluir a empresa? lembre-se que ela também perderá os vinculos a elas!:', mtConfirmation, mbYesNo, 0);
      case options of
        mrYes: DM.deletePersonLegal(lerstrings(lstPerson.items[lstPerson.itemIndex], 0).tointeger);

        mrNo: exit;
      end;
    end;
  end;
  labSearchClick(nil);
end;

procedure TformMain.labNewPersonClick(Sender: TObject);
begin

  if (FrmModifyPerson) <> nil then
      freeandnil(FrmModifyPerson);
  try
    FrmModifyPerson := TFrmModifyPerson.Create(nil);
    FrmModifyPerson.Person := getPerson;
    FrmModifyPerson.ShowModal;

  finally
    if (FrmModifyPerson) <> nil then
      freeandnil(FrmModifyPerson);
  end;

  labSearchClick(nil);

end;

procedure TformMain.labPrintClick(Sender: TObject);
begin
  if (frmQuickRep <> nil) then
    freeandnil(frmQuickRep);

  try
    try
      frmQuickRep := TfrmQuickRep.create(nil);

      case fperson of
        physical:
        begin
          DM.queryRelatorioLegal(fperson);

          frmQuickRep.QuickRep1.Visible := false;
          frmQuickRep.QuickRep1.SendToBack;

          frmQuickRep.QuickRep2.visible := true;
          frmQuickRep.QuickRep2.BringToFront;

          frmQuickRep.QuickRep2.Preview;
        end;

        legal:
        begin
          DM.queryRelatorioLegal(fperson);
          frmQuickRep.QuickRep2.Visible := false;
          frmQuickRep.QuickRep2.SendToBack;

          frmQuickRep.QuickRep1.Visible := true;
          frmQuickRep.QuickRep1.BringToFront;

          frmQuickRep.QuickRep1.Preview;
        end;

      end;


    except

    end;
  finally
    if frmQuickRep <> nil then
      freeandnil(frmQuickRep);
  end;
end;

procedure TformMain.labSearchClick(Sender: TObject);
begin
  case cmbTypePerson.ItemIndex of
    0: Person := physical;
    1: Person := legal;
  end;
end;


procedure TformMain.lstPersonClick(Sender: TObject);
begin
  if lerStrings(lstPerson.items[lstPerson.itemIndex], 7) = 'F' then
    lstPerson.items[lstPerson.itemIndex] := gravastrings(lstPerson.items[lstPerson.itemIndex],7, 'T')
  else
    lstPerson.items[lstPerson.itemIndex] := gravastrings(lstPerson.items[lstPerson.itemIndex],7, 'F');

end;

procedure TformMain.lstPersonDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  with lstPerson.Canvas do
  begin
    pen.color := $00DCDCDC;

    if lerStrings(lstPerson.items[index], 7) = 'T' then
      brush.color := $00ffebd7
    else
      brush.Color := clWhite;

    rectangle(trect.Create(rect.left, rect.top, rect.right, rect.bottom + 1));

    font.Name := 'calibri';
    font.Size := 12;
    font.color := $00606060;
    font.style := [];

    brush.Style := bsClear;

    TextOut(rect.Left + 35, Rect.Top + 7, lerStrings(lstPerson.items[index], 2));
    rectangle(rect.Left + 230, Rect.top, rect.Left + 231, rect.bottom);

    TextOut(rect.Left + 236, Rect.Top + 8, lerStrings(lstPerson.items[index], 5));

    case fperson of
      legal:
      begin
        rectangle(rect.Left + 430, Rect.top, rect.Left + 431, rect.bottom);
        TextOut(rect.Left + 435, Rect.Top + 7, lerStrings(lstPerson.items[index], 3));

        rectangle(rect.Left + 630, Rect.top, rect.Left + 631, rect.bottom);
        TextOut(rect.Left + 635, Rect.Top + 7, lerStrings(lstPerson.items[index], 8));

        rectangle(rect.Left + 830, Rect.top, rect.Left + 831, rect.bottom);
        TextOut(rect.Left + 835, Rect.Top + 7, lerStrings(lstPerson.items[index], 4));

      end;
    end;

    if (odFocused in State) then
      DrawFocusRect(Rect);
  end;

end;

procedure TformMain.pnlBottomResize(Sender: TObject);
begin
  pnlBottomContainer.left := pnlBottom.width div 2 - pnlBottomContainer.width div 2;
end;

procedure TformMain.setPerson(const Value: TPerson);
begin
  fperson := Value;
  DM.SearchPerson(Value,lstPerson, edtSearch.Text);
end;

procedure TformMain.shpExitMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Application.Terminate;
end;

end.
