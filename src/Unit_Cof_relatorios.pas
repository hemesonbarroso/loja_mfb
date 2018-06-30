unit Unit_Cof_relatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,funcoes, DB, ADODB, Grids, DBGrids;

type
  TRelatorios = class(TForm)
    Label30: TLabel;
    GroupBox1: TGroupBox;
    ed_inicial: TMaskEdit;
    Label1: TLabel;
    ed_final: TMaskEdit;
    Label2: TLabel;
    imprimir: TBitBtn;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Ed_codcli: TEdit;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    q_produtosVendidos: TADOQuery;
    q_produtosVendidosCOD_CLIENTE: TAutoIncField;
    q_produtosVendidosRazao_Social: TStringField;
    q_produtosVendidosCOD_VENDA: TAutoIncField;
    q_produtosVendidosDATAVENDA: TDateTimeField;
    q_produtosVendidosVALORTOTAL: TFloatField;
    q_produtosVendidosPERDESC: TStringField;
    q_produtosVendidosQTDITENS: TIntegerField;
    q_produtosVendidosDESCRICAO: TStringField;
    q_produtosVendidosQUANTIDADE: TFloatField;
    q_produtosVendidosVALORITENS: TFloatField;
    q_produtosVendidosUNIDADE: TStringField;
    q_produtosVendidosPRECOUNIT: TBCDField;
    Pesquisar: TBitBtn;
    BitBtn1: TBitBtn;
    q_produtosVendidosTOTALDESC: TFloatField;
    QITENS: TADOQuery;
    QITENSCOD_PRODUTO: TIntegerField;
    QITENSDESCRICAO: TStringField;
    QITENSQUANTIDADE: TFloatField;
    QITENSVALORITENS: TFloatField;
    BitBtn2: TBitBtn;
    dbitens: TDBGrid;
    DataSource2: TDataSource;
    QITENStotal: TFloatField;
    procedure Ed_codcliExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Ed_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure imprimirClick(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure ed_inicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_finalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PesquisarClick(Sender: TObject);
    procedure PesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QITENSCalcFields(DataSet: TDataSet);
    procedure RadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Relatorios: TRelatorios;

implementation

uses dm_fin, _Consulta, Unit_prodVend, Unit_venda_por_cli, Unit_PRINT_ITEN,
  Unit_Frm_cadProd;

{$R *.dfm}

procedure TRelatorios.Ed_codcliExit(Sender: TObject);
var  q_veriforn :tADOquery;
begin
if Ed_codcli.Text <> '' then
  begin
    with  q_veriforn do begin
     q_veriforn:=tADOquery.create(self);
     q_veriforn.Connection:=dm.dm;
     close;
     sql.Clear;
     sql.add('select Cod_cliente, Cgc_Cnpj,Ins_Est, Ins_Munic,'+
             ' Razao_Social,Nome_Fantasia, Tipo_forn, Endereco,'+
             ' Fone_Residencial,Fone_Comercial, Cidade, Estado,'+
             ' Bairro, Cep, Ativo_sn'+
             ' from t_clientes'+
             ' where Cod_cliente =:Cod_cliente AND Ativo_sn =''A''');
      Parameters.ParamByName('Cod_cliente').Value :=strtoint(Ed_codcli.text);
     open;
    end;
    if q_veriforn.Locate('Cod_cliente',Ed_codcli.Text,[])=false then
       begin
       Mensagem(' Código inválido ou inativo ! ! !');
       Ed_codcli.text:='';
       q_veriforn.destroy;
       Ed_codcli.SetFocus;
       exit;
       end;
       label3.Caption:=q_veriforn.fieldbyname('Razao_Social').asstring;
   end;
end;

procedure TRelatorios.SpeedButton1Click(Sender: TObject);
var  campos, tit:TStrings;
     x, filtro:String;
begin

// filtro := 'Codigo_forn='+#39+(trim(edit1.Text))+#39;
    campos:=TStringlist.create;
    tit:=TStringlist.create;

    campos.add('Razao_Social');
    campos.add('Cod_cliente');
    campos.add('Ativo_sn');

    tit.add('Nome do Cliente');
    tit.add('Codigo');
    tit.add('Ativo S/N');



    x:=Consulta.execute(campos,tit,'T_CLIENTES','Cod_cliente',filtro);


    if x <> '' then
    begin
     Ed_codcli.text := x;
    end
    else
  exit;
    campos.destroy;
    tit.destroy;
    Ed_codcli.SetFocus;



end;

procedure TRelatorios.Ed_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  campos, tit:TStrings;
     x, filtro:String;
begin
 if (key = Vk_f2)  then
  begin

//    filtro := 'Codigo_forn='+#39+(trim(edit1.Text))+#39;
    campos:=TStringlist.create;
    tit:=TStringlist.create;

    campos.add('Razao_Social');
    campos.add('cod_cliente');
    campos.add('Ativo_sn');

    tit.add('Nome do Cliente');
    tit.add('Codigo');
    tit.add('Ativo S/N');



    x:=Consulta.execute(campos,tit,'T_CLIENTES','cod_cliente',filtro);


    if x <> '' then
    begin
     Ed_codcli.text := x;
    end
    else
  exit;
    campos.destroy;
    tit.destroy;
    Ed_codcli.SetFocus;
 end;

   if key = vk_return then
   imprimir.SetFocus;

end;

procedure TRelatorios.FormShow(Sender: TObject);
begin
ed_inicial.SetFocus;
end;

procedure TRelatorios.imprimirClick(Sender: TObject);
begin

  if (ed_inicial.Text='  /  /    ' ) and   (ed_final.Text='  /  /    ' ) then
      begin
       Mensagem('Informe uma periodo!');
       ed_inicial.SetFocus;
       exit;
      end;


    if  RadioButton2.Checked =true then
    Frm_print_cli.Q_ITENSvEND.Preview;

    if RadioButton3.Checked =true then
    Print_prod_vendidos.Q_ITENSvEND.preview;

    if RadioButton1.Checked =true then
     FRM_PRINT_ITENS.Q_ITENSvEND.preview;



end;

procedure TRelatorios.RadioButton2Click(Sender: TObject);
begin
label9.Visible :=true;
Ed_codcli.Visible:=true;
SpeedButton1.Visible:=true;
Label3.Visible:=true;
dbitens.Visible:=false;
end;

procedure TRelatorios.RadioButton3Click(Sender: TObject);
begin
label9.Visible :=false;
Ed_codcli.Visible:=false;
SpeedButton1.Visible:=false;
Label3.Visible:=false;
dbitens.Visible:=false;
end;

procedure TRelatorios.ed_inicialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   ed_final.SetFocus;
end;

procedure TRelatorios.ed_finalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
     if   RadioButton3.Checked = true then
     Ed_codcli.SetFocus
     else
    Pesquisar.SetFocus;
   end;
end;

procedure TRelatorios.PesquisarClick(Sender: TObject);
begin

 if (ed_inicial.Text='  /  /    ' ) and   (ed_final.Text='  /  /    ' ) then
      begin
       Mensagem('Informe uma periodo!');
       ed_inicial.SetFocus;
       exit;
      end;

      

     if RadioButton3.Checked = true   then
     begin

     q_produtosVendidos.Close;
     q_produtosVendidos.SQL.Clear;
     q_produtosVendidos.SQL.Add('SELECT `t_clientes`.`COD_CLIENTE` '+
                                 ' , `t_clientes`.`Razao_Social` '+
                                 ' , `t_vendas`.`COD_VENDA`'+
                                 ' , `t_vendas`.`DATAVENDA` '+
                                 ' , `t_vendas`.`VALORTOTAL`'+
                                 ' , `t_vendas`.`TOTALDESC` '+
                                 ' , `t_vendas`.`PERDESC` '+
                                 ' , `t_vendas`.`QTDITENS` '+
                                 ' , `t_itens_vendas`.`COD_PRODUTO` '+
                                 ' , `t_itens_vendas`.`DESCRICAO` '+
                                 ' , `t_itens_vendas`.`QUANTIDADE` '+
                                 ' , `t_itens_vendas`.`VALORITENS` '+
                                 ' , `t_produtos`.`UNIDADE`    '+
                                 ' , `t_produtos`.`PRECOUNIT`  '+
                              ' FROM   '+
                                 ' `base_mfb`.`t_itens_vendas`'+
                                 ' INNER JOIN `base_mfb`.`t_vendas` '+
                                 '     ON (`t_itens_vendas`.`COD_VENDA` = `t_vendas`.`COD_VENDA`)'+
                                 ' INNER JOIN `base_mfb`.`t_produtos` '+
                                 '     ON (`t_itens_vendas`.`COD_PRODUTO` = `t_produtos`.`COD_PRODUTO`) '+
                                 ' INNER JOIN `base_mfb`.`t_clientes` '+
                                 '     ON (`t_vendas`.`COD_CLIENTE` = `t_clientes`.`COD_CLIENTE`) '+

                                 '     WHERE (  DATE_FORMAT(`t_vendas`.`DATAVENDA`, ''%d-%m-%Y'')   BETWEEN :datainicial AND :datafinal);');



     q_produtosVendidos.Parameters.ParamByName('datainicial').Value :=ed_inicial.Text; //FormatDateTime('yyyy,mm,dd',StrToDate(ed_inicial.Text));
     q_produtosVendidos.Parameters.ParamByName('datafinal').Value := ed_final.Text; // FormatDateTime('yyyy,mm,dd',StrToDate(ed_final.Text));
     q_produtosVendidos.Open;
     end;

     if RadioButton2.Checked = true   then
     begin

      q_produtosVendidos.Close;
      q_produtosVendidos.SQL.Clear;
      q_produtosVendidos.SQL.Add('SELECT `t_clientes`.`COD_CLIENTE` '+
                                 ' , `t_clientes`.`Razao_Social` '+
                                 ' , `t_vendas`.`COD_VENDA`'+
                                 ' , `t_vendas`.`DATAVENDA` '+
                                 ' , `t_vendas`.`VALORTOTAL`'+
                                 ' , `t_vendas`.`TOTALDESC` '+
                                 ' , `t_vendas`.`PERDESC` '+
                                 ' , `t_vendas`.`QTDITENS` '+
                                 ' , `t_itens_vendas`.`COD_PRODUTO` '+
                                 ' , `t_itens_vendas`.`DESCRICAO` '+
                                 ' , `t_itens_vendas`.`QUANTIDADE` '+
                                 ' , `t_itens_vendas`.`VALORITENS` '+
                                 ' , `t_produtos`.`UNIDADE`    '+
                                 ' , `t_produtos`.`PRECOUNIT`  '+
                              ' FROM   '+
                                 ' `base_mfb`.`t_itens_vendas`'+
                                 ' INNER JOIN `base_mfb`.`t_vendas` '+
                                 '     ON (`t_itens_vendas`.`COD_VENDA` = `t_vendas`.`COD_VENDA`)'+
                                 ' INNER JOIN `base_mfb`.`t_produtos` '+
                                 '     ON (`t_itens_vendas`.`COD_PRODUTO` = `t_produtos`.`COD_PRODUTO`) '+
                                 ' INNER JOIN `base_mfb`.`t_clientes` '+
                                 '     ON (`t_vendas`.`COD_CLIENTE` = `t_clientes`.`COD_CLIENTE`) '+

                                 '        WHERE (  DATE_FORMAT(`t_vendas`.`DATAVENDA`, ''%d-%m-%Y'')   BETWEEN :datainicial AND :Datafinal)'+
                                 '        and (t_clientes.COD_CLIENTE =:codcli);');


     q_produtosVendidos.Parameters.ParamByName('codcli').Value :=Ed_codcli.Text;
     q_produtosVendidos.Parameters.ParamByName('datainicial').Value :=ed_inicial.Text; //FormatDateTime('yyyy,mm,dd',StrToDate(ed_inicial.Text));
     q_produtosVendidos.Parameters.ParamByName('datafinal').Value := ed_final.Text; // FormatDateTime('yyyy,mm,dd',StrToDate(ed_final.Text));
     q_produtosVendidos.Open;


       END;

       IF RadioButton1.Checked = TRUE THEN
       begin

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


     QITENS.Parameters.ParamByName('datainicial').Value :=ed_inicial.Text; //FormatDateTime('yyyy,mm,dd',StrToDate(ed_inicial.Text));
     QITENS.Parameters.ParamByName('datafinal').Value := ed_final.Text; // FormatDateTime('yyyy,mm,dd',StrToDate(ed_final.Text));
     QITENS.Open;



       end;







     
end;

procedure TRelatorios.PesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
 imprimir.SetFocus;
end;

procedure TRelatorios.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TRelatorios.BitBtn2Click(Sender: TObject);
begin
     ed_inicial.Text:='';
      ed_final.Text:='';
      Ed_codcli.Text:='';
      Label3.Caption:='';

      QITENS.Close;
      QITENS.open;
      q_produtosVendidos.Close;
      q_produtosVendidos.Open;
      Ed_codcli.Text:='';
      ed_inicial.Text:='  /  /    ' ;
      ed_final.Text:='  /  /    ' ;
      dbitens.Visible:=false;
   end;

procedure TRelatorios.QITENSCalcFields(DataSet: TDataSet);
begin
QITENStotal.Value:= (QITENSQUANTIDADE.Value * QITENSVALORITENS.Value);
end;

procedure TRelatorios.RadioButton1Click(Sender: TObject);
begin
dbitens.Visible:=true;
label9.Visible :=false;
Ed_codcli.Visible:=false;
SpeedButton1.Visible:=false;
Label3.Visible:=false;
end;

end.
