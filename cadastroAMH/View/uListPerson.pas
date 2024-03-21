unit uListPerson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDM, uMainAMH, utils, uModifyPerson;

type
  TfrmListPersons = class(TForm)
    pnlBottom: TPanel;
    labConfirmar: TLabel;
    pnlTop: TPanel;
    labTittle: TLabel;
    lstPersons: TListBox;
    Panel1: TPanel;
    labTittleDados: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure lstPersonsDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure lstPersonsClick(Sender: TObject);
    procedure labConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var Person: TPerson;
    var fmodifyPerson: TFrmModifyPerson;
  end;

var
  frmListPersons: TfrmListPersons;
implementation

{$R *.dfm}

procedure TfrmListPersons.FormCreate(Sender: TObject);
begin
  Person := physical;
  dm.searchPersonsdesVinculed(lstPersons);
end;

procedure TfrmListPersons.FormShow(Sender: TObject);
begin
  self.Left := (Screen.Width - Width) div 2;
  self.Top := (Screen.Height - Height) div 2;
end;

procedure TfrmListPersons.labConfirmarClick(Sender: TObject);
begin
  for var lintIndex := 0 to lstPersons.Items.Count-1 do
  begin
    if lerstrings(lstPersons.Items[lintIndex], 7) = 'T' then
    begin

      if fmodifyPerson.listConnectPersons.Items.IndexOf(lstPersons.Items[lintIndex]) = -1 then
      begin
        fmodifyPerson.listConnectPersons.Items.add(lstPersons.Items[lintIndex]);
      end;

      fmodifyPerson.listConnectPersons.height := fmodifyPerson.listConnectPersons.items.count * 35;
      fmodifyPerson.pnlRegisterLegal.height := fmodifyPerson.pnlRegisterLegal.height + fmodifyPerson.listConnectPersons.height;

    end;

  end;

  self.close;

end;

procedure TfrmListPersons.lstPersonsClick(Sender: TObject);
begin
  if lerStrings(lstPersons.items[lstPersons.itemIndex], 7) = 'F' then
    lstPersons.items[lstPersons.itemIndex] := gravastrings(lstPersons.items[lstPersons.itemIndex],7, 'T')
  else
    lstPersons.items[lstPersons.itemIndex] := gravastrings(lstPersons.items[lstPersons.itemIndex],7, 'F');
end;

procedure TfrmListPersons.lstPersonsDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
 with lstPersons.Canvas do
  begin
    pen.color := $00DCDCDC;

    if lerStrings(lstPersons.items[index], 7) = 'T' then
      brush.color := $00ffebd7
    else
      brush.Color := clWhite;

    rectangle(trect.Create(rect.left, rect.top, rect.right, rect.bottom + 1));

    font.Name := 'calibri';
    font.Size := 12;
    font.color := $00606060;
    font.style := [];

    brush.Style := bsClear;

    TextOut(rect.Left + 35, Rect.Top + 7, lerStrings(lstPersons.items[index], 2));
    rectangle(rect.Left + 230, Rect.top, rect.Left + 231, rect.bottom);

    TextOut(rect.Left + 236, Rect.Top + 8, lerStrings(lstPersons.items[index], 5));

    if (odFocused in State) then
      DrawFocusRect(Rect);
  end;
end;

end.
