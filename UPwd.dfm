object Form2: TForm2
  Left = 525
  Top = 311
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1074#1086#1076' '#1087#1072#1088#1086#1083#1103
  ClientHeight = 295
  ClientWidth = 276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edPWD: TxpEdit
    Left = 9
    Top = 9
    Width = 187
    Height = 21
    Alignment = taLeftJustify
    Rounded = True
    RoundRadius = 3
    ActiveFrameColor = clNavy
    InActiveFrameColor = clBtnShadow
    MarginLeft = 2
    MarginRight = 2
    Style = esXP
    PasswordChar = '*'
    ReadOnly = True
    TabOrder = 0
  end
  object btnNull: TxpButton
    Left = 200
    Top = 145
    Width = 70
    Height = 30
    Caption = #1054#1073#1085#1091#1083#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Gradient = True
    TabOrder = 1
    OnClick = btnNullClick
  end
  object xpPanel1: TxpPanel
    Left = 8
    Top = 40
    Width = 187
    Height = 241
    GradientFill = False
    StartColor = clGray
    EndColor = 16244694
    FillDirection = fdLeftToRight
    TitleShow = False
    Caption = 'xpPanel'
    Title = 'xpPanelTitle'
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleAlignment = taCenter
    TitleStartColor = clWhite
    TitleEndColor = 15777194
    TitleColor = clWhite
    TitleFillDirect = fdLeftToRight
    TitleImageAlign = tiaLeft
    TitleButtons = [tbMinimize]
    DefaultHeight = 60
    BorderColor = clWhite
    RoundedCorner = [rcTopLeft, rcTopRight, rcBottomLeft, rcBottomRight]
    BGImageAlign = iaStretch
    Color = clMedGray
    TabOrder = 2
    object btn7: TxpButton
      Left = 20
      Top = 20
      Width = 35
      Height = 35
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 0
      OnClick = btn7Click
    end
    object btn8: TxpButton
      Left = 75
      Top = 20
      Width = 35
      Height = 35
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 1
      OnClick = btn8Click
    end
    object btn9: TxpButton
      Left = 130
      Top = 20
      Width = 35
      Height = 35
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 2
      OnClick = btn9Click
    end
    object btn6: TxpButton
      Left = 130
      Top = 75
      Width = 35
      Height = 35
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 3
      OnClick = btn6Click
    end
    object btn5: TxpButton
      Left = 75
      Top = 75
      Width = 35
      Height = 35
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 4
      OnClick = btn5Click
    end
    object btn4: TxpButton
      Left = 20
      Top = 75
      Width = 35
      Height = 35
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 5
      OnClick = btn4Click
    end
    object btn1: TxpButton
      Left = 20
      Top = 130
      Width = 35
      Height = 35
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 6
      OnClick = btn1Click
    end
    object btn2: TxpButton
      Left = 75
      Top = 130
      Width = 35
      Height = 35
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 7
      OnClick = btn2Click
    end
    object btn3: TxpButton
      Left = 130
      Top = 130
      Width = 35
      Height = 35
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 8
      OnClick = btn3Click
    end
    object btnEnter: TxpButton
      Left = 103
      Top = 185
      Width = 62
      Height = 35
      Caption = #1042#1042#1054#1044
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 9
      OnClick = btnEnterClick
    end
    object btn0: TxpButton
      Left = 20
      Top = 185
      Width = 62
      Height = 35
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 10
      OnClick = btn0Click
    end
  end
  object btnBackspace: TxpButton
    Left = 209
    Top = 8
    Width = 25
    Height = 25
    Hint = #1057#1090#1077#1088#1077#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1081#13#10#1074#1074#1077#1076#1077#1085#1085#1099#1081' '#1089#1080#1084#1074#1086#1083
    Caption = '<-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Gradient = True
    ShowHint = True
    TabOrder = 3
    OnClick = btnBackspaceClick
  end
  object xpButton1: TxpButton
    Left = 240
    Top = 8
    Width = 25
    Height = 25
    Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1077' '#1074#1074#1086#1076#1072
    Caption = 'C'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Gradient = True
    ShowHint = True
    TabOrder = 4
    OnClick = xpButton1Click
  end
end
