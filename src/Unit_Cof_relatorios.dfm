object Relatorios: TRelatorios
  Left = 46
  Top = 50
  BorderStyle = bsDialog
  Caption = 'MFB -Relatorios de vendas'
  ClientHeight = 531
  ClientWidth = 1295
  Color = 12829635
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label30: TLabel
    Left = 0
    Top = 0
    Width = 1295
    Height = 33
    Align = alTop
    AutoSize = False
    Caption = 'Relt'#243'rios'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 48
    Width = 273
    Height = 73
    Caption = 'Periodo'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 144
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object ed_inicial: TMaskEdit
      Left = 16
      Top = 40
      Width = 120
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnKeyDown = ed_inicialKeyDown
    end
    object ed_final: TMaskEdit
      Left = 144
      Top = 40
      Width = 120
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnKeyDown = ed_finalKeyDown
    end
  end
  object imprimir: TBitBtn
    Left = 1096
    Top = 184
    Width = 161
    Height = 41
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = imprimirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object GroupBox2: TGroupBox
    Left = 293
    Top = 48
    Width = 996
    Height = 73
    Caption = 'Tipos de pesquisas'
    TabOrder = 2
    object Label9: TLabel
      Left = 441
      Top = 17
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object SpeedButton1: TSpeedButton
      Left = 497
      Top = 32
      Width = 23
      Height = 22
      Caption = 'F2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 524
      Top = 34
      Width = 18
      Height = 18
      Caption = '...'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RadioButton1: TRadioButton
      Left = 8
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Produtos vendidos'
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 256
      Top = 33
      Width = 177
      Height = 17
      Caption = 'Produtos vendidos por clientes'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 128
      Top = 32
      Width = 129
      Height = 17
      Caption = 'Vendas aos clientes'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RadioButton3Click
    end
    object Ed_codcli: TEdit
      Left = 441
      Top = 31
      Width = 55
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = Ed_codcliExit
      OnKeyDown = Ed_codcliKeyDown
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 1025
    Height = 385
    Color = 16767449
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_CLIENTE'
        Title.Caption = 'Cd-Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Title.Caption = 'Ra'#227'o Social'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_VENDA'
        Title.Caption = 'Pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENDA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTOTAL'
        Title.Caption = 'Valor Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERDESC'
        Title.Caption = '%desc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALDESC'
        Title.Caption = 'Vlr. Desconto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDITENS'
        Title.Caption = 'Qtd Itens'
        Visible = True
      end>
  end
  object Pesquisar: TBitBtn
    Left = 1096
    Top = 128
    Width = 161
    Height = 41
    Caption = 'Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = PesquisarClick
    OnKeyDown = PesquisarKeyDown
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object BitBtn1: TBitBtn
    Left = 1099
    Top = 297
    Width = 161
    Height = 41
    Caption = 'Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 1099
    Top = 241
    Width = 161
    Height = 41
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
  end
  object dbitens: TDBGrid
    Left = 8
    Top = 128
    Width = 1028
    Height = 385
    Color = 16767449
    DataSource = DataSource2
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORITENS'
        Title.Caption = 'Pr.Venda'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Caption = 'Total'
        Width = 91
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = q_produtosVendidos
    Left = 600
    Top = 176
  end
  object q_produtosVendidos: TADOQuery
    Connection = dm.dm
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Datainicial'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 16
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'datafinal'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 16
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '    `t_clientes`.`COD_CLIENTE`'
      '    , `t_clientes`.`Razao_Social`'
      '    , `t_vendas`.`COD_VENDA`'
      '    , `t_vendas`.`DATAVENDA`'
      '    , `t_vendas`.`VALORTOTAL`'
      '    , `t_vendas`.`TOTALDESC`'
      '    , `t_vendas`.`PERDESC`'
      '    , `t_vendas`.`QTDITENS`'
      '    , `t_itens_vendas`.`COD_PRODUTO`'
      '    , `t_itens_vendas`.`DESCRICAO`'
      '    , `t_itens_vendas`.`QUANTIDADE`'
      '    , `t_itens_vendas`.`VALORITENS`'
      '    , `t_produtos`.`UNIDADE`'
      '    , `t_produtos`.`PRECOUNIT`'
      'FROM'
      '    `base_mfb`.`t_itens_vendas`'
      '    INNER JOIN `base_mfb`.`t_vendas` '
      
        '        ON (`t_itens_vendas`.`COD_VENDA` = `t_vendas`.`COD_VENDA' +
        '`)'
      '    INNER JOIN `base_mfb`.`t_produtos` '
      
        '        ON (`t_itens_vendas`.`COD_PRODUTO` = `t_produtos`.`COD_P' +
        'RODUTO`)'
      '    INNER JOIN `base_mfb`.`t_clientes` '
      
        '        ON (`t_vendas`.`COD_CLIENTE` = `t_clientes`.`COD_CLIENTE' +
        '`)'
      '        '
      
        '        WHERE (  DATE_FORMAT(`t_vendas`.`DATAVENDA`, '#39'%d-%m-%Y'#39')' +
        '   BETWEEN :datainicial AND :datafinal);')
    Left = 496
    Top = 176
    object q_produtosVendidosCOD_CLIENTE: TAutoIncField
      FieldName = 'COD_CLIENTE'
      ReadOnly = True
    end
    object q_produtosVendidosRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 65
    end
    object q_produtosVendidosCOD_VENDA: TAutoIncField
      FieldName = 'COD_VENDA'
      ReadOnly = True
    end
    object q_produtosVendidosDATAVENDA: TDateTimeField
      FieldName = 'DATAVENDA'
    end
    object q_produtosVendidosVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object q_produtosVendidosPERDESC: TStringField
      FieldName = 'PERDESC'
      Size = 5
    end
    object q_produtosVendidosTOTALDESC: TFloatField
      FieldName = 'TOTALDESC'
      DisplayFormat = '#,##0.00'
    end
    object q_produtosVendidosQTDITENS: TIntegerField
      FieldName = 'QTDITENS'
    end
    object q_produtosVendidosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object q_produtosVendidosQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#,##0.00'
    end
    object q_produtosVendidosVALORITENS: TFloatField
      FieldName = 'VALORITENS'
      DisplayFormat = '#,##0.00'
    end
    object q_produtosVendidosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object q_produtosVendidosPRECOUNIT: TBCDField
      FieldName = 'PRECOUNIT'
      DisplayFormat = '#,##0.00'
      Precision = 24
      Size = 2
    end
  end
  object QITENS: TADOQuery
    Connection = dm.dm
    CursorType = ctStatic
    OnCalcFields = QITENSCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `t_itens_vendas`.`COD_PRODUTO`'
      '    , `t_itens_vendas`.`DESCRICAO`'
      '    , `t_itens_vendas`.`QUANTIDADE`'
      '    , `t_itens_vendas`.`VALORITENS`'
      '    , `t_produtos`.`DESCRICAO`'
      'FROM'
      '    `base_mfb`.`t_itens_vendas`'
      '    INNER JOIN `base_mfb`.`t_vendas` '
      
        '        ON (`t_itens_vendas`.`COD_VENDA` = `t_vendas`.`COD_VENDA' +
        '`)'
      '    INNER JOIN `base_mfb`.`t_produtos` '
      
        '        ON (`t_itens_vendas`.`COD_PRODUTO` = `t_produtos`.`COD_P' +
        'RODUTO`)'
      ''
      
        'WHERE (  DATE_FORMAT(`t_vendas`.`DATAVENDA`, '#39'%d-%m-%Y'#39')   BETWE' +
        'EN '#39'29-06-2018'#39'AND '#39'29-06-2018'#39');')
    Left = 416
    Top = 280
    object QITENSCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object QITENSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object QITENSQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#,##0.00'
    end
    object QITENSVALORITENS: TFloatField
      FieldName = 'VALORITENS'
      DisplayFormat = '#,##0.00'
    end
    object QITENStotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DataSource2: TDataSource
    DataSet = QITENS
    Left = 520
    Top = 328
  end
end
