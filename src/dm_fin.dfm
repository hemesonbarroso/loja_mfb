object dm: Tdm
  OldCreateOrder = False
  Left = 410
  Top = 139
  Height = 457
  Width = 581
  object dm: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=BASE_MFB;Initial Catalog=base_mfb'
    LoginPrompt = False
    Left = 240
    Top = 96
  end
  object Q_Usuario: TADOQuery
    Connection = dm
    Parameters = <>
    SQL.Strings = (
      'select * from usuario')
    Left = 192
    Top = 56
    object Q_UsuarioCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object Q_UsuarioUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object Q_Usuariosenha: TStringField
      FieldName = 'senha'
      Size = 10
    end
    object Q_UsuarioPermissao_contReceb: TStringField
      FieldName = 'Permissao_contReceb'
      Size = 1
    end
    object Q_UsuarioRelatorio_Presi: TStringField
      FieldName = 'Relatorio_Presi'
      Size = 1
    end
    object Q_UsuarioCadGuia_Rec: TStringField
      FieldName = 'CadGuia_Rec'
      Size = 1
    end
    object Q_UsuarioControleAcesso: TStringField
      FieldName = 'ControleAcesso'
      Size = 1
    end
  end
end
