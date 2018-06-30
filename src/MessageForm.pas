unit MessageForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TFormMensagemBox = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Shape1: TShape;
    Timer1: TTimer;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    retorno:Boolean;
  public
    function execute(texto:String):Boolean;
    procedure WMNCHitTest(var m:TWMNCHitTest ); message WM_NCHitTest;
  end;

var
  FormMensagemBox: TFormMensagemBox;

implementation

{$R *.DFM}

procedure TFormMensagemBox.Timer1Timer(Sender: TObject);
begin
 if Shape1.pen.Style=psDash then
    Shape1.pen.Style:=psDashDotDot
 else
    Shape1.pen.Style:=psDash;
end;

function TFormMensagemBox.execute(texto:String):Boolean;
begin
  Retorno:=False;
  label3.caption:=texto;
  Self.ShowModal;
  Result:=Retorno;
end;

procedure TFormMensagemBox.BitBtn1Click(Sender: TObject);
begin
 retorno:=true;
 close;
end;

procedure TFormMensagemBox.BitBtn2Click(Sender: TObject);
begin
 close;
end;

procedure TFormMensagemBox.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=caFree;
end;

procedure TFormMensagemBox.WMNCHitTest( var m:TWMNCHitTest );
begin
 inherited;
 if m.Result=HTClient then
  m.Result:=htCaption;
end;

end.
