unit dm_fin;

interface

uses
  SysUtils, Classes, DB, DBTables, ADODB;

type
  Tdm = class(TDataModule)
    dm: TADOConnection;
    Q_Usuario: TADOQuery;
    Q_UsuarioCodigo: TAutoIncField;
    Q_UsuarioUsuario: TStringField;
    Q_Usuariosenha: TStringField;
    Q_UsuarioPermissao_contReceb: TStringField;
    Q_UsuarioRelatorio_Presi: TStringField;
    Q_UsuarioCadGuia_Rec: TStringField;
    Q_UsuarioControleAcesso: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses Unit_Frm_cadProd, Unit_Frm_ven, Unit_CadFornecedor, _Consulta,
  Unit_Cof_relatorios;

{$R *.dfm}

end.
