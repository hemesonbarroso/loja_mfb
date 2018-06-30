unit _Consulta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Db, DBTables, ExtCtrls, ADODB;

type
  TConsulta = class(TForm)
    ds: TDataSource;
    DBGrid1: TDBGrid;
    bi: TRadioButton;
    be: TRadioButton;
    bc: TRadioButton;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label2: TLabel;
    Bevel5: TBevel;
    q: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure biClick(Sender: TObject);
  private
    xtabela, xfiltro: String;
  public
    function Execute(campos, titulos:TStrings; Tabela, CampoRetorno, filtro:String): String;
  end;

var
  Consulta: TConsulta;

implementation

uses dm_fin, frm_cadcli;


{$R *.DFM}

function TConsulta.Execute(campos, titulos:TStrings; Tabela, CampoRetorno, filtro:String): String;
var i:ShortInt;
Begin
 i:=0;
 DBGrid1.Columns.Clear;
 while i<=Campos.Count-1 do begin
   DBGrid1.Columns.Add;
   DBGrid1.Columns[i].Fieldname:=campos[i];
   DBGrid1.Columns[i].Title.Caption:=titulos[i];
   i:=i+1;
 end;
 xTabela:=tabela;
 xfiltro:=filtro;
 ShowModal;
 Result:='';
 if q.active then
    Result:=Q.fieldbyname(CampoRetorno).text;
 q.close;
end;

procedure TConsulta.BitBtn1Click(Sender: TObject);
begin
 if bi.Checked then begin
    q.Close;
    q.sql.clear;
    q.sql.add('select * from '+xtabela);
    q.sql.add('where '+DBGrid1.Columns[0].Fieldname+' LIKE '+#39+edit1.text+'%'+#39);
    if xfiltro<>'' then
    q.sql.add('and  '+xfiltro);
    q.sql.add('ORDER BY '+DBGrid1.Columns[0].Fieldname);
//    ShowMessage(q.SQL.Text);
    q.open;

 end;
 if be.Checked then begin
    q.Close;
    q.sql.clear;
    q.sql.add('select * from '+xtabela);
    q.sql.add('where '+DBGrid1.Columns[0].Fieldname+'='+#39+edit1.text+#39);
    if xfiltro<>'' then
    q.sql.add('and  '+xfiltro);
    q.open;
 end;
 if bc.Checked then begin
    q.Close;
    q.sql.clear;
    q.sql.add('select * from '+xtabela);
    q.sql.add('where '+DBGrid1.Columns[0].Fieldname+' like '+#39+'%'+edit1.text+'%'+#39);
    if xfiltro<>'' then
    q.sql.add('and  '+xfiltro);
    q.open;
 end;
end;

procedure TConsulta.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
   BitBtn1Click(Self);
   BitBtn2.Enabled:=true;
   dbgrid1.setfocus;
 end;
end;

procedure TConsulta.BitBtn2Click(Sender: TObject);
begin
 close;
end;

procedure TConsulta.BitBtn3Click(Sender: TObject);
begin
 q.close;
 close;
end;

procedure TConsulta.FormShow(Sender: TObject);
begin
 edit1.setfocus;
 BitBtn2.Enabled:=false;
end;

procedure TConsulta.Edit1Enter(Sender: TObject);
begin
 q.close;
end;

procedure TConsulta.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    BitBtn2.setfocus;
end;

procedure TConsulta.biClick(Sender: TObject);
begin
 edit1.setfocus;
end;

end.
