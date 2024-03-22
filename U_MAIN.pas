unit U_MAIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, UF_PF, UF_PJ;

type
  ttela = (tt_pj, tt_pf, tt_print);

  TF_MAIN = class(TForm)
    pnl_rodape: TPanel;
    img_logo: TImage;
    Label1: TLabel;
    pnl_main: TPanel;
    Label2: TLabel;
    pnl_frame: TPanel;
    pnl_menu: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btn_pf: TButton;
    btn_pj: TButton;
    btn_print: TButton;
    procedure btn_pfClick(Sender: TObject);
    procedure btn_pjClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
  private
    { Private declarations }
    procedure abrirtela(tela: ttela);
    procedure destroitelas;
  public
    { Public declarations }
  end;

var
  F_MAIN: TF_MAIN;

implementation

{$R *.dfm}

{ TF_MAIN }

procedure TF_MAIN.abrirtela(tela: ttela);
begin
  pnl_menu.SendToBack;

  case tela of
    tt_pj:
    begin

    end;

    tt_pf:
    begin

    end;

    tt_print:
    begin

    end;
  end;

  pnl_menu.SendToBack;
end;

procedure TF_MAIN.btn_pfClick(Sender: TObject);
begin
  abrirtela(tt_pf);
end;

procedure TF_MAIN.btn_pjClick(Sender: TObject);
begin
  abrirtela(tt_pj);
end;

procedure TF_MAIN.btn_printClick(Sender: TObject);
begin
  abrirtela(tt_print);
end;

procedure TF_MAIN.destroitelas;
begin
  exit;
end;

end.
