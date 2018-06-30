object FormMensagemBox: TFormMensagemBox
  Left = 266
  Top = 204
  BorderStyle = bsNone
  Caption = 'Menssagem...'
  ClientHeight = 147
  ClientWidth = 284
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 284
    Height = 147
    Align = alClient
    Brush.Color = clBackground
    Pen.Color = clWhite
    Pen.Style = psDash
  end
  object Label1: TLabel
    Left = 97
    Top = 9
    Width = 88
    Height = 20
    Alignment = taCenter
    Caption = 'Mensagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 3
    Top = 4
    Width = 277
    Height = 2
    Shape = bsBottomLine
    Style = bsRaised
  end
  object Label2: TLabel
    Left = 98
    Top = 7
    Width = 88
    Height = 20
    Alignment = taCenter
    Caption = 'Mensagem'
    Color = 10485760
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 7
    Top = 40
    Width = 269
    Height = 57
    Alignment = taCenter
    AutoSize = False
    Caption = 'Label3'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object Bevel2: TBevel
    Left = 3
    Top = 143
    Width = 278
    Height = 2
    Shape = bsBottomLine
    Style = bsRaised
  end
  object Bevel3: TBevel
    Left = 279
    Top = 5
    Width = 10
    Height = 139
    Shape = bsLeftLine
    Style = bsRaised
  end
  object Bevel4: TBevel
    Left = 3
    Top = 4
    Width = 2
    Height = 139
    Shape = bsLeftLine
    Style = bsRaised
  end
  object BitBtn1: TBitBtn
    Left = 65
    Top = 109
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 149
    Top = 109
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 34
    Top = 45
  end
end
