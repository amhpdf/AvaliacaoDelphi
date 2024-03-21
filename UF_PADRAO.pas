unit UF_PADRAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFR_PADRAO = class(TFrame)
    pnl_default: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFR_PADRAO.Label1Click(Sender: TObject);
begin
  self.Destroy;
end;

end.
