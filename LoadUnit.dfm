object showform: Tshowform
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'showform'
  ClientHeight = 119
  ClientWidth = 450
  Color = 15717568
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object but1: TSpeedButton
    Left = 190
    Top = 72
    Width = 83
    Height = 28
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 13003057
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Visible = False
    OnClick = but1Click
  end
  object statictext1: TLabel
    Left = 1
    Top = 1
    Width = 79
    Height = 18
    Caption = '  '#1047#1072#1075#1088#1091#1079#1082#1072
    Color = 13003057
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object StaticText2: TStaticText
    Left = 4
    Top = 40
    Width = 443
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'StaticText2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
end
