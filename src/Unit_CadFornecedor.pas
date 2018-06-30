unit Unit_CadFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dbcgrids, DBCtrls, StdCtrls, jpeg, ExtCtrls, Buttons, ComCtrls,
  Grids, DBGrids,  Mask, Gauges, DB,funcoes, DBTables, ToolWin,
  ADODB;

type
  TFrm_CadForn = class(TForm)
    Notebook1: TNotebook;
    Label4: TLabel;
    lbStatus: TLabel;
    Label6: TLabel;
    Bevel3: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Bevel6: TBevel;
    Label5: TLabel;
    Bevel12: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Ed_codforne: TEdit;
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
    Novo: TBitBtn;
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
    SpeedButton1: TSpeedButton;
    Q_Insert1: TADOQuery;
    procedure Ed_codforneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_codforneExit(Sender: TObject);
    procedure Ed_codforneKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_RazaoChange(Sender: TObject);
    procedure Ed_RazaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_RazaoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_Cgc_cpfExit(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure Ed_nomefantaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_Cgc_cpfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Insc_estKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_inscMuniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_EndKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_BairroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_CidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Cbx_EstadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edmak_CEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_Fone_ComerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_FoneResKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_nomefantaKeyPress(Sender: TObject; var Key: Char);
    procedure ed_Cgc_cpfKeyPress(Sender: TObject; var Key: Char);
    procedure Insc_estKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_inscMuniKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_EndKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_BairroKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure Cbx_EstadoKeyPress(Sender: TObject; var Key: Char);
    procedure edmak_CEPKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_Fone_ComerKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_FoneResKeyPress(Sender: TObject; var Key: Char);
    procedure FisicaClick(Sender: TObject);
    procedure JuridicaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Frm_CadForn: TFrm_CadForn;

implementation

uses _Consulta, dm_fin;

{$R *.dfm}

procedure TFrm_CadForn.Ed_codforneKeyDown(Sender: TObject; var Key: Word;
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
    campos.add('Codigo_forn');
    campos.add('Ativo_sn');

    tit.add('Nome do Fornecedor');
    tit.add('Codigo');
    tit.add('Ativo S/N');



    x:=Consulta.execute(campos,tit,'Cad_Fornecedor','Codigo_forn',filtro);


    if x <> '' then
    begin
     Ed_codforne.text := x;
     lbStatus.Caption:=' Alteração ';
    end
    else
  exit;
    campos.destroy;
    tit.destroy;
    Ed_codforne.SetFocus;
 end;

 IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);



end;

procedure TFrm_CadForn.Ed_codforneExit(Sender: TObject);
var  q_veriforn :tADOquery;
begin
if Ed_codforne.Text <> '' then
  begin
    with  q_veriforn do begin
     q_veriforn:=tADOquery.create(self);
     q_veriforn.Connection:=dm.dm;
     close;
     sql.Clear;
     sql.add('select Codigo_forn, Cgc_Cnpj,Ins_Est, Ins_Munic,'+
             ' Razao_Social,Nome_Fantasia, Tipo_forn, Endereco,'+
             ' Fone_Residencial,Fone_Comercial, Cidade, Estado,'+
             ' Bairro, Cep, Ativo_sn'+
             ' from Cad_Fornecedor'+
             ' where Codigo_forn =:Codigo_forn');
       Parameters.ParamByName('Codigo_forn').value :=strtoint(Ed_codforne.text);

     open;
    end;
    if q_veriforn.Locate('Codigo_forn',Ed_codforne.Text,[])=false then
       begin
        Mensagem('Código inválido '); // ShowMessage(' Código inválido  ! ! !');
       Ed_codforne.text:='';
       q_veriforn.destroy;
       Ed_codforne.SetFocus;
       exit;
       end;

       lbStatus.Caption:='Alteração';
      // Salvar.Enabled  :=false;
       if q_veriforn.fieldbyname('Tipo_forn').AsString='F' then
       begin
       ed_Cgc_cpf.Text:='';
       ed_Cgc_cpf.EDITMASK:='000\.000\.000\-00;1;';
       Fisica.Checked := true;
       end
       else
       Fisica.Checked :=false;

       if q_veriforn.fieldbyname('Tipo_forn').AsString='J' then
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

      label4.Caption:=q_veriforn.fieldbyname('Razao_Social').asstring;
      q_veriforn.destroy;

      Novo.Caption:='Cancelar';
  end;

end;

procedure TFrm_CadForn.Ed_codforneKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_RazaoChange(Sender: TObject);
begin
 if ((lbStatus.Caption ='Inserir') and (Juridica.Checked = false) and (Fisica.Checked = false)) then
    begin
      ed_Cgc_cpf.Text:='';
     if not  Mymsg(' Escolha pessoa do fornecedor  ! ! ! ') then
      ed_Cgc_cpf.Text:=''
    end;
end;

procedure TFrm_CadForn.Ed_RazaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_RazaoKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.ed_Cgc_cpfExit(Sender: TObject);

begin



// verifica se o fornecedor ja existe
 if  (lbStatus.Caption ='Inserir') then
   begin
      with  Q_Insert1 do begin
       close;
       sql.Clear;
       sql.add('select  Cgc_Cnpj from Cad_Fornecedor '+
               ' where Cgc_Cnpj =:Cgc_Cnpj');
               Parameters.ParamByName('Cgc_Cnpj').Value :=ed_Cgc_cpf.text;
       open;
      end;
      if Q_Insert1.Locate('Cgc_Cnpj',ed_Cgc_cpf.text,[])=true then
         begin
         Mensagem(' Fornecedor já cadastrado ! ! !');
         ed_Cgc_cpf.SetFocus;
         exit;
         end;
    end;

end;

procedure TFrm_CadForn.SalvarClick(Sender: TObject);
var   q_update :tadoquery;
      Cont: integer;
begin


    if Cbx_Estado.Text ='' then
       begin
       Mensagem('  Inoforme o estado para confirmar esta operação  ! ! !');
       Cbx_Estado.SetFocus;
       exit;
       end;


    if lbStatus.Caption = 'Inserir' then
     begin

     if  ((ed_Cgc_cpf.text = '   .   .   -  ') or (ed_Cgc_cpf.text = '  .   .   /    -  ')
         or (ed_Cgc_cpf.text ='000.000.000-00') or (ed_Cgc_cpf.text = '00.000.000/0000-00')) then

         begin
         Mensagem( '  CGC ou CPF inválido  ! ! !');
         ed_Cgc_cpf.SetFocus;
         exit;
         end;


           with Q_Insert1 do
           begin
            Q_Insert1.close;
            Q_Insert1.sql.Clear;
            Q_Insert1.SQL.Add('insert into Cad_Fornecedor (Cgc_Cnpj'+
            ' ,Ins_Est'+
            ' ,Ins_Munic'+
            ' ,Razao_Social'+
            ' ,Nome_Fantasia'+
            ' ,Tipo_forn'+
            ' ,Endereco'+
            ' ,Fone_Residencial'+
            ' ,Fone_Comercial'+
            ' ,Cidade'+
            ' ,Estado'+
            ' ,Bairro'+
            ' ,Cep'+
            ' ,Ativo_sn'+
            ' ,data_cad)'+
            ' values(:Cgc_Cnpj'+
            ' ,:Ins_Est'+
            ' ,:Ins_Munic'+
            ' ,:Razao_Social'+
            ' ,:Nome_Fantasia '+
            ' ,:Tipo_forn'+
            ' ,:Endereco'+
            ' ,:Fone_Residencial'+
            ' ,:Fone_Comercial'+
            ' ,:Cidade'+
            ' ,:Estado'+
            ' ,:Bairro'+
            ' ,:Cep'+
            ' ,:Ativo_sn'+
            ' ,:data_cad)');

            Parameters.ParamByName('Cgc_Cnpj').Value        := ed_Cgc_cpf.Text;
            Parameters.ParamByName('Ins_Est').Value         := Insc_est.Text;
            Parameters.ParamByName('Ins_Munic').Value        := Ed_inscMuni.Text;
            Parameters.ParamByName('Razao_Social').Value     := Ed_Razao.Text;
            Parameters.ParamByName('Nome_Fantasia').Value    := Ed_nomefanta.text;
            if fisica.Checked = true then
            Parameters.ParamByName('Tipo_forn').Value        := 'F'
            else
            Parameters.ParamByName('Tipo_forn').Value        := 'J';
            Parameters.ParamByName('Endereco').Value         := Ed_End.Text;
            Parameters.ParamByName('Fone_Residencial').Value := Ed_FoneRes.Text;
            Parameters.ParamByName('Fone_Comercial').Value   := Ed_Fone_Comer.Text;
            Parameters.ParamByName('Cidade').Value           := Ed_Cidade.text;
            Parameters.ParamByName('Estado').Value           := Cbx_Estado.Text;
            Parameters.ParamByName('Bairro').Value           := Ed_Bairro.Text;
            Parameters.ParamByName('Cep').Value              := edmak_CEP.Text ;  //Ed_cep.text;
            Parameters.ParamByName('Ativo_sn').Value         := 'S';
            Parameters.ParamByName('Data_cad').Value         :=  FormatDateTime('yyyy,mm,dd',Date);
            ExecSQL;
           // Q_Insert.destroy;

           end;

            Mensagem('  Inclusão realizada com sucesso    ');
            NovoClick(self);
            lbStatus.Caption :='Aguardando Ação';
            Ed_codforne.SetFocus;
        end;
   // fim insert


    if lbStatus.Caption ='Alteração' then
       begin


          with q_update do
           begin
           q_update:=TADOQUERY.create(self);
           q_update.Connection:=DM.DM;
           q_update.close;
           q_update.sql.Add('update Cad_Fornecedor'+
                   '  set Cgc_Cnpj =:Cgc_Cnpj,Ins_Est =:Ins_Est,'+
                   '  Ins_Munic =:Ins_Munic , Razao_Social =:Razao_Social,Nome_Fantasia =:Nome_Fantasia,'+
                   '  Tipo_forn =:Tipo_forn, Endereco =:Endereco , Fone_Residencial =:Fone_Residencial,'+
                   '  Fone_Comercial =:Fone_Comercial, Cidade =:Cidade, Estado =:Estado, Bairro =:Bairro,'+
                   '  Cep =:Cep, Ativo_sn =:Ativo_sn'+
                   '  where Codigo_forn =:Codforn');

            Parameters.ParamByName('Codforn').Value        :=strtoint(Ed_codforne.text);
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
            Parameters.ParamByName('Ativo_sn').Value         :='S'
                    else
            Parameters.ParamByName('Ativo_sn').Value         :='F';
                    q_update.ExecSQL;
                    q_update.Destroy;

           end;
            NovoClick(self);
            lbStatus.Caption :='Aguardando Ação';
            Ed_codforneExit(self);
            Ed_codforne.SetFocus;





   end;


end;
procedure TFrm_CadForn.NovoClick(Sender: TObject);
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
      Ed_codforne.Text:='';
      Cbx_Estado.text:='';
      label4.Caption:='';
      chek_Ativo.Checked :=false;
      Fisica.Checked := false;
      Juridica.Checked :=false;
      lbStatus.Caption := 'Inserir';
//      limpaeditform(FrmPrincipal);
      edmak_CEP.Text:='_____-___';
       Novo.Caption:='Novo';
end;

procedure TFrm_CadForn.BitBtn33Click(Sender: TObject);
begin
NovoClick(self);
close;
end;

procedure TFrm_CadForn.ExcluirClick(Sender: TObject);
var q_excluir : tquery;
begin

     if Ed_codforne.Text = '' then
       begin
       Mensagem(' Código inválido ! ! ! ');
       Ed_codforne.SetFocus;
       exit;
       end;

if lbStatus.Caption = 'Alteração'  then
    begin
     if Mymsg('  Confirma exclusão deste registro  ?') then
         begin
             with  q_excluir do    begin
              q_excluir:=tquery.Create(self);
              q_excluir.DatabaseName:='financeiro';
              close;
              sql.add('delete from Cad_Fornecedor where  Codigo_forn =:Codigo_forn');
              ParamByName('Codigo_forn').AsInteger:=strtoint(Ed_codforne.text);
              ExecSQL;
              destroy;
             end;

             Mensagem('  Inclusão realizada com sucesso    ');
             NovoClick(self);
            lbStatus.Caption :='Aguardando Ação';
            Ed_codforne.SetFocus;

          end;
         end
          else
              exit;

end;

procedure TFrm_CadForn.Ed_nomefantaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.ed_Cgc_cpfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Insc_estKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_inscMuniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_EndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_BairroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_CidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Cbx_EstadoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.edmak_CEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_Fone_ComerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_FoneResKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_nomefantaKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.ed_Cgc_cpfKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Insc_estKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_inscMuniKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_EndKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_BairroKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_CidadeKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Cbx_EstadoKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.edmak_CEPKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_Fone_ComerKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.Ed_FoneResKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_CadForn.FisicaClick(Sender: TObject);
begin
ed_Cgc_cpf.EDITMASK:='000\.000\.000\-00;1;';
end;

procedure TFrm_CadForn.JuridicaClick(Sender: TObject);
begin
ed_Cgc_cpf.EDITMASK:='00\.000\.000\/0000\-00;1;';
end;

procedure TFrm_CadForn.SpeedButton1Click(Sender: TObject);
var  campos, tit:TStrings;
     x, filtro:String;
begin


//    filtro := 'Codigo_forn='+#39+(trim(edit1.Text))+#39;
    campos:=TStringlist.create;
    tit:=TStringlist.create;

    campos.add('Razao_Social');
    campos.add('Codigo_forn');
    campos.add('Ativo_sn');

    tit.add('Nome do Fornecedor');
    tit.add('Codigo');
    tit.add('Ativo S/N');



    x:=Consulta.execute(campos,tit,'Cad_Fornecedor','Codigo_forn',filtro);


    if x <> '' then
    begin
     Ed_codforne.text := x;
     lbStatus.Caption:=' Alteração ';
    end
    else
  exit;
    campos.destroy;
    tit.destroy;


end;



end.
