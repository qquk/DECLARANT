object selectPeriod: TselectPeriod
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1077#1088#1080#1086#1076
  ClientHeight = 112
  ClientWidth = 192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 55
    Top = 86
    Width = 83
    Height = 22
    Caption = #1055#1077#1095#1072#1090#1100
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 14
    Top = 23
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object Label2: TLabel
    Left = 13
    Top = 60
    Width = 14
    Height = 13
    Caption = #1044#1086
  end
  object DateTimePicker1: TDateTimePicker
    Left = 33
    Top = 19
    Width = 141
    Height = 21
    Date = 41316.852177824080000000
    Time = 41316.852177824080000000
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 33
    Top = 55
    Width = 141
    Height = 21
    Date = 41316.852204606480000000
    Time = 41316.852204606480000000
    TabOrder = 1
  end
end
