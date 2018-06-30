unit Unit_prin_MFB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, Menus, Buttons;

type
  TFrm_prin_MFB = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure fornecedor1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Pordutos1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RotinadeVendas1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_prin_MFB: TFrm_prin_MFB;

implementation

uses Unit_Login, Unit_CadFornecedor, frm_cadcli, Unit_Frm_cadProd,
  Unit_Frm_ven, Unit_Cof_relatorios;

{$R *.dfm}

procedure TFrm_prin_MFB.FormShow(Sender: TObject);
begin
FrmLogin.ShowModal;
StatusBar1.Panels[0].Text :='Data  :'+datetostr(date);
end;

procedure TFrm_prin_MFB.fornecedor1Click(Sender: TObject);
begin
 Frm_CadForn.show;
 Frm_CadForn.Notebook1.ActivePage:='Fornec';
end;

procedure TFrm_prin_MFB.Clientes1Click(Sender: TObject);
begin
Frm_cli.show;
end;

procedure TFrm_prin_MFB.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_prin_MFB.Pordutos1Click(Sender: TObject);
begin
Frm_cadProd.show;
end;

procedure TFrm_prin_MFB.SpeedButton1Click(Sender: TObject);
begin
Frm_cadProd.show;
end;

procedure TFrm_prin_MFB.RotinadeVendas1Click(Sender: TObject);
begin
Frm_ven.showmodal;
end;

procedure TFrm_prin_MFB.Sair2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_prin_MFB.SpeedButton6Click(Sender: TObject);
begin
Frm_CadForn.Show;
end;

procedure TFrm_prin_MFB.SpeedButton4Click(Sender: TObject);
begin
Frm_cli.Show;
end;

procedure TFrm_prin_MFB.SpeedButton7Click(Sender: TObject);
begin
Frm_ven.Show;
end;

procedure TFrm_prin_MFB.SpeedButton8Click(Sender: TObject);

begin 
Relatorios.SHOW;

end;

procedure TFrm_prin_MFB.FormCreate(Sender: TObject);
begin
 // Splash := TfrmSplash.Create(Application);
 (* Splash.Show;
  Splash.Refresh;
  Splash.ProgressSar1.Position:= 1;
  Sleep(300);

  Splash.ProgressSar1.Position:=25;
  Sleep(300);

  Splash.ProgressSar1.Position:= 50;
  Sleep(300);

  Splash.ProgressSar1.Position:= 75;
  Sleep(300);

  Splash.ProgressSar1.Position:= 100;
  Sleep(300);

  Splash.Hide;
  Splash.Free; *)

end;

end.
