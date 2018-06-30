object Frm_ven: TFrm_ven
  Left = 152
  Top = 16
  BorderStyle = bsDialog
  Caption = 'MFB -Rotina de Vendas'
  ClientHeight = 652
  ClientWidth = 982
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    982
    652)
  PixelsPerInch = 96
  TextHeight = 13
  object Label30: TLabel
    Left = 0
    Top = 0
    Width = 982
    Height = 33
    Align = alTop
    AutoSize = False
    Caption = 'For'#231'a de vendas'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 98
    Top = 104
    Width = 58
    Height = 15
    Caption = 'Descri'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 39
    Height = 15
    Caption = 'Codigo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 898
    Top = 104
    Width = 65
    Height = 15
    Caption = 'Quantidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 550
    Top = 437
    Width = 117
    Height = 15
    Caption = 'Valor Total do pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 4
    Top = 490
    Width = 76
    Height = 15
    Caption = 'Observa'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 702
    Top = 435
    Width = 21
    Height = 19
    Caption = 'R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 7
    Top = 429
    Width = 258
    Height = 14
    Caption = 'Delete para excluir um item da lista de pedidos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label22: TLabel
    Left = 550
    Top = 469
    Width = 66
    Height = 15
    Caption = '% Desconto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label23: TLabel
    Left = 550
    Top = 501
    Width = 141
    Height = 15
    Caption = 'Valor total com desconto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label24: TLabel
    Left = 702
    Top = 499
    Width = 21
    Height = 19
    Caption = 'R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 37
    Width = 537
    Height = 64
    Caption = 'Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 72
      Top = 32
      Width = 23
      Height = 23
      Caption = 'F2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label9: TLabel
      Left = 9
      Top = 17
      Width = 40
      Height = 13
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 97
      Top = 35
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
    object Ed_codcli: TEdit
      Left = 9
      Top = 31
      Width = 64
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = Ed_codcliExit
      OnKeyDown = Ed_codcliKeyDown
    end
  end
  object GroupBox2: TGroupBox
    Left = 551
    Top = 37
    Width = 426
    Height = 64
    Caption = 'Forma Pagamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label8: TLabel
      Left = 9
      Top = 17
      Width = 104
      Height = 13
      Caption = #192' vista ou a prazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_Form_pgto: TComboBox
      Left = 8
      Top = 32
      Width = 217
      Height = 22
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
      OnKeyDown = CB_Form_pgtoKeyDown
      Items.Strings = (
        'Venda '#224' vista'
        'Venda a Prazo')
    end
  end
  object confirm: TBitBtn
    Left = 788
    Top = 119
    Width = 104
    Height = 25
    Caption = 'Pesquisar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = confirmClick
    OnKeyDown = confirmKeyDown
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
      33333333373F33333333333330B03333333333337F7F33333333333330F03333
      333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
      333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
      333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
      3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
      33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
      33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
      03333337777777F7F33333330000000003333337777777773333}
    NumGlyphs = 2
  end
  object DBGrid_rec: TDBGrid
    Left = 5
    Top = 144
    Width = 972
    Height = 281
    Color = clWhite
    DataSource = DS_serv
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnKeyDown = DBGrid_recKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Codigo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 439
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Title.Caption = 'Quantidade'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_serv'
        Title.Caption = 'Pr.Unitario'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTOTAL'
        Title.Caption = 'Subtotal'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 95
        Visible = True
      end>
  end
  object DBGrid_Pes: TDBGrid
    Left = 5
    Top = 144
    Width = 972
    Height = 281
    Color = 14024703
    DataSource = DS_pesq
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = DBGrid_PesDrawColumnCell
    OnKeyDown = DBGrid_PesKeyDown
    OnKeyUp = DBGrid_PesKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Codigo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 308
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Quantide'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOUNIT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Pr. Unitario'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MARCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Marca'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MODELO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Modelo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'EMBALAGEM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Embalagem'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Unidade'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 71
        Visible = True
      end>
  end
  object Ed_servico: TEdit
    Left = 95
    Top = 120
    Width = 690
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyDown = Ed_servicoKeyDown
  end
  object Confirmar: TBitBtn
    Left = 471
    Top = 584
    Width = 145
    Height = 33
    Caption = 'Confirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = ConfirmarClick
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
  object Ed_valorTot1: TEdit
    Left = 727
    Top = 431
    Width = 137
    Height = 24
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Text = '0,00'
  end
  object Ed_qtd: TEdit
    Left = 895
    Top = 120
    Width = 80
    Height = 22
    Anchors = [akRight]
    AutoSize = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '1'
    OnExit = Ed_qtdExit
    OnKeyDown = Ed_qtdKeyDown
  end
  object Edit_codigo: TEdit
    Left = 7
    Top = 120
    Width = 89
    Height = 22
    Anchors = [akRight]
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clWhite
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object Ed_Obs: TEdit
    Left = 87
    Top = 489
    Width = 382
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnKeyDown = Ed_ObsKeyDown
  end
  object BitBtn1: TBitBtn
    Left = 311
    Top = 584
    Width = 145
    Height = 33
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 719
    Top = 584
    Width = 145
    Height = 33
    Caption = 'Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn2Click
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
  object Ed_perdesc: TEdit
    Left = 727
    Top = 463
    Width = 137
    Height = 24
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    Text = '0,00'
    OnExit = Ed_perdescExit
    OnKeyDown = Ed_perdescKeyDown
  end
  object Ed_totalDesc: TEdit
    Left = 727
    Top = 495
    Width = 137
    Height = 24
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    Text = '0,00'
  end
  object Pnel_item: TPanel
    Left = 5
    Top = 425
    Width = 972
    Height = 225
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 15
    Visible = False
    object Label11: TLabel
      Left = 18
      Top = 18
      Width = 53
      Height = 16
      Caption = 'Modelo'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 16
      Top = 56
      Width = 88
      Height = 16
      Caption = 'Peso liquido'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 16
      Top = 96
      Width = 77
      Height = 16
      Caption = 'Peso Bruto'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 136
      Width = 51
      Height = 16
      Caption = 'Origem'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 16
      Top = 176
      Width = 87
      Height = 16
      Caption = 'Cod-Fabrica'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 104
      Top = 200
      Width = 60
      Height = 13
      Caption = 'CODBARRA'
      FocusControl = DBEdit6
    end
    object Label17: TLabel
      Left = 424
      Top = 56
      Width = 34
      Height = 16
      Caption = 'NCM'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 424
      Top = 136
      Width = 86
      Height = 16
      Caption = 'Observa'#231#227'o'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 424
      Top = 96
      Width = 105
      Height = 16
      Caption = 'Cd-Fornecedor'
      FocusControl = DBEdit10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 424
      Top = 16
      Width = 115
      Height = 16
      Caption = 'Codigo de Barra'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 40
      Top = 159
      Width = 13
      Height = 16
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 824
      Top = 184
      Width = 145
      Height = 33
      Caption = 'Fechar'
      Flat = True
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
      OnClick = SpeedButton2Click
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 264
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'MODELO'
      DataSource = DS_pesq
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 72
      Width = 134
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PESOLIQUIDO'
      DataSource = DS_pesq
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 112
      Width = 134
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PESOBRUTO'
      DataSource = DS_pesq
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 152
      Width = 17
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ORIGEM'
      DataSource = DS_pesq
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 192
      Width = 264
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CODFABRICA'
      DataSource = DS_pesq
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 424
      Top = 32
      Width = 264
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CODBARRA'
      DataSource = DS_pesq
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 424
      Top = 72
      Width = 199
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'NCM'
      DataSource = DS_pesq
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 424
      Top = 152
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'OBSERVACAO'
      DataSource = DS_pesq
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit10: TDBEdit
      Left = 424
      Top = 112
      Width = 134
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Codigo_forn'
      DataSource = DS_pesq
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
  end
  object DS_serv: TDataSource
    DataSet = CDS_serv
    Left = 872
    Top = 168
  end
  object Q_pesqServBK: TQuery
    DatabaseName = 'dm.dm'
    SQL.Strings = (
      'SELECT * FROM t_produtos'
      'where Descricao like  :item'
      'and  SITUACAO ='#39'A'#39)
    Left = 880
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end>
    object Q_pesqServBKCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'DM.t_produtos.COD_PRODUTO'
    end
    object Q_pesqServBKDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DM.t_produtos.DESCRICAO'
      Size = 60
    end
    object Q_pesqServBKMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'DM.t_produtos.MARCA'
    end
    object Q_pesqServBKMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'DM.t_produtos.MODELO'
    end
    object Q_pesqServBKQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'DM.t_produtos.QUANTIDADE'
      DisplayFormat = '#,##0.00'
    end
    object Q_pesqServBKPRECOUNIT: TFloatField
      FieldName = 'PRECOUNIT'
      Origin = 'DM.t_produtos.PRECOUNIT'
      DisplayFormat = '#,##0.00'
    end
    object Q_pesqServBKEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Origin = 'DM.t_produtos.EMBALAGEM'
    end
    object Q_pesqServBKUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'DM.t_produtos.UNIDADE'
      Size = 5
    end
    object Q_pesqServBKPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
      Origin = 'DM.t_produtos.PESOLIQUIDO'
      DisplayFormat = '#,##0.00'
    end
    object Q_pesqServBKPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      Origin = 'DM.t_produtos.PESOBRUTO'
      DisplayFormat = '#,##0.00'
    end
    object Q_pesqServBKDATACADASTRO: TDateTimeField
      FieldName = 'DATACADASTRO'
      Origin = 'DM.t_produtos.DATACADASTRO'
    end
    object Q_pesqServBKORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'DM.t_produtos.ORIGEM'
      Size = 1
    end
    object Q_pesqServBKCODFABRICA: TStringField
      FieldName = 'CODFABRICA'
      Origin = 'DM.t_produtos.CODFABRICA'
    end
    object Q_pesqServBKCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'DM.t_produtos.CODBARRA'
    end
    object Q_pesqServBKNCM: TStringField
      FieldName = 'NCM'
      Origin = 'DM.t_produtos.NCM'
      Size = 15
    end
    object Q_pesqServBKOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'DM.t_produtos.OBSERVACAO'
      Size = 100
    end
    object Q_pesqServBKSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'DM.t_produtos.SITUACAO'
      Size = 1
    end
    object Q_pesqServBKCodigo_forn: TIntegerField
      FieldName = 'Codigo_forn'
      Origin = 'DM.t_produtos.Codigo_forn'
    end
  end
  object CDS_serv: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    BeforePost = CDS_servBeforePost
    OnCalcFields = CDS_servCalcFields
    Left = 800
    Top = 176
    Data = {
      840000009619E0BD010000001800000004000000000003000000840006636F64
      69676F0100490000000100055749445448020002000A00096465736372696361
      6F0100490000000100055749445448020002003C000371746408000400000000
      0008766C725F7365727608000400000001000753554254595045020049000600
      4D6F6E6579000000}
    object CDS_servcodigo: TStringField
      FieldName = 'codigo'
      Size = 10
    end
    object CDS_servdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object CDS_servqtd: TFloatField
      FieldName = 'qtd'
    end
    object CDS_servvlr_serv: TCurrencyField
      FieldName = 'vlr_serv'
    end
    object CDS_servSUBTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUBTOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DS_pesq: TDataSource
    DataSet = Q_pesqServ
    Left = 896
    Top = 312
  end
  object Q_pesqServ: TADOQuery
    Connection = dm.dm
    Parameters = <
      item
        Name = 'item'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 88
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM t_produtos'
      'where Descricao like  :item'
      'and  SITUACAO ='#39'A'#39)
    Left = 768
    Top = 264
    object Q_pesqServCOD_PRODUTO: TAutoIncField
      FieldName = 'COD_PRODUTO'
      ReadOnly = True
    end
    object Q_pesqServCodigo_forn: TIntegerField
      FieldName = 'Codigo_forn'
    end
    object Q_pesqServDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Q_pesqServMARCA: TStringField
      FieldName = 'MARCA'
    end
    object Q_pesqServQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#,##.00'
    end
    object Q_pesqServMODELO: TStringField
      FieldName = 'MODELO'
    end
    object Q_pesqServPRECOUNIT: TBCDField
      FieldName = 'PRECOUNIT'
      Precision = 24
      Size = 2
    end
    object Q_pesqServEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
    end
    object Q_pesqServUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object Q_pesqServPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object Q_pesqServPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object Q_pesqServDATACADASTRO: TDateTimeField
      FieldName = 'DATACADASTRO'
    end
    object Q_pesqServORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 1
    end
    object Q_pesqServCODFABRICA: TStringField
      FieldName = 'CODFABRICA'
    end
    object Q_pesqServCODBARRA: TStringField
      FieldName = 'CODBARRA'
    end
    object Q_pesqServNCM: TStringField
      FieldName = 'NCM'
      Size = 15
    end
    object Q_pesqServOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
    object Q_pesqServSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
  end
  object Q1: TADOQuery
    Connection = dm.dm
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRODUTO'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  PRECOUNIT , QUANTIDADE FROM  T_PRODUTOS  WHERE COD_PRODU' +
        'TO =:CODPRODUTO')
    Left = 576
    Top = 240
    object Q1PRECOUNIT: TFloatField
      FieldName = 'PRECOUNIT'
    end
    object Q1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
  end
end
