unit Mensagem;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TFormMensagem = class(TForm)
    BtnOk: TButton;
    Frase: TLabel;
    Imagem: TImage;
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMensagem: TFormMensagem;

implementation

{$R *.DFM}

procedure TFormMensagem.BtnOkClick(Sender: TObject);
begin
  Close;
end;

end.
