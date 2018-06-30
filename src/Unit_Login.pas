unit Unit_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms,Dialogs, StdCtrls, ExtCtrls, Buttons, DB,
  DBTables,Grids, DBGrids,ComCtrls, Mask,DBCtrls,ToolWin,ActnList, jpeg,
  ADODB;
type
  TFrmLogin = class(TForm)
    Bevel1: TBevel;
    Ed_Usu: TEdit;
    Label1: TLabel;
    Ed_Senha: TEdit;
    Label2: TLabel;
    OK: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    Image1: TImage;
    Bevel3: TBevel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ed_SenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OKKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Ed_UsuKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_SenhaKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_SenhaExit(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
//  PROCEDURE ControleSelecionado(SENDER:TOBJECT);

    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
//  FOCUSCONTROLE : TEDIT;

implementation

uses Funcoes, dm_fin, Unit_prin_MFB, Unit_Splach;

{$R *.dfm}

procedure TFrmLogin.FormShow(Sender: TObject);
begin
Ed_Usu.setfocus;
end;


procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 // action:=cafree;

end;

procedure TFrmLogin.Ed_SenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY= VK_UP THEN
SELECTNEXT(SENDER AS TWINCONTROL,FALSE,TRUE)
ELSE
//MOVE O CURSOR NETRE OS COMPONENTES SETA PARA BAIXO
IF KEY= VK_DOWN THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrmLogin.OKKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 THEN
SELECTNEXT(SENDER AS TWINCONTROL,TRUE,TRUE);
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
//SCREEN.ONACTIVECONTROLCHANGE := CONTROLESELECIONADO;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
//Screen.OnActiveControlChange := nil;
end;

(*procedure TFrmLogin.ControleSelecionado(Sender: TObject);
begin
    If Assigned(FocusControle) Then
        with FocusControle do
        begin
            Color := clWindow;
            Font.Color:=clBlack;
     	    Font.Style:=[];
        end;

    If ActiveControl is TEdit  Then
    Begin
        TEdit(ActiveControl).Color := clRed;
        TEdit(ActiveControl).Font.Color:=clWindow;
        TEdit(ActiveControl).Font.Style:=[fsBold];
        FocusControle:= TEdit(ActiveControl);
    End
    Else
      if ActiveControl is TDBEdit then
      begin
          TDBEdit(ActiveControl).Color := clRed;
          TDBEdit(ActiveControl).Font.Color:=clWindow;
          TDBEdit(ActiveControl).Font.Style:=[fsBold];
          FocusControle:= TEdit(ActiveControl);
      end
      else
         if ActiveControl is TMaskEdit then
         begin
            TMaskEdit(ActiveControl).Color := clRed;
            TMaskEdit(ActiveControl).Font.Color:=clWindow;
            TMaskEdit(ActiveControl).Font.Style:=[fsBold];
            FocusControle:= TEdit(ActiveControl);
         end
         else
             FocusControle:= nil;
end; *)

procedure TFrmLogin.Ed_UsuKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Ed_Senha.SetFocus;
end;

procedure TFrmLogin.Ed_SenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
ok.SetFocus;
end;

procedure TFrmLogin.Ed_SenhaExit(Sender: TObject);
begin
 if ((Ed_Usu.Text <>'') and (Ed_Senha.Text <>'')) then
//    OKClick(self);
end;


procedure TFrmLogin.OKClick(Sender: TObject);
   var usus,senha : string;
begin

    with  dm.Q_Usuario do
      begin
      close;
      sql.Clear;
      sql.add('select * from Usuario');
      open;
      end;

      //controle de acesso




      usus:= dm.Q_Usuario.fieldbyname('usuario').asstring;
      senha:= dm.q_Usuario.fieldbyname('senha').asstring;

    dm.Q_Usuario.First;
    if  dm.Q_usuario.locate('usuario',Ed_Usu.text,[])= false then
    begin
     Mensagem( '  Acesso negado , nome invalido   !  ');
     Ed_usu.Text:='';
     Ed_Usu.SetFocus;
     exit;
    end;




    dm.Q_Usuario.First;
    if  dm.Q_Usuario.locate('Senha',ed_senha.text,[])= false then
    begin
     Mensagem( '  Acesso negado , senha invalida   !  ');
     Ed_Senha.Text:='';
     Ed_Senha.SetFocus;
     exit;
    end;

    Frm_prin_MFB.StatusBar1.Panels.Items[1].Text:='Usuario:     '+FrmLogin.Ed_Usu.text;

  close;

end;

procedure TFrmLogin.BitBtn2Click(Sender: TObject);
begin
if Mymsg(' Deseja sair do sistema ? ') then
    Application.Terminate
    else
    exit;
end;

end.
