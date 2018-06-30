unit Unit_venda_por_cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrm_print_cli = class(TForm)
    Q_ITENSvEND: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    lbdata: TQRLabel;
    Q_RELCLI: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText23: TQRDBText;
    QRBand1: TQRBand;
    QRBand5: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText17: TQRDBText;
    procedure Q_ITENSvENDBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_print_cli: TFrm_print_cli;

implementation

uses Unit_Cof_relatorios;

{$R *.dfm}

procedure TFrm_print_cli.Q_ITENSvENDBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
lbdata.Caption:='Periíodo : '+Relatorios.ed_inicial.Text+'  á  '+Relatorios.ed_final.Text;



    


end;

end.
