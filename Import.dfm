object importform: Timportform
  Left = 473
  Top = 173
  Width = 497
  Height = 361
  BorderIcons = [biSystemMenu]
  Caption = #1048#1084#1087#1086#1088#1090' '#1087#1072#1082#1077#1090#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object add_but: TSpeedButton
    Left = 16
    Top = 295
    Width = 118
    Height = 33
    Caption = #1055#1077#1088#1077#1085#1086#1089' '#1087#1072#1082#1077#1090#1086#1074
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = add_butClick
  end
  object Memo1: TMemo
    Left = 12
    Top = 14
    Width = 224
    Height = 240
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 253
    Top = 14
    Width = 224
    Height = 239
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    TabOrder = 1
  end
  object pb1: TProgressBar
    Left = 13
    Top = 265
    Width = 464
    Height = 17
    TabOrder = 2
    Visible = False
  end
  object od1: TOpenDialog
    DefaultExt = 'zpkg'
    Filter = #1055#1072#1082#1077#1090#1099'|*.zpkg'
    Left = 426
    Top = 32
  end
end
