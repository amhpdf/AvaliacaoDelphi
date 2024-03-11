unit View.Listagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, QRCtrls;

type
  TFrmListagem = class(TForm)
    qrListagem: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    qrlTitulo: TQRLabel;
    DetailBand1: TQRBand;
    qrdbtDocumento: TQRDBText;
    qrdbtNome: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    qrlTipoDoc: TQRLabel;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData4: TQRSysData;
    qrlDev: TQRLabel;
    procedure QRSysData4Print(sender: TObject; var Value: string);
    procedure QRSysData3Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  View.PessoaFisica;

{$R *.dfm}

procedure TFrmListagem.QRSysData3Print(sender: TObject; var Value: string);
begin
  Value := 'Pag: ' + Value;
end;

procedure TFrmListagem.QRSysData4Print(sender: TObject; var Value: string);
begin
  Value := 'Total de registros: ' + Value;
end;

end.
