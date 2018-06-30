unit funcoes;

interface
 uses DbTables, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 Menus, StdCtrls, ComCtrls, ExtCtrls, Mask, DBCtrls, ToolWin, Db, Mensagem,MessageForm, Buttons, registry;

 function   floatPoint(xvalue:Currency;xdec:Integer):Currency;
 function   PostReg(dataSet:TDataSet):Boolean;
 function   AllTrim(Dados: string): string;
 function   Replicate(xchar:String;xsize:SmallInt):String;
 function   space(xsize:Real):String;
 function   deleteReg(dataSet:TDataSet):Boolean;
 function   CancelReg(dataSet:TDataSet):Boolean;
 function   EditReg(dataSet:TDataSet):Boolean;
 function   InsertReg(dataSet:TDataSet):Boolean;
 function   Mymsg(xchar:String):Boolean;
 function   FormularioAberto(F:TForm):boolean;


 Function   ResultDatabasesMode(xdm:TDataModule;xstate:TDataSetState):Boolean;
 procedure  FormatEdits(xForm:TForm;xcase:TEditCharCase);
 procedure  SetDateDisplay(xdm:TDataModule;xmask:String);
 procedure  SetCurOnBnt(xForm:TForm;xcur:TCursor);
 procedure  CloseDataSets(xDtM:TDataModule);
 procedure  OpenDataSets(xDtM:TDataModule);
 Procedure  SaveAllDatabases(xdm:TDataModule);
 procedure  limpaeditform (formulario : Tform);
 function   iif(xcond:Boolean;r1,r2:Variant):Variant;
 function   ConcatStr(wstr,wchar,tipo:String;NrSpc:ShortInt):String;
 Function   Terminal:String;
 procedure  Mensagem(Texto: string);

implementation


function InsertReg(dataSet:TDataSet):Boolean;
Begin
 if (dataSet.state in [dsEdit,dsInsert]) then exit;
 try
   dataset.Append;
 except
   Result:=false;
 end;
 Result:=True;
end;

function PostReg(dataSet:TDataSet):Boolean;
Begin
 if not (dataSet.state in [dsEdit,dsInsert]) then exit;
 try
   dataset.post;
 except
   Result:=false;
 end;
 Result:=True;
end;

function EditReg(dataSet:TDataSet):Boolean;
Begin
 if (dataSet.state in [dsEdit,dsInsert]) then exit;
 try
   dataset.Edit;
 except
   Result:=false;
 end;
 Result:=True;
end;

function CancelReg(dataSet:TDataSet):Boolean;
Begin
 if not (dataSet.state in [dsEdit,dsInsert]) then exit;
 try
   dataset.cancel;
 except
   Result:=false;
 end;
 Result:=True;
end;

function deleteReg(dataSet:TDataSet):Boolean;
Begin
 if not (dataSet.state in [dsEdit,dsInsert]) then exit;
 try
   dataset.delete;
 except
   Result:=false;
 end;
 Result:=True;
end;

function space(xsize:Real):String;
var i,tx:ShortInt;
begin
 tx:=strtoInt(formatFloat('00000',xsize));
 for i:=0 to tx do
  result:=Result+' ';
end;

function Replicate(xchar:String;xsize:SmallInt):String;
var i:Integer;
begin
 i:=0;
 result:='';
 while i<=xsize do begin
   result:=result+xchar;
   I:=i+1;
 end
end;

procedure OpenDataSets(xDtM:TDataModule);
Var i,t:integer;
begin
 i:=0;
 t:=xDtM.ComponentCount;
  while i<t do begin
   if xDtM.Components[i] is TTable then
     TTable(xDtM.Components[i]).open;
   I:=I+1;
  end;
end;

procedure CloseDataSets(xDtM:TDataModule);
Var i,t:integer;
begin
 i:=0;
 t:=xDtM.ComponentCount;
  while i<t do begin
   if xDtM.Components[i] is TTable then
     TTable(xDtM.Components[i]).Close;
   I:=I+1;
  end;
end;

(*procedure  limpaeditBook (Notebook: TNotebook);
var
 i:integer;
begin
    for i:=0 to (Notebook.ComponentCount -1 ) do
    if Notebook.Components[i] is TCustomEdit then
    (Notebook.Components[i] as TCustomEdit).Text :='';

end;  *)


procedure limpaEditform(Formulario :Tform);
var
 i:integer;
begin

    for i:=0 to (formulario.ComponentCount -1 ) do
    if formulario.Components[i] is TCustomEdit then
    (formulario.Components[i] as TCustomEdit).Text :='';

end;

function Mymsg(xchar:String):Boolean;
begin
 application.createform(TFormMensagemBox,FormMensagemBox);
 Result:=FormMensagemBox.execute(xchar);
end;

procedure FormatEdits(xForm:TForm;xcase:TEditCharCase);
Var i,t:integer;
begin
 i:=0;
 t:=xForm.ComponentCount;
  while i<t do begin
   if (xForm.Components[i] is TEdit) then
     TEdit(xForm.Components[i]).charcase:=xcase;
   if (xForm.Components[i] is TDBEdit) then
     TDBEdit(xForm.Components[i]).charcase:=xcase;
   if (xForm.Components[i] is TComboBox) then
     TComboBox(xForm.Components[i]).charcase:=xcase;
   if (xForm.Components[i] is TDBComboBox) then
     TDBComboBox(xForm.Components[i]).charcase:=xcase;
   if (xForm.Components[i] is TMaskEdit) then
     TMaskEdit(xForm.Components[i]).charcase:=xcase;
   I:=i+1;
  end;
end;

procedure SetDateDisplay(xdm:TDataModule;xmask:String);
Var i,t:integer;
begin
 i:=0;
 t:=xdm.ComponentCount;
  while i<t do begin
   if (xdm.Components[i] is TDateField) then
     TDateField(xdm.Components[i]).DisplayFormat:=xmask;
   if (xdm.Components[i] is TDateTimeField) then
     TDateTimeField(xdm.Components[i]).DisplayFormat:=xmask;
   i:=i+1;
  end;
end;

procedure SetCurOnBnt(xForm:TForm;xcur:TCursor);
Var i,t:integer;
begin
 i:=0;
 t:=xForm.ComponentCount;
  while i<t do begin
   if (xForm.Components[i] is TButton) then
     TButton(xForm.Components[i]).Cursor:=xCur;
   if (xForm.Components[i] is TBitBtn) then
     TBitBtn(xForm.Components[i]).Cursor:=xCur;
   if (xForm.Components[i] is TSpeedButton) then
     TSpeedButton(xForm.Components[i]).Cursor:=xCur;
   if (xForm.Components[i] is TDBNavigator) then
     TDBNavigator(xForm.Components[i]).Cursor:=xCur;
   if (xForm.Components[i] is TToolButton) then
     TToolButton(xForm.Components[i]).Cursor:=xCur;
   if (xForm.Components[i] is TPageControl) then
     TPageControl(xForm.Components[i]).Cursor:=xCur;
   if (xForm.Components[i] is TRadioButton) then
     TRadioButton(xForm.Components[i]).Cursor:=xCur;
   if (xForm.Components[i] is TCheckBox) then
     TCheckBox(xForm.Components[i]).Cursor:=xCur;
   if (xForm.Components[i] is TDBCheckBox) then
     TDBCheckBox(xForm.Components[i]).Cursor:=xCur;
   i:=i+1;
  end;
end;

Function ResultDatabasesMode(xdm:TDataModule;xstate:TDataSetState):Boolean;
Var i,t:integer;
begin
 i:=0;
 t:=xdm.ComponentCount;
 Result:=False;
 while i<t do begin
   if (xdm.Components[i] is TDataSet) then
     if (TDataset(xdm.Components[i]).state in [xState]) then
        Result:=True;
  i:=i+1;
 end;
end;

Procedure SaveAllDatabases(xdm:TDataModule);
Var i,t:integer;
begin
 i:=0;
 t:=xdm.ComponentCount;
 while i<t do begin
   if (xdm.Components[i] is TDataSet) then
     if (TDataset(xdm.Components[i]).state in [dsEdit,DsInsert]) then
       PostReg(TDataset(xdm.Components[i]));
  i:=i+1;
 end;
end;

function iif(xcond:Boolean;r1,r2:Variant):Variant;
Begin
  if xcond then result:=r1
  else result:=r2;
end;

function ConcatStr(wstr,wchar,tipo:String;NrSpc:ShortInt):String;
var i:ShortInt;espacos:String;
Begin
  espacos:='';
  for i:=0 to (NrSpc-length(wstr)) do espacos:=espacos+wchar;
  if tipo='R' then
     result:=wstr+espacos
  else
     result:=espacos+wstr;
end;

function AllTrim(Dados: string): string;
var
  Contar: integer;
begin
  Dados := Trim(Dados);
  for Contar := 1 to Length(Dados) do
  begin
    if Copy(Dados,Contar,1) <> ' ' then
      Break;
    Dados := Copy(Dados,Contar + 1,Length(Dados) - 1);
    Application.ProcessMessages;
  end;
  AllTrim := Dados;
end;

function floatPoint(xvalue:Currency;xdec:Integer):Currency;
var i,wdec:Integer; resul:String;
begin
  wdec:=0;
  for i:=1 to length(trim(formatFloat('#########0.00',xvalue))) do begin
    if wdec<=xdec then
       resul:=resul+copy(trim(formatFloat('#########0.00',xvalue)),i,1);
    if wdec>0 then wdec:=wdec+1;
    if copy(floattostr(xvalue),i,1)=',' then wdec:=wdec+1;
    if wdec>xdec then break;
  end;
  result:=strtofloat(resul);
end;

Function Terminal:String;
var reg:TRegistry;
begin
 reg:=TRegistry.Create;
 reg.RootKey:=HKEY_LOCAL_MACHINE;
 Reg.OpenKey('\System\CurrentControlSet\control\ComputerName\ComputerName',True);
 result:=Reg.ReadString('ComputerName');
 Reg.CloseKey;
 Reg.Destroy;
end;

procedure Mensagem(Texto: string);
var
  Largura: integer;
begin
  with FormMensagem do
  begin
    Frase.Caption := Texto;
    Largura := 70 + Frase.Width;
    if Largura < 250 then Largura := 250;
    Width := Largura;
    BtnOk.Left := (Width - 80) div 2;
    MessageBeep(0);
    ShowModal;
  end;
end;


  function FormularioAberto(F:TForm):boolean;
  var k:Integer;
  begin
   result := False;
   if F = Nil then exit; //com certeza não está aberto
   for k := 0 to Application.ComponentCount -1 do
    if Application.Components[k] = F then
    begin
     Result := True;
     Exit;
    end;
  end;


end.
