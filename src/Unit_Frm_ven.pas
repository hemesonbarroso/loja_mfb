unit Unit_Frm_ven;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB,FUNCOES, DBTables, Grids, DBGrids, DBClient,
  Mask, DBCtrls, ExtCtrls, ADODB
  ;

type
  TFrm_ven = class(TForm)
    Label30: TLabel;
    GroupBox1: TGroupBox;
    Ed_codcli: TEdit;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    CB_Form_pgto: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    confirm: TBitBtn;
    Label3: TLabel;
    DBGrid_rec: TDBGrid;
    DBGrid_Pes: TDBGrid;
    Ed_servico: TEdit;
    DS_serv: TDataSource;
    Q_pesqServBK: TQuery;
    Label4: TLabel;
    Confirmar: TBitBtn;
    Q_pesqServBKCOD_PRODUTO: TIntegerField;
    Q_pesqServBKDESCRICAO: TStringField;
    Q_pesqServBKMARCA: TStringField;
    Q_pesqServBKMODELO: TStringField;
    Q_pesqServBKQUANTIDADE: TFloatField;
    Q_pesqServBKPRECOUNIT: TFloatField;
    Q_pesqServBKEMBALAGEM: TStringField;
    Q_pesqServBKUNIDADE: TStringField;
    Q_pesqServBKPESOLIQUIDO: TFloatField;
    Q_pesqServBKPESOBRUTO: TFloatField;
    Q_pesqServBKDATACADASTRO: TDateTimeField;
    Q_pesqServBKORIGEM: TStringField;
    Q_pesqServBKCODFABRICA: TStringField;
    Q_pesqServBKCODBARRA: TStringField;
    Q_pesqServBKNCM: TStringField;
    Q_pesqServBKOBSERVACAO: TStringField;
    Q_pesqServBKSITUACAO: TStringField;
    Q_pesqServBKCodigo_forn: TIntegerField;
    CDS_serv: TClientDataSet;
    CDS_servcodigo: TStringField;
    CDS_servdescricao: TStringField;
    CDS_servqtd: TFloatField;
    CDS_servvlr_serv: TCurrencyField;
    Ed_valorTot1: TEdit;
    Ed_qtd: TEdit;
    DS_pesq: TDataSource;
    Edit_codigo: TEdit;
    Ed_Obs: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    Label10: TLabel;
    BitBtn2: TBitBtn;
    CDS_servSUBTOTAL: TFloatField;
    Label22: TLabel;
    Ed_perdesc: TEdit;
    Label23: TLabel;
    Ed_totalDesc: TEdit;
    Label24: TLabel;
    Pnel_item: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Q_pesqServ: TADOQuery;
    Q_pesqServCOD_PRODUTO: TAutoIncField;
    Q_pesqServCodigo_forn: TIntegerField;
    Q_pesqServDESCRICAO: TStringField;
    Q_pesqServMARCA: TStringField;
    Q_pesqServMODELO: TStringField;
    Q_pesqServPRECOUNIT: TBCDField;
    Q_pesqServEMBALAGEM: TStringField;
    Q_pesqServUNIDADE: TStringField;
    Q_pesqServPESOLIQUIDO: TFloatField;
    Q_pesqServPESOBRUTO: TFloatField;
    Q_pesqServDATACADASTRO: TDateTimeField;
    Q_pesqServORIGEM: TStringField;
    Q_pesqServCODFABRICA: TStringField;
    Q_pesqServCODBARRA: TStringField;
    Q_pesqServNCM: TStringField;
    Q_pesqServOBSERVACAO: TStringField;
    Q_pesqServSITUACAO: TStringField;
    Q_pesqServQUANTIDADE: TFloatField;
    Q1: TADOQuery;
    Q1PRECOUNIT: TFloatField;
    Q1QUANTIDADE: TFloatField;
    procedure Ed_codcliExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure confirmClick(Sender: TObject);
    procedure ConfirmarClick(Sender: TObject);
    procedure DBGrid_PesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_PesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_servicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_qtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure confirmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_qtdExit(Sender: TObject);
    procedure CDS_servBeforePost(DataSet: TDataSet);
    procedure DBGrid_recKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_Form_pgtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid_PesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CDS_servCalcFields(DataSet: TDataSet);
    procedure Ed_ObsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_perdescExit(Sender: TObject);
    procedure Ed_perdescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Frm_ven: TFrm_ven;
 

implementation

uses _Consulta, dm_fin;

{$R *.dfm}

procedure TFrm_ven.Ed_codcliExit(Sender: TObject);
var  q_veriforn :tADOquery;
begin


if Ed_codcli.Text <> '' then
  begin
    with  q_veriforn do begin
     q_veriforn:=tADOquery.create(self);
     q_veriforn.Connection:=dm.dm;
     close;
     sql.Clear;
     sql.add('select cod_cliente, Cgc_Cnpj,Ins_Est, Ins_Munic,'+
             ' Razao_Social,Nome_Fantasia, Tipo_forn, Endereco,'+
             ' Fone_Residencial,Fone_Comercial, Cidade, Estado,'+
             ' Bairro, Cep, Ativo_sn'+
             ' from t_clientes'+
             ' where cod_cliente =:cod_cliente');
         Parameters.ParamByName('cod_cliente').Value :=strtoint(Ed_codcli.text);
     open;
    end;
    if q_veriforn.Locate('cod_cliente',Ed_codcli.Text,[])=false then
       begin
       ShowMessage(' Código inválido  ! ! !');
       Ed_codcli.text:='';
       q_veriforn.destroy;
       Ed_codcli.SetFocus;
       exit;
       end;
       label6.Caption := q_veriforn.fieldbyname('Razao_Social').asstring;
        q_veriforn.destroy;

     end;
end;

procedure TFrm_ven.SpeedButton1Click(Sender: TObject);
var  campos, tit:TStrings;
     x, filtro:String;
begin

// filtro := 'Codigo_forn='+#39+(trim(edit1.Text))+#39;
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

procedure TFrm_ven.confirmClick(Sender: TObject);
begin
Q_pesqServ.Close;
Q_pesqServ.Parameters.ParamByName('item').Value:='%'+Ed_servico.Text+'%';
Q_pesqServ.Open;
DBGrid_Pes.Visible:=true;
DBGrid_Pes.SetFocus;
Pnel_item.Visible:=true;
end;

procedure TFrm_ven.ConfirmarClick(Sender: TObject);
var  Q_Insert,Q,Q_max:tADOquery;
     cont,cont2: integer;
     valor,RECEBE :real;
begin
     valor:=0;
     RECEBE:=0;
     cont:=0;



   if mymsg(' Confirma Pedido de venda !') then
      begin



               if Ed_codcli.Text='' then
             begin
             ShowMessage('Informe um cliente!');
             Ed_codcli.SetFocus;
             exit;
             end;




             if CDS_serv.RecordCount <= 0 then
             begin
             ShowMessage('Não há produtos na lista de pedidos !');
             exit;
             end;


             if CB_Form_pgto.Text='' then
             begin
             Mensagem('informe uma forma de pagamento! ');
             CB_Form_pgto.SetFocus;
             exit;
             end;







      if  CDS_serv.RecordCount <> 0 then

        begin

                 // contar qtd de iten
                       CDS_serv.First ;
                 while not CDS_serv.Eof do
                 begin
                    cont :=cont +1;
                    valor :=valor + CDS_servSUBTOTAL.Value;
                    CDS_serv.Next;
                 end;


                 recebe := valor - (valor * (strtofloat(Ed_perdesc.Text) / 100));



                 // insert na cabeça do pedido

                         with Q_Insert do
                         begin

                          Q_Insert:=tADOquery.create(self);
                          Q_Insert.Connection:=dm.dm;
                          close;
                          sql.Clear;
                          sql.add('insert into t_vendas'+
                                  ' (COD_CLIENTE,DATAVENDA,VALORTOTAL,FORMAPAGAMENTO,QTDITENS,OBSERVACAO,PERDESC,TOTALDESC) '+
                                  ' values(:COD_CLIENTE,:DATAVENDA,:VALORTOTAL,:FORMAPAGAMENTO,:QTDITENS,:OBSERVACAO,:PERDESC,:TOTALDESC)'); //RETURNING COD_VENDA INTO :CHAVE'
                                  Parameters.ParamByName('COD_CLIENTE').Value        := Ed_codcli.Text;
                                  Parameters.ParamByName('DATAVENDA').Value        := FormatDateTime('yyyy,mm,dd',Date);
                                  Parameters.ParamByName('VALORTOTAL').Value            :=valor;
                                  if CB_Form_pgto.items[CB_Form_pgto.ItemIndex]= 'Venda à vista' then
                                  Parameters.ParamByName('FORMAPAGAMENTO').value    :='V'
                                  else
                                  Parameters.ParamByName('FORMAPAGAMENTO').Value     :='P';
                                   Parameters.ParamByName('QTDITENS').Value              :=cont;
                                  Parameters.ParamByName('OBSERVACAO').Value         := Ed_Obs.Text;
                                  Parameters.ParamByName('PERDESC').Value            := Ed_perdesc.Text;
                                  Parameters.ParamByName('TOTALDESC').Value          := recebe;

                           ExecSQL;
                         end;
                          Q_Insert.destroy;



                        // pegar o ultimo codigo da tabela pedido   , incrementa  + 1

                        Cont2 :=0;




                        with Q_max do begin
                        Q_max:=tADOquery.create(self);
                        Q_max.Connection:=dm.dm;
                        close;
                        sql.Clear;
                        sql.add('select max(COD_VENDA) as Codigo'+
                                ' from t_vendas');
                        open;
                        end;
                        cont2:=Q_max.fieldbyname('Codigo').AsInteger;

                        Q_max.Destroy;


                   // inclusaõ na tabela corpo do pedido

                        CDS_serv.First;
                   while not CDS_serv.Eof do
                      begin
                           with Q_Insert do
                           begin

                            Q_Insert:=tADOquery.create(self);
                            Q_Insert.Connection:=DM.dm;
                            close;
                            sql.Clear;
                            sql.add('insert into t_itens_vendas '+
                                  ' (COD_VENDA,COD_PRODUTO,DESCRICAO,QUANTIDADE,VALORITENS) '+
                                    ' values(:COD_VENDA,:COD_PRODUTO,:DESCRICAO,:QUANTIDADE,:VALORITENS)');
                                    Parameters.ParamByName('COD_VENDA').Value            := cont2;
                                    Parameters.ParamByName('COD_PRODUTO').Value           := CDS_servcodigo.AsString ;
                                    Parameters.ParamByName('DESCRICAO').Value            := CDS_servdescricao.AsString;
                                    Parameters.ParamByName('QUANTIDADE').Value            :=  STRTOFLOAT(CDS_servqtd.Text);
                                    Parameters.ParamByName('VALORITENS').Value            :=  STRTOFLOAT(CDS_servvlr_serv.Text);

                             ExecSQL;
                           end;
                           Q_Insert.destroy;


                            Q:=tADOquery.create(self);
                            Q.Connection:=DM.dm;
                            q.close;
                            q.sql.Clear;
                            q.sql.add(' select COD_PRODUTO,QUANTIDADE FROM t_produtos  WHERE COD_PRODUTO=:COD_PRODUTO');
                            q.Parameters.ParamByName('COD_PRODUTO').Value            := CDS_servcodigo.AsString ;;
                            Q.Open ;

                           // UODATE ALTERAR QUANTIDADE ESTOQUE
                          with Q_Insert do
                           begin

                            Q_Insert:=tADOquery.create(self);
                            Q_Insert.Connection:=DM.dm;
                            Q_Insert.close;
                            Q_Insert.sql.Clear;
                            Q_Insert.sql.add('update  t_produtos '+
                                   ' set QUANTIDADE =:QUANTIDADE '+
                                   ' where COD_PRODUTO=:COD_PRODUTO');
                                    Parameters.ParamByName('QUANTIDADE').Value            := strtofloat(q.fieldbyname('QUANTIDADE').Value)  -   CDS_servqtd.value;
                                    Parameters.ParamByName('COD_PRODUTO').Value           := CDS_servcodigo.AsString;

                             Q_Insert.ExecSQL;
                           end;
                           q.Destroy;
                           Q_Insert.destroy;






                          CDS_serv.Next;

                      end;





                      end
                        else
                              exit;


              Mensagem(' Inclusão realizada com sucesso !  ');
              BitBtn1Click(self);

          end;

end;


procedure TFrm_ven.DBGrid_PesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var valor :real;
       q:tADOquery;
begin

if key = vk_return then
begin

DBGrid_Pes.Visible:=false;
Pnel_item.Visible:=false;



                           Q1.Close;
                           Q1.Parameters.ParamByName('CODPRODUTO').Value :=  Q_pesqServCodigo_forn.Value;
                           q1.open;


                                 // faz a verificação da qtd em estoque se for menor bloqueia
                          if  (q1.fieldbyname('quantidade').AsFloat ) <=0 then
                           begin
                            Mensagem('Estoque insuficiente, Menor ou = (zero)!');
                            Ed_servico.SetFocus;
                            exit;
                           end;



                           /// verifica se o item ja se encontra na lista de pedidos

                         if   CDS_serv.Locate('codigo',Q_pesqServCOD_PRODUTO.Value,[])=true then
                         begin
                            Mensagem('Este Item já se encotra na lista de pedidos!');
                            Ed_servico.SetFocus;
                            exit;

                         end;


      valor :=0;

      if strtofloat(ed_qtd.Text) <= 0 then
        ed_qtd.Text:='1';

      CDS_serv.Insert;
      CDS_servcodigo.Value          :=Q_pesqServCOD_PRODUTO.AsString;
      CDS_servDescricao.Value       :=Q_pesqServDESCRICAO.AsString;
      CDS_servqtd.Value             :=Q_pesqServQUANTIDADE.Asfloat;
      CDS_servVlr_serv.Value        :=Q_pesqServPRECOUNIT.Value;
      CDS_servqtd.Value             :=strtofloat(ed_qtd.Text);
      CDS_serv.Post;

      Edit_codigo.Text:=Q_pesqServCOD_PRODUTO.AsString;
      Ed_servico.Text := Q_pesqServDESCRICAO.AsString;


    //  Ed_servico.Text:='';

      Ed_qtd.SetFocus;

     


Q_pesqServ.Close;

end;


end;

procedure TFrm_ven.DBGrid_PesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
      begin
      DBGrid_Pes.Visible:=false;
      Pnel_item.Visible:=false;
      Q_pesqServ.Close;
      Ed_servico.SetFocus;
      end;
end;

procedure TFrm_ven.Ed_codcliKeyDown(Sender: TObject; var Key: Word;
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
   CB_Form_pgto.SetFocus;

end;

procedure TFrm_ven.Ed_servicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =vk_return then
   confirm.SetFocus;
end;

procedure TFrm_ven.Ed_qtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =vk_return then
   confirm.SetFocus;
end;

procedure TFrm_ven.confirmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =vk_return then
   DBGrid_Pes.SetFocus;
end;

procedure TFrm_ven.Ed_qtdExit(Sender: TObject);
var
      valor : real;
begin

    if  CDS_serv.RecordCount <> 0 then
                 begin



                      if Ed_qtd.Text ='' then
                      begin
                      Mensagem('Quantidde não aceita valor nulo!');
                      Ed_qtd.Text;
                      Ed_qtd.SetFocus;
                      end;

                           Q1.Close;
                           Q1.Parameters.ParamByName('CODPRODUTO').Value        :=  CDS_servcodigo.Value;
                           q1.open;
                      


                          // verifica qtd em estoque
                             CDS_serv.Locate('codigo',Edit_codigo.Text,[]);


                                 // faz a verificação da qtd em estoque se for menor bloqueia
                          if (strtofloat(Ed_qtd.Text)) >  (q1.fieldbyname('QUANTIDADE').AsFloat )then
                           begin
                            Mensagem('Quantidade disponivel Insuficiente ,  QTD ATUAL : ' + FLOATTOSTR(q1.fieldbyname('quantidade').AsFloat) ) ;
                            Ed_qtd.SetFocus;
                            exit;
                           end;





                           CDS_serv.Edit;
                           CDS_servqtd.Value:=strtofloat(Ed_qtd.text);
                           CDS_servVlr_serv.Value   :=q1.fieldbyname('PRECOUNIT').AsFloat * strtofloat(ed_qtd.text);
                           CDS_serv.post;

                           Ed_servico.Text:='';
                           Ed_qtd.Text:='1';
                           Ed_servico.SetFocus;

                           Edit_codigo.Text:='';
                           Ed_servico.Text:='';





     // calcula totais do pedido
        CDS_serv.First;
        while not CDS_serv.Eof do
        begin
        valor := valor + CDS_servSUBTOTAL.Value;

        CDS_serv.Next;
        end;

        Ed_valorTot1.text := formatfloat('#,##0.00',valor);

         Ed_perdescExit(self);

   end;
end;

procedure TFrm_ven.CDS_servBeforePost(DataSet: TDataSet);

begin
                  (*
                if  CDS_serv.RecordCount <> 0 then
                 begin

                         with q do
                         begin

                          q:=tquery.create(self);
                          q.DatabaseName:='dm';
                          close;
                          sql.Clear;
                          sql.add(' select PRECOUNIT from  t_produtos where COD_PRODUTO = :COD_PRODUTO');

                                  ParamByName('COD_PRODUTO').Asstring         := CDS_servcodigo.Value;

                           ExecSQL;
                         end;

                          if   CDS_servqtd.AsFloat <= 0 then
                          CDS_servVlr_serv.Value :=1
                          else
                          CDS_servVlr_serv.Value  := q.fieldbyname('PRECOUNIT').AsFloat  *  CDS_servqtd.AsFloat;
                          q.destroy;

                       end;
                       *)
end;

procedure TFrm_ven.DBGrid_recKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var valor :real;
begin



if key = vk_delete then
  begin


    if mymsg(' Confirma exclusão do iten da lista de pedidos !') then
      begin
      valor :=0;

      CDS_serv.Delete;
         // calcula totais do pedido
      CDS_serv.First;
      while not CDS_serv.Eof do
      begin
      valor := valor + CDS_servVlr_serv.Value;

      CDS_serv.Next;
      end;

      Ed_valorTot1.text := formatfloat('#,##0.00',valor);

      end
       else
         exit
  end;
end;

procedure TFrm_ven.CB_Form_pgtoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
Ed_servico.SetFocus;
end;

procedure TFrm_ven.BitBtn1Click(Sender: TObject);
begin
Ed_codcli.Text :='';
CB_Form_pgto.Text:='';
Edit_codigo.Text:='';
Ed_servico.Text:='';
Ed_qtd.Text:='1';
Ed_Obs.Text:='';
Label6.Caption:='...';
Ed_valorTot1.Text:='0,00';
Ed_perdesc.Text:='0,00';
Ed_totalDesc.Text:='0,00';


    if CDS_serv.RecordCount<> 0 then
    begin

      CDS_serv.First;
      while not CDS_serv.Eof do
      begin
      CDS_serv.Delete;
      CDS_serv.Next;
      end;


        CDS_serv.First;
      while not CDS_serv.Eof do
      begin
      CDS_serv.Delete;
      CDS_serv.Next;
      end;


    end;


      Q_pesqServ.Close;

end;

procedure TFrm_ven.BitBtn2Click(Sender: TObject);
begin

BitBtn1Click(self);
close;
end;

procedure TFrm_ven.DBGrid_PesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Q_pesqServORIGEM.Value ='N' then
label21.Caption :='Nacional'
else
label21.Caption :='Importado';
label21.Update;
end;

procedure TFrm_ven.SpeedButton2Click(Sender: TObject);
begin
DBGrid_Pes.Visible:=false;
Pnel_item.Visible:=false;
end;

procedure TFrm_ven.CDS_servCalcFields(DataSet: TDataSet);
begin
CDS_servSUBTOTAL.Value := (CDS_servqtd.Value * CDS_servvlr_serv.Value);
end;

procedure TFrm_ven.Ed_ObsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =vk_return then
   Ed_perdesc.SetFocus;
end;

procedure TFrm_ven.Ed_perdescExit(Sender: TObject);
var valortot,recebe : real;
begin

     if  Ed_totalDesc.Text <>'' then
      begin
      recebe:=0;
      valortot :=0;

                 CDS_serv.First ;
                 while not CDS_serv.Eof do
                 begin
                    valortot := valortot + CDS_servSUBTOTAL.Value;
                    CDS_serv.Next;
                 end;

    recebe := valortot - valortot * (strtofloat(Ed_perdesc.Text) / 100);
    Ed_totalDesc.Text :=formatfloat('#,##0.00',recebe);;
    end
    else
     Ed_totalDesc.Text:='0,00';
end;

procedure TFrm_ven.Ed_perdescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   Confirmar.SetFocus;
end;

end.
procedure TFrm_ven.DBGrid_PesExit(Sender: TObject);
begin

end;


