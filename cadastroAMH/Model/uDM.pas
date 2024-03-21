unit uDM;

interface

uses
  System.SysUtils, System.Classes, StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait, Vcl.Dialogs,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, utils, uMainAMH;

type
  TDM = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQuery: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure SearchPerson(ptypePerson: TPerson; plistBoxitem: TListBox; pedtSearch: string);
    procedure queryRelatorioLegal(ptypePerson:TPerson);
    function registerPersonLegal(ptypePerson:TPerson; pNameLegal, pCnpjLegal, pAdressLegal, pFone, pfoneCell, pEmailLegal: string; listConnectPersons: TListBox): boolean;
    function registerPersonPhysical(ptypePerson:TPerson; pNamePhysical, pCpfPhysical: string): boolean;
    function AlterPersonPhysical(ptypePerson:TPerson; pidPhysical: integer; pNamePhysical, pCpfPhysical: string): boolean;
    function AlterrPersonLegal(ptypePerson:TPerson; pidLegal: integer;  pNameLegal, pCnpjLegal, pAdressLegal, pFone, pFoneCel, pEmailLegal: string; plistBox: TListbox): boolean;
    function deletePersonPhysical(pidPhysical: integer): boolean;
    function deletePersonLegal(pidLegal: integer): boolean;
    function searchPersonsVinculed(pidPhysical: integer; plistBox: TListbox): boolean;
    function searchPersonsdesVinculed(plistBox: TListbox): boolean;

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

function TDM.AlterPersonPhysical(ptypePerson: TPerson; pidPhysical: integer;
  pNamePhysical, pCpfPhysical: string): boolean;
begin
  result := false;

  FDQuery.close;
  FDQuery.sql.clear;

    FDQuery.SQL.append('update');
    FDQuery.SQL.append('  PESSOA_FISICA');
    FDQuery.SQL.append('set ');
    FDQuery.SQL.append('  FIS_NOME =' + quotedstr(pNamePhysical));
    FDQuery.SQL.append(' ,FIS_CPF =' + quotedstr(pCpfPhysical));
    FDQuery.SQL.append('where');
    FDQuery.SQL.append('  FIS_ID =' + pidPhysical.ToString);

    FDQuery.ExecSQL;
      result := true;
end;

function TDM.AlterrPersonLegal(ptypePerson: TPerson; pidLegal: integer; pNameLegal, pCnpjLegal,
  pAdressLegal, pFone,pFoneCel, pEmailLegal: string; plistBox: TListbox): boolean;
begin
  result := false;

  FDQuery.close;
  FDQuery.sql.clear;

    FDQuery.SQL.append('update');
    FDQuery.SQL.append('  PESSOA_JURIDICA');
    FDQuery.SQL.append('set ');
    FDQuery.SQL.append('  JUR_NOME =' + quotedstr(pNameLegal));
    FDQuery.SQL.append(' ,JUR_ENDERECO =' + quotedstr(pAdressLegal));
    FDQuery.SQL.append(' ,JUR_EMAIL =' + quotedstr(pEmailLegal));
    FDQuery.SQL.append(' ,JUR_TELEFONE =' + quotedstr(pFone));
    FDQuery.SQL.append(' ,JUR_CNPJ =' + quotedstr(pCnpjLegal));
    FDQuery.SQL.append(' ,JUR_CELULAR =' + quotedstr(pFoneCel));
    FDQuery.SQL.append('where');
    FDQuery.SQL.append('  JUR_ID =' + pidLegal.ToString);

    FDQuery.ExecSQL;

  if plistBox.Items.count > 0 then
  begin

    FDQuery.close;
    FDQuery.sql.clear;

    FDQuery.ExecSQL('update PESSOA_FISICA set FIS_JUR_ID = 0 where FIS_JUR_ID = ' + pidLegal.tostring);

    var islIds := TStringList.create;
    islIds.Clear;

    for var lintIndex := 0 to plistBox.Items.count -1 do
    begin
      islIds.Append(lerstrings(plistBox.items[lintIndex],0))
    end;

    FDQuery.close;
    FDQuery.sql.clear;
    FDQuery.ExecSQL('update PESSOA_FISICA set FIS_JUR_ID = ' + pidLegal.tostring  + ' where FIS_ID in ' + '('+ islIds.commatext +')');
  end;

  result := true;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
    FDConnection.Connected := false;

    FDConnection.Params.Clear;
    FDConnection.Params.Add('DriverID=FB');
    FDConnection.Params.Database := System.SysUtils.GetCurrentDir + '\CADASTROPESSOAS.FDB';
    FDConnection.Params.Add('Server=localhost');
    FDConnection.Params.Add('User_Name=SYSDBA');
    FDConnection.Params.Add('Password=masterkey');

   FDConnection.Connected := True

  except
    on E: exception do
      MessageDlg('nao foi possivel conectar o banco:' + E.Message, TmsgdlgType.mtError, [mbok], 0, mbOk);
  end;

end;

function TDM.deletePersonLegal(pidLegal: integer): boolean;
begin

  FDQuery.close;
  FDQuery.sql.clear;

  FDQuery.ExecSQL('update PESSOA_FISICA set FIS_JUR_ID = 0 where FIS_JUR_ID = ' + pidLegal.tostring);

  FDQuery.close;
  FDQuery.sql.clear;

  FDQuery.ExecSQL('Delete from PESSOA_JURIDICA where JUR_ID = ' + pidLegal.ToString);

end;

function TDM.deletePersonPhysical(pidPhysical: integer): boolean;
begin
  result := false;

  FDQuery.close;
  FDQuery.sql.clear;

  FDQuery.ExecSQL('Delete from PESSOA_FISICA where FIS_ID = ' + pidPhysical.ToString);

  result := true;

end;

procedure TDM.queryRelatorioLegal(ptypePerson:TPerson);
begin

  FDQuery.close;
  FDQuery.sql.clear;


case ptypePerson of
  physical: 
  begin
    FDQuery.sql.Append('select');
    FDQuery.sql.Append('    PESSOA_FISICA.FIS_ID,');
    FDQuery.sql.Append('    PESSOA_FISICA.FIS_NOME,');
    FDQuery.sql.Append('    PESSOA_FISICA.FIS_CPF,');
    FDQuery.sql.Append('    PESSOA_FISICA.FIS_JUR_ID');
    FDQuery.sql.Append('from');
    FDQuery.sql.Append('    PESSOA_FISICA');

    FDQuery.Open;  
  end;

  legal:
  begin


    FDQuery.sql.Append('select');
    FDQuery.sql.Append('    PESSOA_FISICA.FIS_NOME,');
    FDQuery.sql.Append('    PESSOA_FISICA.FIS_CPF,');
    FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_ID,');
    FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_NOME,');
    FDQuery.sql.Append('    REPLACE(JUR_ENDERECO, '','','''') AS campo_sem_virgulas,');
    FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_EMAIL,');
    FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_TELEFONE,');
    FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_CELULAR,');
    FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_CNPJ');
    FDQuery.sql.Append('from');
    FDQuery.sql.Append('    PESSOA_JURIDICA');
    FDQuery.sql.Append('    left join PESSOA_FISICA on PESSOA_FISICA.FIS_JUR_ID = PESSOA_JURIDICA.JUR_ID');

    FDQuery.Open;  
  
  end;
end;



end;

function TDM.registerPersonLegal(ptypePerson:TPerson; pNameLegal, pCnpjLegal, pAdressLegal, pFone,pfoneCell, pEmailLegal: string; listConnectPersons: TListBox): boolean;
var
  ID: integer;
begin
  ID := 0;
  result := false;

  FDQuery.close;
  FDQuery.sql.clear;

  FDQuery.SQL.append('insert into');
  FDQuery.SQL.append('  PESSOA_JURIDICA');
  FDQuery.SQL.append('( ');
  FDQuery.SQL.append('  JUR_NOME, ');
  FDQuery.SQL.append('  JUR_CNPJ, ');
  FDQuery.SQL.append('  JUR_ENDERECO, ');
  FDQuery.SQL.append('  JUR_TELEFONE, ');
  FDQuery.SQL.append('  JUR_CELULAR, ');
  FDQuery.SQL.append('  JUR_EMAIL ');
  FDQuery.SQL.append(') ');
  FDQuery.SQL.append('values');
  FDQuery.SQL.append('( ');
  FDQuery.SQL.append(   quotedstr(pNameLegal) + ',');
  FDQuery.SQL.append(   quotedstr(pCnpjLegal) + ',');
  FDQuery.SQL.append(   quotedstr(pAdressLegal) + ',');
  FDQuery.SQL.append(   quotedstr(pFone) + ',');
  FDQuery.SQL.append(   quotedstr(pfoneCell) + ',');
  FDQuery.SQL.append(   quotedstr(pEmailLegal));
  FDQuery.SQL.append(') RETURNING JUR_ID');

  FDQuery.Open;

  ID := FDQuery.FieldByName('JUR_ID').AsInteger;

  if listConnectPersons.Items.count > 0 then
  begin
    var islIds := TStringList.create;
    islIds.Clear;

    for var lintIndex := 0 to listConnectPersons.Items.count -1 do
    begin
      islIds.Append(lerstrings(listConnectPersons.items[lintIndex],0))
    end;

    FDQuery.close;
    FDQuery.sql.clear;
    FDQuery.ExecSQL('update PESSOA_FISICA set FIS_JUR_ID = ' + ID.tostring  + ' where FIS_ID in ' + '('+ islIds.commatext +')');
  end;


  result := true;
end;

function TDM.registerPersonPhysical(ptypePerson: TPerson; pNamePhysical,
  pCpfPhysical: string): boolean;
begin
  result := false;

  FDQuery.close;
  FDQuery.sql.clear;

  FDQuery.SQL.append('insert into');
  FDQuery.SQL.append('  PESSOA_FISICA');
  FDQuery.SQL.append('( ');
  FDQuery.SQL.append('  FIS_NOME, ');
  FDQuery.SQL.append('  FIS_CPF ');
  FDQuery.SQL.append(') ');
  FDQuery.SQL.append('values');
  FDQuery.SQL.append('( ');
  FDQuery.SQL.append(   quotedstr(pNamePhysical) + ',');
  FDQuery.SQL.append(   quotedstr(pCpfPhysical));
  FDQuery.SQL.append(') ');

  FDQuery.ExecSQL;

  result := true;
end;

procedure TDM.SearchPerson(ptypePerson: TPerson; plistBoxitem: TListbox; pedtSearch: string);
var
  lstrItem: string;
begin
  plistBoxitem.Items.clear;
  FDQuery.sql.clear;
  FDQuery.close;

  case (ptypePerson) of
    physical:
    begin
      FDQuery.sql.Append('select');
      FDQuery.sql.Append('    PESSOA_FISICA.FIS_ID,');
      FDQuery.sql.Append('    PESSOA_FISICA.FIS_NOME,');
      FDQuery.sql.Append('    PESSOA_FISICA.FIS_CPF,');
      FDQuery.sql.Append('    PESSOA_FISICA.FIS_JUR_ID');
      FDQuery.sql.Append('from');
      FDQuery.sql.Append('    PESSOA_FISICA');

      if pedtSearch.trim <> '' then
      begin
        FDQuery.sql.append('where( ');
        FDQuery.sql.append('     (FIS_NOME like (' + ('%' + pedtSearch + '%').quotedstring + '))');
        FDQuery.sql.append('  or (FIS_CPF =' + quotedstr(pedtSearch) + ')');
        FDQuery.sql.append('     )');
      end;

      FDQuery.Open;
      FDQuery.first;

     while not FDQuery.eof do
     begin
        lstrItem := '"","","","","","","","","",""';
        lstrItem := gravaStrings(lstrItem, 0, FDQuery.FieldByName('FIS_ID').AsString);
        lstrItem := gravaStrings(lstrItem, 1, FDQuery.FieldByName('FIS_JUR_ID').asinteger.ToString);
        lstrItem := gravaStrings(lstrItem, 2, FDQuery.FieldByName('FIS_NOME').AsString);
        lstrItem := gravaStrings(lstrItem, 5, FDQuery.FieldByName('FIS_CPF').AsString);
        lstrItem := gravaStrings(lstrItem, 7, 'F');

        plistBoxitem.Items.Add(lstrItem);

        FDQuery.next;
     end;

    end;

    legal:
    begin
      FDQuery.sql.Append('select');
      FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_ID,');
      FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_NOME,');
      FDQuery.sql.Append('   REPLACE(JUR_ENDERECO, '','','''') AS campo_sem_virgulas,');
      FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_EMAIL,');
      FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_TELEFONE,');
      FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_CELULAR,');
      FDQuery.sql.Append('    PESSOA_JURIDICA.JUR_CNPJ');
      FDQuery.sql.Append('from');
      FDQuery.sql.Append('    PESSOA_JURIDICA');

      if pedtSearch.trim <> '' then
      begin
        FDQuery.sql.append('where( ');
        FDQuery.sql.append('     (JUR_NOME like (' + ('%' + pedtSearch + '%').quotedstring + '))');
        FDQuery.sql.append('  or (JUR_CNPJ =' + quotedstr(pedtSearch) + ')');
        FDQuery.sql.append('  or (JUR_TELEFONE =' + quotedstr(pedtSearch) + ')');
        FDQuery.sql.append('     )');
      end;

      FDQuery.Open;
      FDQuery.first;

     while not FDQuery.eof do
     begin
        lstrItem := '"","","","","","","","","",""';

        lstrItem := gravaStrings(lstrItem, 0, FDQuery.FieldByName('JUR_ID').AsInteger.toString);
        lstrItem := gravaStrings(lstrItem, 2, FDQuery.FieldByName('JUR_NOME').AsString);
        lstrItem := gravaStrings(lstrItem, 3, FDQuery.FieldByName('campo_sem_virgulas').AsString);
        lstrItem := gravaStrings(lstrItem, 4, FDQuery.FieldByName('JUR_TELEFONE').AsString);
        lstrItem := gravaStrings(lstrItem, 5, FDQuery.FieldByName('JUR_CNPJ').AsString);
        lstrItem := gravaStrings(lstrItem, 6, FDQuery.FieldByName('JUR_CELULAR').AsString);
        lstrItem := gravaStrings(lstrItem, 7, 'F');
        lstrItem := gravaStrings(lstrItem, 9, FDQuery.FieldByName('JUR_EMAIL').AsString);

      plistBoxitem.Items.add(lstrItem);
      FDQuery.next;
     end;

    end;
  end;

end;

function TDM.searchPersonsdesVinculed(plistBox: TListbox): boolean;
var
   lstrItem: string;
begin
  plistBox.Items.clear;
  FDQuery.sql.clear;
  FDQuery.close;

  FDQuery.sql.Append('select');
  FDQuery.sql.Append('    PESSOA_FISICA.FIS_ID,');
  FDQuery.sql.Append('    PESSOA_FISICA.FIS_NOME,');
  FDQuery.sql.Append('    PESSOA_FISICA.FIS_CPF,');
  FDQuery.sql.Append('    PESSOA_FISICA.FIS_JUR_ID');
  FDQuery.sql.Append('from');
  FDQuery.sql.Append('    PESSOA_FISICA');
  FDQuery.sql.append('where FIS_JUR_ID = 0 or FIS_JUR_ID is null');

  FDQuery.Open;
  FDQuery.first;

   while not FDQuery.eof do
   begin
    lstrItem := '"","","","","","","","","",""';
    lstrItem := gravaStrings(lstrItem, 0, FDQuery.FieldByName('FIS_ID').AsString);
    lstrItem := gravaStrings(lstrItem, 1, FDQuery.FieldByName('FIS_JUR_ID').asinteger.ToString);
    lstrItem := gravaStrings(lstrItem, 2, FDQuery.FieldByName('FIS_NOME').AsString);
    lstrItem := gravaStrings(lstrItem, 5, FDQuery.FieldByName('FIS_CPF').AsString);
    lstrItem := gravaStrings(lstrItem, 7, 'F');

    plistBox.Items.Add(lstrItem);

    FDQuery.next;
   end;

end;

function TDM.searchPersonsVinculed(pidPhysical: integer; plistBox: TListbox): boolean;
var
  lstrItem: string;
begin
  FDQuery.sql.clear;
  FDQuery.close;

  FDQuery.sql.Append('select');
  FDQuery.sql.Append('    PESSOA_FISICA.FIS_ID,');
  FDQuery.sql.Append('    PESSOA_FISICA.FIS_NOME,');
  FDQuery.sql.Append('    PESSOA_FISICA.FIS_CPF,');
  FDQuery.sql.Append('    PESSOA_FISICA.FIS_JUR_ID');
  FDQuery.sql.Append('from');
  FDQuery.sql.Append('    PESSOA_FISICA');
  FDQuery.sql.Append('where');
  FDQuery.sql.Append(' FIS_JUR_ID = ' + pidPhysical.tostring);

  FDQuery.Open;
  FDQuery.first;

  plistBox.Items.clear;

  while not FDQuery.eof do
  begin
    lstrItem := '"","","","","","","","","",""';
    lstrItem := gravaStrings(lstrItem, 0, FDQuery.FieldByName('FIS_ID').AsString);
    lstrItem := gravaStrings(lstrItem, 1, FDQuery.FieldByName('FIS_JUR_ID').asinteger.ToString);
    lstrItem := gravaStrings(lstrItem, 2, FDQuery.FieldByName('FIS_NOME').AsString);
    lstrItem := gravaStrings(lstrItem, 5, FDQuery.FieldByName('FIS_CPF').AsString);
    lstrItem := gravaStrings(lstrItem, 7, 'F');

    plistBox.Items.Add(lstrItem);
    FDQuery.next;
  end;
  plistBox.height := plistBox.height + plistBox.items.count * 35;
end;

end.
