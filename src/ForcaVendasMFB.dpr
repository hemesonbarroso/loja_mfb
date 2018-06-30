program ForcaVendasMFB;

uses
  Forms, sysutils,
  Unit_prin_MFB in 'Unit_prin_MFB.pas' {Frm_prin_MFB},
  _Consulta in '_Consulta.pas' {Consulta},
  dm_fin in 'dm_fin.pas' {dm: TDataModule},
  funcoes in 'Funcoes.pas',
  Unit_Login in 'Unit_Login.pas' {FrmLogin},
  Unit_Splach in 'Unit_Splach.pas' {Splach},
  Unit_CadFornecedor in 'Unit_CadFornecedor.pas' {Frm_CadForn},
  frm_cadcli in 'frm_cadcli.pas' {Frm_cli},
  Mensagem in 'Mensagem.pas' {FormMensagem},
  Unit_Frm_cadProd in 'Unit_Frm_cadProd.pas' {Frm_cadProd},
  Unit_Frm_ven in 'Unit_Frm_ven.pas' {Frm_ven},
  Unit_Cof_relatorios in 'Unit_Cof_relatorios.pas' {Relatorios},
  Unit_prodVend in 'Unit_prodVend.pas' {Print_prod_vendidos},
  Unit_venda_por_cli in 'Unit_venda_por_cli.pas' {Frm_print_cli},
  Unit_PRINT_ITEN in 'Unit_PRINT_ITEN.pas' {FRM_PRINT_ITENS};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_prin_MFB, Frm_prin_MFB);
  Application.CreateForm(TConsulta, Consulta);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmLogin, FrmLogin);
    Application.CreateForm(TSplach, Splach);

  Application.CreateForm(TFrm_CadForn, Frm_CadForn);
  Application.CreateForm(TFrm_cli, Frm_cli);
  Application.CreateForm(TFormMensagem, FormMensagem);
  Application.CreateForm(TFrm_cadProd, Frm_cadProd);
  Application.CreateForm(TFrm_ven, Frm_ven);
  Application.CreateForm(TRelatorios, Relatorios);
  Application.CreateForm(TPrint_prod_vendidos, Print_prod_vendidos);
  Application.CreateForm(TFrm_print_cli, Frm_print_cli);
  Application.CreateForm(TFRM_PRINT_ITENS, FRM_PRINT_ITENS);
  Splach.Show;
  Splach.Refresh;
  sleep(4000);
  Splach.Free;
  Splach:=nil;

 



  Application.Run;
end.
