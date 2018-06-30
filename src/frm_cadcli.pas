unit frm_cadcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DBTables,funcoes,MessageForm, ExtCtrls, DB,
  ToolWin, ComCtrls, Grids, DBGrids, Mask, ADODB;

type
  TFrm_cli = class(TForm)
    Notebook1: TNotebook;
    Label3: TLabel;
    lbStatus: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Bevel6: TBevel;
    Label30: TLabel;
    Bevel12: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Ed_codcli: TEdit;
    Ed_inscMuni: TEdit;
    Ed_Razao: TEdit;
    Ed_End: TEdit;
    Insc_est: TEdit;
    Ed_Bairro: TEdit;
    Ed_Fone_Comer: TEdit;
    Ed_FoneRes: TEdit;
    Ed_Cidade: TEdit;
    Cbx_Estado: TComboBox;
    Fisica: TRadioButton;
    Juridica: TRadioButton;
    chek_Ativo: TCheckBox;
    Salvar: TBitBtn;
    edmak_CEP: TMaskEdit;
    ed_Cgc_cpf: TMaskEdit;
    Ed_nomefanta: TEdit;
    BitBtn33: TBitBtn;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    LbStatusUsu: TLabel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Label57: TLabel;
    Bevel25: TBevel;
    Ed_senha: TEdit;
    Ed_susario: TEdit;
    StaticText8: TStaticText;
    CheckAcesso: TCheckBox;
    CheckAtivoUsu: TCheckBox;
    GroupBox3: TGroupBox;
    Label56: TLabel;
    DBGrid2: TDBGrid;
    SalvarUsu: TBitBtn;
    ButNovoUsu: TBitBtn;
    CheckVen: TCheckBox;
    CheckCadItens: TCheckBox;
    BitBtn30: TBitBtn;
    ToolBar1: TToolBar;
    BTnovo: TBitBtn;
    SpeedButton1: TSpeedButton;
    ADOQuery1: TADOQuery;
    procedure ed_codcliExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure BTnovoClick(Sender: TObject);
    procedure Ed_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_nomefantaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_nomefantaKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_RazaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_RazaoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn33Click(Sender: TObject);
    procedure FisicaClick(Sender: TObject);
    procedure JuridicaClick(Sender: TObject);
    procedure ed_Cgc_cpfExit(Sender: TObject);



  private
    { Private declarations }
  public
 { Public declarations }
  end;

var
  Frm_cli: TFrm_cli;

implementation

uses dm_fin, _Consulta, Unit_CadFornecedor;

{$R *.dfm}

procedure TFrm_cli.ed_codcliExit(Sender: TObject);
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
             ' where Cod_cliente =:Cod_cliente' );
      Parameters.ParamByName('Cod_cliente').Value :=strtoint(Ed_codcli.text);
     open;
    end;
    if q_veriforn.Locate('Cod_cliente',Ed_codcli.Text,[])=false then
       begin
       Mensagem(' Código inválido  !');
       Ed_codcli.text:='';
       q_veriforn.destroy;
       Ed_codcli.SetFocus;
       exit;
       end;

       lbStatus.Caption:='Alteração';
      // Salvar.Enabled  :=false;
       if q_veriforn.fieldbyname('Cod_cliente').AsString='F' then
       begin
       ed_Cgc_cpf.Text:='';
       ed_Cgc_cpf.EDITMASK:='000\.000\.000\-00;1;';
       Fisica.Checked := true;
       end
       else
       Fisica.Checked :=false;

       if q_veriforn.fieldbyname('Cod_cliente').AsString='J' then
       begin
       ed_Cgc_cpf.Text:='';
       ed_Cgc_cpf.EDITMASK:='00\.000\.000\/0000\-00;1;';
       Juridica.Checked := true;
       end
       else
       Juridica.Checked :=false;

       if q_veriforn.fieldbyname('Ativo_sn').AsString='S' then
       chek_Ativo.Checked :=true
       else
       chek_Ativo.Checked :=false;

       if  q_veriforn.fieldbyname('Tipo_forn').AsString='F' then
           Fisica.Checked:=true
           else
           Juridica.Checked:=true;


       Ed_Razao.Text      := q_veriforn.fieldbyname('Razao_Social').AsString;
       Ed_nomefanta.Text  := q_veriforn.fieldbyname('Nome_Fantasia').AsString;
       ed_Cgc_cpf.Text    := q_veriforn.fieldbyname('Cgc_Cnpj').AsString;
       Insc_est.Text      := q_veriforn.fieldbyname('Ins_Est').AsString;
       Ed_inscMuni.Text   := q_veriforn.fieldbyname('Ins_Munic').AsString;
       Ed_End.Text        := q_veriforn.fieldbyname('Endereco').AsString;
       Ed_Bairro.Text     := q_veriforn.fieldbyname('Bairro').AsString;
       edmak_CEP.Text     := q_veriforn.fieldbyname('Cep').AsString;
       Ed_Fone_Comer.Text := q_veriforn.fieldbyname('Fone_Comercial').AsString;
       Ed_FoneRes.Text    := q_veriforn.fieldbyname('Fone_Residencial').AsString;
       Ed_Cidade.Text     := q_veriforn.fieldbyname('Cidade').AsString;
       Cbx_Estado.Text    := q_veriforn.fieldbyname('Estado').AsString;

      label3.Caption:=q_veriforn.fieldbyname('Razao_Social').asstring;
      q_veriforn.destroy;
       btNovo.Caption:='Cancelar';
  end;



end;
procedure TFrm_cli.SpeedButton1Click(Sender: TObject);

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
     lbStatus.Caption:=' Alteração ';
    end
    else
  exit;
    campos.destroy;
    tit.destroy;
    Ed_codcli.SetFocus;


end;

procedure TFrm_cli.SpeedButton3Click(Sender: TObject);

begin
// Procedimento para a Pesquisa do Item




end;

procedure TFrm_cli.SalvarClick(Sender: TObject);
var   Q_Insert,Q_max,q_update : Tadoquery;
      Cont: integer;
begin


    if Cbx_Estado.Text ='' then
       begin
     //  Mensagem('  Inoforme a operação para confirmar !');
       ShowMessage('  Inoforme a operação para confirmar !');
       Cbx_Estado.SetFocus;
       exit;
       end;


    if lbStatus.Caption = 'Inserir' then
     begin

     if  ((ed_Cgc_cpf.text = '   .   .   -  ') or (ed_Cgc_cpf.text = '  .   .   /    -  ')
         or (ed_Cgc_cpf.text ='000.000.000-00') or (ed_Cgc_cpf.text = '00.000.000/0000-00')) then

         begin
         //Mensagem( '  CGC ou CPF inválido  ! ! !');
         ShowMessage('  Inoforme a operação para confirmar !');
         ed_Cgc_cpf.SetFocus;
         exit;
         end;


        // Inseri na tabela de clientes

           with Q_Insert do begin
            Q_Insert:=tADOquery.create(self);
            Q_Insert.Connection:=dm.dm;
            close;
            Q_Insert.sql.Clear;
            Q_Insert.sql.add('insert into t_clientes'+
            ' (Cgc_Cnpj,Ins_Est, Ins_Munic, Razao_Social,'+
            ' Nome_Fantasia, Tipo_forn, Endereco, Fone_Residencial,'+
            ' Fone_Comercial, Cidade, Estado, Bairro, Cep, Ativo_sn,data_cad)'+
            ' values(:Cgc_Cnpj,:Ins_Est, :Ins_Munic, :Razao_Social,'+
            ' :Nome_Fantasia, :Tipo_forn, :Endereco, :Fone_Residencial,'+
            ' :Fone_Comercial,:Cidade, :Estado, :Bairro, :Cep, :Ativo_sn,:data_cad)');
        //    ParamByName('Codigo_forn').AsInteger     := cont;
            Parameters.ParamByName('Cgc_Cnpj').value         := ed_Cgc_cpf.Text;
            Parameters.ParamByName('Ins_Est').value          := Insc_est.Text;
            Parameters.ParamByName('Ins_Munic').value        := Ed_inscMuni.Text;
            Parameters.ParamByName('Razao_Social').value     := Ed_Razao.Text;
            Parameters.ParamByName('Nome_Fantasia').value    := Ed_nomefanta.text;
            if fisica.Checked = true then
            Parameters.ParamByName('Tipo_forn').value        := 'F'
            else
            Parameters.ParamByName('Tipo_forn').value        := 'J';
            Parameters.ParamByName('Endereco').value         := Ed_codcli.Text;
            Parameters.ParamByName('Fone_Residencial').value := Ed_FoneRes.Text;
            Parameters.ParamByName('Fone_Comercial').value   := Ed_Fone_Comer.Text;
            Parameters.ParamByName('Cidade').value           := Ed_Cidade.text;
            Parameters.ParamByName('Estado').value           := Cbx_Estado.Text;
            Parameters.ParamByName('Bairro').value           := Ed_Bairro.Text;
            Parameters.ParamByName('Cep').value              := edmak_CEP.Text ;  //Ed_cep.text;
            Parameters.ParamByName('Ativo_sn').value         := 'A';
            Parameters.ParamByName('Data_cad').value       := FormatDateTime('yyyy,mm,dd',Date);
            Q_Insert.ExecSQL;
            Q_Insert.destroy;

           end;
          Mensagem( 'Inclusão realizada com sucesso !');
          BTnovoClick(self);
            lbStatus.Caption :='Aguardando Ação';
            Ed_codcli.SetFocus;
     end;
   // fim insert


    if lbStatus.Caption ='Alteração' then
       begin

       if Ed_codcli.Text ='' then
       begin
       Mymsg(' Código do Cliente inválido ! ');
       Ed_codcli.SetFocus;
       exit;
       end;

        if mymsg(' Confirma alteração do Cliente '+ Ed_codcli.text +'  ?  ') then
         begin
           with q_update do
           begin
           q_update:=tadoquery.create(self);
           q_update.Connection:=dm.dm;
           q_update.close;
           q_update.sql.Add('update t_clientes'+
                   '  set Cgc_Cnpj =:Cgc_Cnpj,Ins_Est =:Ins_Est,'+
                   '  Ins_Munic =:Ins_Munic , Razao_Social =:Razao_Social,Nome_Fantasia =:Nome_Fantasia,'+
                   '  Tipo_forn =:Tipo_forn, Endereco =:Endereco , Fone_Residencial =:Fone_Residencial,'+
                   '  Fone_Comercial =:Fone_Comercial, Cidade =:Cidade, Estado =:Estado, Bairro =:Bairro,'+
                   '  Cep =:Cep, Ativo_sn =:Ativo_sn'+
                   '  where cod_cliente =:cod_cliente');

                    Parameters.ParamByName('cod_cliente').Value         :=strtoint(Ed_codcli.text);
                    Parameters.ParamByName('Cgc_Cnpj').Value         :=ed_Cgc_cpf.Text;
                    Parameters.ParamByName('Ins_Est').Value          :=Insc_est.text;
                    Parameters.ParamByName('Ins_Munic').Value        :=Ed_inscMuni.Text;
                    Parameters.ParamByName('Razao_Social').Value     :=Ed_Razao.text;
                    Parameters.ParamByName('Nome_Fantasia').Value    :=Ed_nomefanta.text;
                    if Fisica.Checked = true then
                    Parameters.ParamByName('Tipo_forn').Value        :='F'
                    else
                    Parameters.ParamByName('Tipo_forn').Value        :='J';
                    Parameters.ParamByName('Endereco').Value         :=Ed_End.Text;
                    Parameters.ParamByName('Fone_Residencial').Value :=Ed_FoneRes.text;
                    Parameters.ParamByName('Fone_Comercial').Value   :=Ed_Fone_Comer.Text;
                    Parameters.ParamByName('Cidade').Value           :=ed_cidade.Text;
                    Parameters.ParamByName('Estado').Value           :=Cbx_Estado.Text;
                    Parameters.ParamByName('Bairro').Value           :=Ed_Bairro.Text;
                    Parameters.ParamByName('Cep').Value              :=edmak_CEP.Text;
                    if chek_Ativo.Checked = true then
                    Parameters.ParamByName('Ativo_sn').Value         :='A'
                    else
                    Parameters.ParamByName('Ativo_sn').Value         :='F';
                    q_update.ExecSQL;
                    q_update.Destroy;
           end;
           BTnovoClick(self);
            lbStatus.Caption :='Aguardando Ação';
            Ed_codcli.SetFocus;

       end
        else
         exit;

end;
  end;
procedure TFrm_cli.BTnovoClick(Sender: TObject);
begin
 Ed_Razao.Text:='';
      Ed_nomefanta.Text:='';
      ed_Cgc_cpf.Text:='';
      Insc_est.Text:='';
      Ed_inscMuni.Text:='';
      Ed_End.Text:='';
      Ed_Bairro.Text:='';
      Ed_Cidade.Text:='';
      Ed_Fone_Comer.Text:='';
      Ed_FoneRes.Text:='';
      Ed_codcli.Text:='';
      Cbx_Estado.text:='';
      label3.Caption:='';
      chek_Ativo.Checked :=false;
      Fisica.Checked := false;
      Juridica.Checked :=false;
      lbStatus.Caption := 'Inserir';
//      limpaeditform(FrmPrincipal);
      edmak_CEP.Text:='_____-___';
       btNovo.Caption:='Novo';
end;

procedure TFrm_cli.Ed_codcliKeyDown(Sender: TObject; var Key: Word;
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
     lbStatus.Caption:=' Alteração ';
    end
    else
  exit;
    campos.destroy;
    tit.destroy;
    Ed_codcli.SetFocus;
 end;

 IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);


end;

procedure TFrm_cli.Ed_codcliKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_cli.Ed_nomefantaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_cli.Ed_nomefantaKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_cli.Ed_RazaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_cli.Ed_RazaoKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_cli.BitBtn33Click(Sender: TObject);
begin
close;
end;

procedure TFrm_cli.FisicaClick(Sender: TObject);
begin
ed_Cgc_cpf.EDITMASK:='000\.000\.000\-00;1;';
end;

procedure TFrm_cli.JuridicaClick(Sender: TObject);
begin
ed_Cgc_cpf.EDITMASK:='00\.000\.000\/0000\-00;1;';
end;

procedure TFrm_cli.ed_Cgc_cpfExit(Sender: TObject);
var Q_Insert1 :TADOquery;
begin





// verifica se o fornecedor ja existe
 if  (lbStatus.Caption ='Inserir') then
   begin
      with  Q_Insert1 do begin
            Q_Insert1:=tADOquery.create(self);
            Q_Insert1.Connection:=dm.dm;
            close;
            Q_Insert1.sql.Clear;
            sql.add('select  Cgc_Cnpj from Cad_Fornecedor '+
               ' where Cgc_Cnpj =:Cgc_Cnpj');
               Parameters.ParamByName('Cgc_Cnpj').Value :=ed_Cgc_cpf.text;
       open;
      end;
      if Q_Insert1.Locate('Cgc_Cnpj',ed_Cgc_cpf.text,[])=true then
         begin
         Mensagem(' Fornecedor já cadastrado ! ! !');
         Q_Insert1.destroy;
         ed_Cgc_cpf.SetFocus;
         exit;
        end;
        Q_Insert1.destroy;
    end;

end;

end.
