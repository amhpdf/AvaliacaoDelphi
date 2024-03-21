unit utils;

interface

uses

  System.SysUtils,
  System.Classes;


  function lerStrings(const value: String; position: integer): String;
  function gravaStrings(s: String; Posicao: integer; NovaString: String): String;

implementation

function lerStrings(const value: String; position: integer): String;
begin
  result := value .Split([','])[position].Replace('"' ,'');
end;

function gravaStrings(s: String; Posicao: integer; NovaString: String): String;
var
  Sl: tstringList;
  i: integer;
begin
  Sl := nil;

  try
    Sl := tstringList.Create;
    Sl.CommaText := s;
    Result := '';
    for i := 0 to Sl.Count - 1 do
    begin
      if i > 0 then
        Result := Result + ',';
      if i = Posicao then
        Result := Result + '"' + NovaString + '"'
      else
        Result := Result + '"' + Sl[i] + '"';
    end;
  finally
    if Sl <> nil then
      FreeAndNil(Sl);
  end;
end;


end.
