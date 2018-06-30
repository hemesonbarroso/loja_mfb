unit Unit_PRINT_ITEN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TFRM_PRINT_ITENS = class(TForm)
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
    QRLabel10: TQRLabel;
    QRBand1: TQRBand;
    QRBand5: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QITENS: TADOQuery;
    QITENSCOD_PRODUTO: TIntegerField;
    QITENSDESCRICAO: TStringField;
    QITENSQUANTIDADE: TFloatField;
    QITENSVALORITENS: TFloatField;
    QITENStotal: TFloatField;
    procedure Q_ITENSvENDBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QITENSCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PRINT_ITENS: TFRM_PRINT_ITENS;

implementation

uses _Consulta, Unit_Cof_relatorios;

{$R *.dfm}

procedure TFRM_PRINT_ITENS.Q_ITENSvENDBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
   var    total: real;
begin
total :=0;
lbdata.Caption:='Periíodo : '+Relatorios.ed_inicial.Text+'  á  '+Relatorios.ed_final.Text;



      QITENS.Close;
      QITENS.SQL.Clear;
      QITENS.SQL.Add('SELECT  `t_itens_vendas`.`COD_PRODUTO` ' +
                                 '  , `t_itens_vendas`.`DESCRICAO` ' +
                                 ' , `t_itens_vendas`.`QUANTIDADE`' +
                                 ' , `t_itens_vendas`.`VALORITENS` ' +
                                  ' , `t_produtos`.`DESCRICAO`' +
                              ' FROM   ' +
                                 '   `base_mfb`.`t_itens_vendas` ' +
                                 ' INNER JOIN `base_mfb`.`t_vendas`' +
                                 '     ON (`t_itens_vendas`.`COD_VENDA` = `t_vendas`.`COD_VENDA`) ' +
                                 '  INNER JOIN `base_mfb`.`t_produtos` ' +
                                 '    ON (`t_itens_vendas`.`COD_PRODUTO` = `t_produtos`.`COD_PRODUTO`) ' +

                             '  WHERE (  DATE_FORMAT(`t_vendas`.`DATAVENDA`, ''%d-%m-%Y'')   BETWEEN :DATAINICIAL AND :DATAFINAL)');


     QITENS.Parameters.ParamByName('datainicial').Value :=Relatorios.ed_inicial.Text; //FormatDateTime('yyyy,mm,dd',StrToDate(ed_inicial.Text));
     QITENS.Parameters.ParamByName('datafinal').Value := Relatorios.ed_final.Text; // FormatDateTime('yyyy,mm,dd',StrToDate(ed_final.Text));
     QITENS.Open;

            QITENS.First;
     while not  QITENS.Eof do begin
       total :=total + QITENStotal.value;

       QITENS.Next
     end;
     QRLabel7.Caption:=formatfloat('#,##0.00',total);


end;

procedure TFRM_PRINT_ITENS.QITENSCalcFields(DataSet: TDataSet);
begin
QITENStotal.Value:= (QITENSQUANTIDADE.Value * QITENSVALORITENS.Value);
end;

end.
