object Consulta: TConsulta
  Left = 300
  Top = 158
  ActiveControl = Edit1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Menu Consulta...'
  ClientHeight = 333
  ClientWidth = 514
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000330000000000000000000000033303303303300000000000000
    0003303330333003003300000000000000033003330330002333000000000000
    0030000033003033333000000000000033333330000003330003330000000803
    33333333333333300233330000000F033333333333333302333BB03000004F83
    33333333333333333BB003BB00004FF3333333333333B33BB0033BBB00004FF3
    33333333B3BB3BB0033BBBB000004FF83B333B3B3B3BBBB03BBBBB0300F04FFF
    33B3B3B3BBBBBBBBBBBB00330FF04FFF8B3B3333BBBBBBBBBB0033330FF044FF
    F8BBB03033BBBBB330333330FFF444FFF8BB0BB3003B330003333330FF44444F
    F88B3BBB300000033333B33FFF44444FFF3BB0BBB3000333B33BB38FF4444444
    FF003B0BB333333BBBBBB3FFF44444444FF00030BBBBBBBBBBBBBBFF44444444
    0000000303BBB3300000BFF444444400000000000000000000000FF444440000
    0000000000000000000000444444000000000000000000000000000044440000
    0000000000000000000000000444000000000000000000000000000000040000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFF1FFFFF8003FFFC0000FFF800007FF800007FE000003F0000
    001F0000001F0000000F00000007000000070000000000000000000000000000
    00000000000000000000000000000000000000000000000000000000000000C0
    00000FE01F003FFFFF80FFFFFFC0FFFFFFF0FFFFFFF8FFFFFFFEFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 514
    Height = 333
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 152
    Height = 19
    Caption = 'Dados para procura'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel2: TBevel
    Left = 382
    Top = 8
    Width = 122
    Height = 69
    Style = bsRaised
  end
  object Bevel3: TBevel
    Left = 380
    Top = 6
    Width = 126
    Height = 73
    Shape = bsFrame
    Style = bsRaised
  end
  object Bevel4: TBevel
    Left = 8
    Top = 283
    Width = 497
    Height = 47
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 10
    Top = 8
    Width = 152
    Height = 19
    Caption = 'Dados para procura'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel5: TBevel
    Left = 8
    Top = 50
    Width = 370
    Height = 31
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 497
    Height = 201
    Color = clWhite
    DataSource = ds
    FixedColor = clActiveBorder
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
  end
  object bi: TRadioButton
    Left = 384
    Top = 13
    Width = 113
    Height = 17
    Caption = 'Busca &incremental'
    Checked = True
    Color = clActiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    TabStop = True
    OnClick = biClick
  end
  object be: TRadioButton
    Left = 384
    Top = 34
    Width = 113
    Height = 17
    Caption = 'Busca &exata'
    Color = clActiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    OnClick = biClick
  end
  object bc: TRadioButton
    Left = 384
    Top = 55
    Width = 113
    Height = 17
    Caption = 'Busca &contida'
    Color = clActiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    OnClick = biClick
  end
  object Edit1: TEdit
    Left = 14
    Top = 55
    Width = 359
    Height = 21
    CharCase = ecUpperCase
    Color = clActiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnEnter = Edit1Enter
    OnKeyPress = Edit1KeyPress
  end
  object BitBtn1: TBitBtn
    Left = 225
    Top = 295
    Width = 80
    Height = 27
    Caption = 'Pesquisar'
    TabOrder = 5
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 310
    Top = 295
    Width = 80
    Height = 27
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 418
    Top = 295
    Width = 80
    Height = 27
    Caption = 'Cancela'
    TabOrder = 7
    OnClick = BitBtn3Click
    Kind = bkCancel
  end
  object ds: TDataSource
    DataSet = q
    Left = 136
    Top = 168
  end
  object q: TADOQuery
    Connection = dm.dm
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_produtos')
    Left = 72
    Top = 168
  end
end
