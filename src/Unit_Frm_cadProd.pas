unit Unit_Frm_cadProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls, Grids, funcoes,DBGrids, StdCtrls, ExtCtrls,
  DB, DBTables, ADODB;

type
  TFrm_cadProd = class(TForm)
    Notebook1: TNotebook;
    Label4: TLabel;
    lbStatus: TLabel;
    Label6: TLabel;
    Bevel3: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    Quantidadel: TLabel;
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
    Ed_cod_prod: TEdit;
    Quantidade: TEdit;
    Ed_Descri: TEdit;
    Ed_Pr_Uni: TEdit;
    Ed_modelo: TEdit;
    Ed_Embal: TEdit;
    Ed_cod_fabri: TEdit;
    Ed_codbarra: TEdit;
    Ed_unidade: TEdit;
    chek_Ativo: TCheckBox;
    Salvar: TBitBtn;
    Ed_Fornec: TEdit;
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
    Ed_marca: TEdit;
    Edit_pesoLiq: TEdit;
    Ed_PesoBruto: TEdit;
    Edi_NCM: TEdit;
    Edit_obs: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Rd_importado: TRadioButton;
    Rb_Nacional: TRadioButton;
    Label10: TLabel;
    Bevel1: TBevel;
    btNovo: TBitBtn;
    SpeedButton2: TSpeedButton;
    Label14: TLabel;
    Q_Insert: TADOQuery;
    procedure Ed_cod_prodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Ed_cod_prodExit(Sender: TObject);
    procedure Ed_DescriKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_DescriKeyPress(Sender: TObject; var Key: Char);
    procedure SalvarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure Ed_cod_prodKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn33Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Ed_FornecExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cadProd: TFrm_cadProd;

implementation

uses _Consulta, dm_fin;

{$R *.dfm}

procedure TFrm_cadProd.Ed_cod_prodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  campos, tit:TStrings;
     x, filtro:String;
begin
 if (key = Vk_f2)  then
  begin

//    filtro := 'Codigo_forn='+#39+(trim(edit1.Text))+#39;
    campos:=TStringlist.create;
    tit:=TStringlist.create;

    campos.add('Descricao');
    campos.add('COD_PRODUTO');
    campos.add('SITUACAO');

    tit.add('Nome do Fornecedor');
    tit.add('Codigo');
    tit.add('Ativo S/N');



    x:=Consulta.execute(campos,tit,'t_produtos','COD_PRODUTO',filtro);


    if x <> '' then
    begin
     Ed_cod_prod.text := x;
     lbStatus.Caption:=' Alteração ';
    end
    else
  exit;
    campos.destroy;
    tit.destroy;
    Ed_cod_prod.SetFocus;
 end;

 IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);


end;

procedure TFrm_cadProd.SpeedButton1Click(Sender: TObject);
var  campos, tit:TStrings;
     x, filtro:String;
begin


   // filtro := 'Codigo_forn='+#39+(trim(Ed_cod_prod.Text))+#39;

    campos:=TStringlist.create;
    tit:=TStringlist.create;

    campos.add('Descricao');
    campos.add('COD_PRODUTO');
    campos.add('SITUACAO');

    tit.add('Descrição do Item');
    tit.add('Codigo');
    tit.add('Ativo S/N');



    x:=Consulta.execute(campos,tit,'t_produtos','COD_PRODUTO',filtro);


    if x <> '' then
    begin
     Ed_cod_prod.text := x;
     lbStatus.Caption:=' Alteração ';
    end
    else
  exit;
    campos.destroy;
    tit.destroy;
    Ed_cod_prod.SetFocus;




end;

procedure TFrm_cadProd.Ed_cod_prodExit(Sender: TObject);
var  q_veriforn :tADOquery;
begin

if Ed_cod_prod.Text <> '' then
  begin

     

          with  q_veriforn do begin
           q_veriforn:=tADOquery.create(self);
           q_veriforn.Connection:=dm.dm;
           close;
           sql.Clear;
           sql.add('select * from T_produtos'+
                   ' where COD_PRODUTO =:COD_PRODUTO');
            Parameters.ParamByName('COD_PRODUTO').Value :=strtoint(Ed_cod_prod.text);
           open;
          end;
          if q_veriforn.Locate('COD_PRODUTO',Ed_cod_prod.Text,[])=false then
             begin
              Mensagem('Código produto inválido !');
             Ed_cod_prod.text:='';
             q_veriforn.destroy;
             Ed_cod_prod.SetFocus;
             exit;
             end;

             lbStatus.Caption:='Alteração';


             // origem do produto
             if q_veriforn.fieldbyname('ORIGEM').AsString='N' then
             begin
             Rb_Nacional.Checked := true;
             end
             else
             Rd_importado.Checked :=true;



             if q_veriforn.fieldbyname('situacao').AsString='A' then
             chek_Ativo.Checked := true
             else
             chek_Ativo.Checked :=false;





             Ed_Descri.Text      := q_veriforn.fieldbyname('DESCRICAO').AsString;
             Ed_Fornec.Text      := q_veriforn.fieldbyname('Codigo_forn').AsString;
             Ed_marca.Text       := q_veriforn.fieldbyname('MARCA').AsString;
             Ed_modelo.Text      := q_veriforn.fieldbyname('MODELO').AsString;
             Quantidade.Text     := q_veriforn.fieldbyname('QUANTIDADE').AsString;
             Ed_Pr_Uni.Text      := q_veriforn.fieldbyname('PRECOUNIT').AsString;
             Ed_Embal.Text       := q_veriforn.fieldbyname('EMBALAGEM').AsString;
             Ed_unidade.Text     := q_veriforn.fieldbyname('UNIDADE').AsString;
             Edit_pesoLiq.Text   := q_veriforn.fieldbyname('PESOLIQUIDO').AsString;
             Ed_PesoBruto.Text   := q_veriforn.fieldbyname('PESOBRUTO').AsString;
             Ed_cod_fabri.Text   := q_veriforn.fieldbyname('CODFABRICA').AsString;
             Ed_codbarra.Text    := q_veriforn.fieldbyname('CODBARRA').AsString;
             Edi_NCM.Text        := q_veriforn.fieldbyname('NCM').AsString;
             Edit_obs.Text       := q_veriforn.fieldbyname('OBSERVACAO').AsString;
             label4.Caption      := q_veriforn.fieldbyname('descricao').asstring;
             q_veriforn.destroy;
        end;
        Ed_FornecExit(self);

         btNovo.Caption:='Cancelar';
end;

procedure TFrm_cadProd.Ed_DescriKeyDown(Sender: TObject; var Key: Word;
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
     Ed_Fornec.text := x;
    end
    else
  exit;
    campos.destroy;
    tit.destroy;
    Ed_Fornec.SetFocus;
 end;

 IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);





end;

procedure TFrm_cadProd.Ed_DescriKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_cadProd.SalvarClick(Sender: TObject);
var   Q_Insert,q_update :TADOquery;

begin

 if  (Rb_Nacional.Checked = false) and (Rd_importado.Checked = false)    then
     begin
     Mensagem(' informe uma Origem para o Item !');
     exit;
     end;




    if lbStatus.Caption = 'Inserir' then
     begin



        // Inseri na tabela de produtos

           with Q_Insert do begin
            Q_Insert:=TADOquery.create(self);
            Q_Insert.Connection:=dm.dm;
            Q_Insert.close;
            Q_Insert.sql.Clear;
            Q_Insert.sql.add('insert into t_produtos'+
            '  (DESCRICAO,Codigo_forn,MARCA,MODELO,QUANTIDADE,PRECOUNIT,EMBALAGEM,UNIDADE,PESOLIQUIDO,PESOBRUTO,'+
            '  DATACADASTRO,ORIGEM,CODFABRICA,CODBARRA,NCM,OBSERVACAO,SITUACAO)'+
            '  values (:DESCRICAO,:Codigo_forn,:MARCA,:MODELO,:QUANTIDADE,:PRECOUNIT,:EMBALAGEM,:UNIDADE,:PESOLIQUIDO,:PESOBRUTO, '+
            '  :DATACADASTRO,:ORIGEM,:CODFABRICA,:CODBARRA,:NCM,:OBSERVACAO,:SITUACAO)');
            Parameters.ParamByName('DESCRICAO').Value        := Ed_Descri.Text;
            Parameters.ParamByName('Codigo_forn').Value      := strtoint(Ed_Fornec.Text);
            Parameters.ParamByName('MARCA').Value            := Ed_marca.Text;
            Parameters.ParamByName('MODELO').Value           := Ed_modelo.Text;
            Parameters.ParamByName('QUANTIDADE').Value       := strtofloat(trim(Quantidade.Text));
            Parameters.ParamByName('PRECOUNIT').Value        := STRTOFLOAT(trim(Ed_Pr_Uni.Text));
            Parameters.ParamByName('EMBALAGEM').Value        := Ed_Embal.text;
            Parameters.ParamByName('UNIDADE').Value          := Ed_unidade.Text;
            Parameters.ParamByName('PESOLIQUIDO').Value      := Edit_pesoLiq.Text;
            Parameters.ParamByName('PESOBRUTO').Value        := Ed_PesoBruto.Text;
            Parameters.ParamByName('DATACADASTRO').Value     := FormatDateTime('yyyy,mm,dd',Date);
            if Rb_Nacional.Checked = true then
            Parameters.ParamByName('ORIGEM').Value           := 'N'
            else
            Parameters.ParamByName('ORIGEM').Value           := 'I';
            Parameters.ParamByName('CODFABRICA').Value       := Ed_cod_fabri.Text;
            Parameters.ParamByName('CODBARRA').Value         := Ed_codbarra.Text;
            Parameters.ParamByName('NCM').Value              := Edi_NCM.Text ;  //Ed_cep.text;
            Parameters.ParamByName('OBSERVACAO').Value       := Edit_obs.Text  ;
            Parameters.ParamByName('SITUACAO').Value       := 'A';
            Q_Insert.ExecSQL;
            Q_Insert.destroy;
          end;

        Mensagem('  Inclusão realizada com sucesso !   ');
        btNovoClick(self);
        lbStatus.Caption :='Aguardando Ação';
        Ed_cod_prod.SetFocus;

   end;

   // fim insert


    if lbStatus.Caption ='Alteração' then
       begin

  
             with q_update do
                 begin
                 q_update:=TADOquery.create(self);
                 q_update.Connection:=dm.dm;
                 q_update.close;
                 q_update.sql.Add('update t_produtos'+
                         '  set DESCRICAO =:DESCRICAO,Codigo_forn=:Codigo_forn,MARCA =:MARCA,'+
                         '  MODELO =:MODELO , QUANTIDADE =:QUANTIDADE,PRECOUNIT =:PRECOUNIT,'+
                         '  EMBALAGEM =:EMBALAGEM,UNIDADE=:UNIDADE,PESOLIQUIDO =:PESOLIQUIDO , PESOBRUTO =:PESOBRUTO,'+
                         '  DATACADASTRO =:DATACADASTRO, ORIGEM =:ORIGEM, CODFABRICA =:CODFABRICA, CODBARRA =:CODBARRA,'+
                         '  NCM =:NCM, OBSERVACAO =:OBSERVACAO, SITUACAO =:SITUACAO '+
                         '  where COD_PRODUTO =:COD_PRODUTO');

                 Parameters.ParamByName('COD_PRODUTO').value      := Ed_cod_prod.Text;
                 Parameters.ParamByName('DESCRICAO').value        := Ed_Descri.Text;
                 Parameters.ParamByName('Codigo_forn').value      := Ed_Fornec.Text;
                 Parameters.ParamByName('MARCA').value            := Ed_marca.Text;
                 Parameters.ParamByName('MODELO').value           := Ed_modelo.Text;
                 Parameters.ParamByName('QUANTIDADE').value       := strtoint(trim(Quantidade.Text));
                 Parameters.ParamByName('PRECOUNIT').value        := strtofloat(trim(Ed_Pr_Uni.Text));
                 Parameters.ParamByName('EMBALAGEM').value        := Ed_Embal.text;
                 Parameters.ParamByName('UNIDADE').value          := Ed_unidade.Text;

                 Parameters.ParamByName('PESOLIQUIDO').value      := Edit_pesoLiq.Text;
                 Parameters.ParamByName('PESOBRUTO').value        := Ed_PesoBruto.Text;
                 Parameters.ParamByName('DATACADASTRO').value     := DATE();
                  if Rb_Nacional.Checked = true then
                 Parameters.ParamByName('ORIGEM').value           := 'N'
                  else
                 Parameters.ParamByName('ORIGEM').value           := 'I';

                 Parameters.ParamByName('CODFABRICA').value       := Ed_cod_fabri.Text;
                 Parameters.ParamByName('CODBARRA').value         := Ed_codbarra.Text;
                 Parameters.ParamByName('NCM').value              := Edi_NCM.Text ;  //Ed_cep.text;
                 Parameters.ParamByName('OBSERVACAO').value       := Edit_obs.Text  ;

                  if chek_Ativo.Checked = true then
                 Parameters.ParamByName('SITUACAO').value       := 'A'
                  else
                 Parameters.ParamByName('SITUACAO').value       := 'F';

                  q_update.ExecSQL;
                  q_update.Destroy
                 end;


            lbStatus.Caption :='Aguardando Ação';
            btNovoClick(self);
            Ed_cod_prod.SetFocus;



  end;


  end;


procedure TFrm_cadProd.btNovoClick(Sender: TObject);
begin
           Ed_Descri.Text:='';
           Ed_Fornec.Text:='';
           Ed_marca.Text:='';
           Ed_modelo.Text:='';
           Quantidade.Text:='';
           Ed_Pr_Uni.Text:='';
           Ed_Embal.text:='';
           Ed_unidade.Text:='';
           Label14.Caption:='...';
           Edit_pesoLiq.Text:='';
           Ed_PesoBruto.Text:='';
           Rb_Nacional.Checked := false;
           Rd_importado.Checked:=false;
           Ed_cod_fabri.Text:='';
           Ed_codbarra.Text:='';
           Edi_NCM.Text :='';  //Ed_cep.text;
           Edit_obs.Text  :='';
           Label4.Caption:='...';
           Ed_cod_prod.Text:='';
           lbStatus.Caption:='Inserir';
           btNovo.Caption:='Novo';

           chek_Ativo.Checked :=false;

end;

procedure TFrm_cadProd.Ed_cod_prodKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrm_cadProd.BitBtn33Click(Sender: TObject);
begin
close;
end;

procedure TFrm_cadProd.SpeedButton2Click(Sender: TObject);
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
     Ed_Fornec.text := x;
    end
    else
  exit;
    campos.destroy;
    tit.destroy;
    Ed_Fornec.SetFocus;




end;

procedure TFrm_cadProd.Ed_FornecExit(Sender: TObject);
var  q_veriforn :tADOquery;
begin
if Ed_Fornec.Text <> '' then
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
             ' where Codigo_forn =:Codigo_forn and Ativo_sn =''S''');
          Parameters.ParamByName('Codigo_forn').value :=strtoint(Ed_Fornec.text);
     open;
    end;
    if q_veriforn.Locate('Codigo_forn',Ed_Fornec.Text,[])=false then
       begin
        Mensagem('Código inválido '); // ShowMessage(' Código inválido  ! ! !');
       Ed_Fornec.text:='';
       q_veriforn.destroy;
       Ed_Fornec.SetFocus;
       exit;
       end;

        label14.Caption:=q_veriforn.fieldbyname('Razao_Social').asstring;
        q_veriforn.destroy;
    end;
end;

end.
