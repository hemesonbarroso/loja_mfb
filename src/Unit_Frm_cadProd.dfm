object Frm_cadProd: TFrm_cadProd
  Left = 216
  Top = 124
  BorderStyle = bsDialog
  Caption = 'Cadastro de Produtos'
  ClientHeight = 506
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook1: TNotebook
    Left = 0
    Top = 0
    Width = 807
    Height = 506
    Align = alClient
    Color = clActiveBorder
    DragKind = dkDock
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Fornec'
      object Label4: TLabel
        Left = 89
        Top = 66
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
      object lbStatus: TLabel
        Left = 306
        Top = 22
        Width = 187
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = 'Inserir'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 9
        Top = 49
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object Bevel3: TBevel
        Left = 302
        Top = 20
        Width = 195
        Height = 22
        Shape = bsFrame
      end
      object Label8: TLabel
        Left = 8
        Top = 101
        Width = 125
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Status'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 160
        Top = 172
        Width = 34
        Height = 13
        Caption = 'Modelo'
      end
      object Quantidadel: TLabel
        Left = 160
        Top = 195
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label11: TLabel
        Left = 161
        Top = 107
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label12: TLabel
        Left = 160
        Top = 127
        Width = 60
        Height = 13
        Caption = 'Forneccedor'
      end
      object Label7: TLabel
        Left = 160
        Top = 148
        Width = 29
        Height = 13
        Caption = 'Marca'
      end
      object Label13: TLabel
        Left = 160
        Top = 218
        Width = 67
        Height = 13
        Caption = 'Pre'#231'o Unitario'
      end
      object Label2: TLabel
        Left = 160
        Top = 333
        Width = 57
        Height = 13
        Caption = 'Cod Fabrica'
      end
      object Label15: TLabel
        Left = 160
        Top = 356
        Width = 49
        Height = 13
        Caption = 'Cod-Barra'
      end
      object Label16: TLabel
        Left = 160
        Top = 242
        Width = 54
        Height = 13
        Caption = 'Embalagem'
      end
      object Label17: TLabel
        Left = 160
        Top = 312
        Width = 52
        Height = 13
        Caption = 'Peso Bruto'
      end
      object Label18: TLabel
        Left = 160
        Top = 266
        Width = 42
        Height = 13
        Caption = 'Unidade '
      end
      object Label19: TLabel
        Left = 160
        Top = 289
        Width = 59
        Height = 13
        Caption = 'Peso Liquido'
      end
      object Bevel6: TBevel
        Left = 5
        Top = 99
        Width = 130
        Height = 17
        Style = bsRaised
      end
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 807
        Height = 16
        Align = alTop
        Caption = 'Menu Cadatro de Produtos'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'System'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Bevel12: TBevel
        Left = 0
        Top = 92
        Width = 146
        Height = 341
        Shape = bsFrame
        Style = bsRaised
      end
      object Bevel14: TBevel
        Left = 144
        Top = 92
        Width = 650
        Height = 341
        Shape = bsFrame
        Style = bsRaised
      end
      object Bevel15: TBevel
        Left = 0
        Top = 431
        Width = 795
        Height = 64
        Shape = bsFrame
        Style = bsRaised
      end
      object Bevel16: TBevel
        Left = 0
        Top = 33
        Width = 794
        Height = 13
        Shape = bsBottomLine
        Style = bsRaised
      end
      object Label1: TLabel
        Left = 160
        Top = 380
        Width = 22
        Height = 13
        Caption = 'NCM'
      end
      object Label3: TLabel
        Left = 160
        Top = 404
        Width = 27
        Height = 13
        Caption = 'Obs.:'
      end
      object SpeedButton1: TSpeedButton
        Left = 65
        Top = 64
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
      object Label10: TLabel
        Left = 8
        Top = 165
        Width = 125
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Origem'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 5
        Top = 163
        Width = 130
        Height = 17
        Style = bsRaised
      end
      object SpeedButton2: TSpeedButton
        Left = 309
        Top = 124
        Width = 23
        Height = 22
        Caption = 'F2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object Label14: TLabel
        Left = 332
        Top = 125
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
      object Ed_cod_prod: TEdit
        Left = 9
        Top = 63
        Width = 55
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = Ed_cod_prodExit
        OnKeyDown = Ed_cod_prodKeyDown
        OnKeyPress = Ed_cod_prodKeyPress
      end
      object Quantidade: TEdit
        Left = 248
        Top = 192
        Width = 159
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Ed_Descri: TEdit
        Left = 249
        Top = 100
        Width = 393
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 1
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Ed_Pr_Uni: TEdit
        Left = 249
        Top = 215
        Width = 159
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 6
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Ed_modelo: TEdit
        Left = 248
        Top = 169
        Width = 159
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Ed_Embal: TEdit
        Left = 248
        Top = 238
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Ed_cod_fabri: TEdit
        Left = 248
        Top = 330
        Width = 161
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 11
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Ed_codbarra: TEdit
        Left = 248
        Top = 353
        Width = 161
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 12
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Ed_unidade: TEdit
        Left = 248
        Top = 261
        Width = 161
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 8
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object chek_Ativo: TCheckBox
        Left = 16
        Top = 133
        Width = 95
        Height = 17
        Caption = 'Ativo S/N'
        TabOrder = 16
      end
      object Salvar: TBitBtn
        Left = 344
        Top = 452
        Width = 129
        Height = 33
        Caption = 'Salvar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = SalvarClick
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
      object Ed_Fornec: TEdit
        Left = 249
        Top = 123
        Width = 56
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = Ed_FornecExit
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object BitBtn33: TBitBtn
        Left = 640
        Top = 452
        Width = 129
        Height = 33
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnClick = BitBtn33Click
        Glyph.Data = {
          A2070000424DA207000000000000360000002800000019000000190000000100
          1800000000006C070000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A0E08080E04040C04040C04040
          C04040C04040C04040C08060E0C0A0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A0E04040E00020
          C04020C04020E04020E04020E04020E04020E04020E04020E00020C04040E080
          A0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF8080E04020C04020C04020E04020E04040E04040E04040E04040E04040E040
          40E04040E04020E04020C00020C04060E0FFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFF8060C00020C04020E04020E04040E04040E04040E040
          40E04040E04040E04040E04040E04040E04040E04020E04020E00020C04040C0
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF8080E00020C04020E04020E040
          20C04040C04040E04040E04040E04060E04060E04060E04040E04040E04040E0
          4040E04020C04020C00020C04060C0FFFFFFFFFFFF00FFFFFFFFFFFFC0A0E000
          20C00020C04020E04020E00020800020604040C04040E04060E04060E04060E0
          4060E04060E04040E04040E04020800020600020A00020C00020A08080E0FFFF
          FF00FFFFFFFFFFFF4040C00020C04020C04020E04040E0402080002040002060
          4040C04040E04060E04060E04060E04060E04040E04020A00020400020604020
          C04020E00020C04020C0FFFFFF00FFFFFFC0A0E00020A00020C04020C04020E0
          4040E04040E04020800020400020804040C04040E04060E04060E04040E04020
          A00020400020604020C04020E04020C00020C00020A080A0E000FFFFFF8080C0
          0020A00020C04020C04020E04040E04040E04040E00020600020400020804040
          C04040E04040E04020800020400020604020C04040E04020E04020C00020C000
          20C04060C000FFFFFF4040C00020A00020C00020C04020E04020E04040E04040
          E04040C00020600020400020804020C00020800020400020604020C04040E040
          20E04020E00020C00020C00020A04040A000C0A0E04040A00020A00020C00020
          C00020C04020C04020E04020E04040E04020C000206000204000206000204000
          20604020C04020E04020E04020E04020C00020C00020C00020A04020A00080A0
          C04020A00020A00020A00020C00020C00020C04020C04020C04020E04020E000
          20A00020400020400020400020A04020C04020C04020C00020C00020C00020C0
          0020A00020A00020A00080A0C04020A00020A00020A00020A00020C00020C000
          20C00020C00020C00020C00020600020400020400020400020800020C00020C0
          0020C00020C00020C00020A00020A00020A00020A000C0A0E04040A00020A000
          20A00020A00020A00020A00020A00020C00020A0002060002040002040000080
          0020400020400020800020A00020A00020A00020A00020A00020A00020A04020
          A000FFFFFF4040A00020A00020A00020A00020A00020A00020A00020A0002060
          0020400020400020A00020A00000800020400020400000800020A00020A00020
          A00020A00020A00020A04040A000FFFFFF8080C00020A00020A00020A00020A0
          0020A00020A00020600020400020600020A00020A00020A00020A00020800020
          400020400020800020A00020A00020A00020A00020A04060A000FFFFFFC0A0E0
          0000800020A00020A00020A04020A04020604040604040804040A04040C04040
          C04040C04040C04040C04040804040604020600020800020A00020A00020A000
          008080A0C000FFFFFFFFFFFF4040A00020A00020A04020A04040A04040604060
          808060C08060C08060C08060C08060C08060C08060C08060C04060A040606040
          40804020A00020A00020A04020A0FFFFFF00FFFFFFFFFFFFC0A0E00020A00020
          A04040A04060A08060A08060C08060C08060C08060C08060C08060C08060C080
          60C08060C08060C04060A04060A04040A00020A00000808080C0FFFFFF00FFFF
          FFFFFFFFFFFFFF8080C00020A04040A04060C08060C08060C08080C08080E080
          A0E080A0E080A0E080A0E08080E08080C08060C08060C04060C04040A00020A0
          4060C0FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF8060C00020A04040A040
          60C08060C080A0E0C0A0E0C8D0D4C0DCC0C0DCC0C8D0D4C0A0E080A0E08060C0
          4060C04040C00020A04040A0FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF8080C04020A04040A04060C08060C080A0E0C0A0E0C0A0E0C0A0E0
          C0A0E080A0E08080C04060C04040A04020A08060C0FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A0E04060C04020A04040A0
          4040C04060C08060C08060C04060C04040C04040A04020A04040C0C0A0E0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF8080C04060C04040A04040A04040A04040A04060A08080
          C0C0A0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80A0
          C080A0C0C0A0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00}
      end
      object Ed_marca: TEdit
        Left = 249
        Top = 147
        Width = 158
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Edit_pesoLiq: TEdit
        Left = 248
        Top = 285
        Width = 161
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 20
        TabOrder = 9
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Ed_PesoBruto: TEdit
        Left = 248
        Top = 308
        Width = 161
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 20
        TabOrder = 10
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Edi_NCM: TEdit
        Left = 248
        Top = 377
        Width = 161
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 13
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Edit_obs: TEdit
        Left = 248
        Top = 401
        Width = 521
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 14
        OnKeyDown = Ed_DescriKeyDown
        OnKeyPress = Ed_DescriKeyPress
      end
      object Rd_importado: TRadioButton
        Left = 16
        Top = 224
        Width = 97
        Height = 17
        Caption = 'Importado'
        TabOrder = 18
      end
      object Rb_Nacional: TRadioButton
        Left = 16
        Top = 192
        Width = 113
        Height = 17
        Caption = 'Nacional'
        TabOrder = 19
      end
      object btNovo: TBitBtn
        Left = 200
        Top = 452
        Width = 129
        Height = 33
        Caption = 'Novo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
        OnClick = btNovoClick
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
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'CadUsu'
      object Label53: TLabel
        Left = 32
        Top = 120
        Width = 46
        Height = 13
        Caption = 'S e n h a '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 32
        Top = 88
        Width = 54
        Height = 13
        Caption = 'U s u a r i o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label55: TLabel
        Left = 0
        Top = 0
        Width = 169
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Menu Cadstro de Usuario '
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'System'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LbStatusUsu: TLabel
        Left = 316
        Top = 25
        Width = 169
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'Inserir'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Bevel23: TBevel
        Left = 312
        Top = 23
        Width = 177
        Height = 22
        Shape = bsFrame
      end
      object Bevel24: TBevel
        Left = 16
        Top = 80
        Width = 385
        Height = 73
        Shape = bsFrame
      end
      object Label57: TLabel
        Left = 16
        Top = 388
        Width = 385
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = ' D e l e t e   p a r a   E x c l u i r'
        Color = 16770764
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Bevel25: TBevel
        Left = 14
        Top = 387
        Width = 389
        Height = 18
      end
      object Ed_senha: TEdit
        Left = 96
        Top = 117
        Width = 123
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 20
        PasswordChar = '*'
        TabOrder = 1
      end
      object Ed_susario: TEdit
        Left = 96
        Top = 88
        Width = 177
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 30
        TabOrder = 0
      end
      object StaticText8: TStaticText
        Left = 16
        Top = 63
        Width = 385
        Height = 17
        AutoSize = False
        BevelKind = bkFlat
        Caption = 
          'Entre com seu Usuario e Senha  para ter  acesso ao cadastro de U' +
          'suario'
        TabOrder = 2
      end
      object CheckAcesso: TCheckBox
        Left = 408
        Top = 184
        Width = 177
        Height = 17
        Caption = 'Acesso ao Cadastro de Usuario'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object CheckAtivoUsu: TCheckBox
        Left = 408
        Top = 208
        Width = 73
        Height = 17
        Caption = 'Ativo S/N'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 152
        Width = 385
        Height = 233
        Caption = '<< Altera'#231#227'o >>'
        TabOrder = 5
        object Label56: TLabel
          Left = 8
          Top = 16
          Width = 369
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Cadastro de Usuarios'
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBGrid2: TDBGrid
          Left = 8
          Top = 32
          Width = 369
          Height = 161
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 232
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CadUsusSn'
              Title.Alignment = taCenter
              Title.Caption = 'CadUsu'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ativo_Sn'
              Title.Alignment = taCenter
              Width = 50
              Visible = True
            end>
        end
        object SalvarUsu: TBitBtn
          Left = 208
          Top = 200
          Width = 147
          Height = 25
          Caption = 'Salvar'
          TabOrder = 1
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
        object ButNovoUsu: TBitBtn
          Left = 40
          Top = 200
          Width = 145
          Height = 25
          Caption = 'Novo'
          TabOrder = 2
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
            00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
            00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
            F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
            F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
            F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
            FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
            0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
            0033333337FFFFFF773333333000000003333333377777777333}
          NumGlyphs = 2
        end
      end
      object CheckVen: TCheckBox
        Left = 408
        Top = 232
        Width = 137
        Height = 17
        Caption = 'Cadastro de Vendedor'
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object CheckCadItens: TCheckBox
        Left = 408
        Top = 256
        Width = 113
        Height = 17
        Caption = 'Cadastro de Itens'
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
      object BitBtn30: TBitBtn
        Left = 16
        Top = 408
        Width = 89
        Height = 33
        Caption = 'Sair'
        TabOrder = 8
        Glyph.Data = {
          A2070000424DA207000000000000360000002800000019000000190000000100
          1800000000006C070000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A0E08080E04040C04040C04040
          C04040C04040C04040C08060E0C0A0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A0E04040E00020
          C04020C04020E04020E04020E04020E04020E04020E04020E00020C04040E080
          A0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF8080E04020C04020C04020E04020E04040E04040E04040E04040E04040E040
          40E04040E04020E04020C00020C04060E0FFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFF8060C00020C04020E04020E04040E04040E04040E040
          40E04040E04040E04040E04040E04040E04040E04020E04020E00020C04040C0
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF8080E00020C04020E04020E040
          20C04040C04040E04040E04040E04060E04060E04060E04040E04040E04040E0
          4040E04020C04020C00020C04060C0FFFFFFFFFFFF00FFFFFFFFFFFFC0A0E000
          20C00020C04020E04020E00020800020604040C04040E04060E04060E04060E0
          4060E04060E04040E04040E04020800020600020A00020C00020A08080E0FFFF
          FF00FFFFFFFFFFFF4040C00020C04020C04020E04040E0402080002040002060
          4040C04040E04060E04060E04060E04060E04040E04020A00020400020604020
          C04020E00020C04020C0FFFFFF00FFFFFFC0A0E00020A00020C04020C04020E0
          4040E04040E04020800020400020804040C04040E04060E04060E04040E04020
          A00020400020604020C04020E04020C00020C00020A080A0E000FFFFFF8080C0
          0020A00020C04020C04020E04040E04040E04040E00020600020400020804040
          C04040E04040E04020800020400020604020C04040E04020E04020C00020C000
          20C04060C000FFFFFF4040C00020A00020C00020C04020E04020E04040E04040
          E04040C00020600020400020804020C00020800020400020604020C04040E040
          20E04020E00020C00020C00020A04040A000C0A0E04040A00020A00020C00020
          C00020C04020C04020E04020E04040E04020C000206000204000206000204000
          20604020C04020E04020E04020E04020C00020C00020C00020A04020A00080A0
          C04020A00020A00020A00020C00020C00020C04020C04020C04020E04020E000
          20A00020400020400020400020A04020C04020C04020C00020C00020C00020C0
          0020A00020A00020A00080A0C04020A00020A00020A00020A00020C00020C000
          20C00020C00020C00020C00020600020400020400020400020800020C00020C0
          0020C00020C00020C00020A00020A00020A00020A000C0A0E04040A00020A000
          20A00020A00020A00020A00020A00020C00020A0002060002040002040000080
          0020400020400020800020A00020A00020A00020A00020A00020A00020A04020
          A000FFFFFF4040A00020A00020A00020A00020A00020A00020A00020A0002060
          0020400020400020A00020A00000800020400020400000800020A00020A00020
          A00020A00020A00020A04040A000FFFFFF8080C00020A00020A00020A00020A0
          0020A00020A00020600020400020600020A00020A00020A00020A00020800020
          400020400020800020A00020A00020A00020A00020A04060A000FFFFFFC0A0E0
          0000800020A00020A00020A04020A04020604040604040804040A04040C04040
          C04040C04040C04040C04040804040604020600020800020A00020A00020A000
          008080A0C000FFFFFFFFFFFF4040A00020A00020A04020A04040A04040604060
          808060C08060C08060C08060C08060C08060C08060C08060C04060A040606040
          40804020A00020A00020A04020A0FFFFFF00FFFFFFFFFFFFC0A0E00020A00020
          A04040A04060A08060A08060C08060C08060C08060C08060C08060C08060C080
          60C08060C08060C04060A04060A04040A00020A00000808080C0FFFFFF00FFFF
          FFFFFFFFFFFFFF8080C00020A04040A04060C08060C08060C08080C08080E080
          A0E080A0E080A0E080A0E08080E08080C08060C08060C04060C04040A00020A0
          4060C0FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF8060C00020A04040A040
          60C08060C080A0E0C0A0E0C8D0D4C0DCC0C0DCC0C8D0D4C0A0E080A0E08060C0
          4060C04040C00020A04040A0FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF8080C04020A04040A04060C08060C080A0E0C0A0E0C0A0E0C0A0E0
          C0A0E080A0E08080C04060C04040A04020A08060C0FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A0E04060C04020A04040A0
          4040C04060C08060C08060C04060C04040C04040A04020A04040C0C0A0E0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF8080C04060C04040A04040A04040A04040A04060A08080
          C0C0A0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80A0
          C080A0C0C0A0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00}
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 16
        Width = 807
        Height = 33
        ButtonHeight = 47
        ButtonWidth = 57
        Caption = 'ToolBar1'
        TabOrder = 9
      end
    end
  end
  object Q_Insert: TADOQuery
    Connection = dm.dm
    Parameters = <>
    Left = 752
    Top = 24
  end
end
