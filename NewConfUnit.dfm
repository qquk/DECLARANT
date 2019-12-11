object newconf: Tnewconf
  Left = 470
  Top = 252
  BorderStyle = bsNone
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1081' '#1082#1088#1085#1092#1080#1075#1091#1088#1072#1094#1080#1080
  ClientHeight = 263
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 14
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label2: TLabel
    Left = 12
    Top = 80
    Width = 50
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  object add_but: TSpeedButton
    Left = 63
    Top = 227
    Width = 95
    Height = 28
    Caption = #1057#1086#1079#1076#1072#1090#1100
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = add_butClick
  end
  object SpeedButton2: TSpeedButton
    Left = 209
    Top = 227
    Width = 95
    Height = 28
    Caption = #1054#1090#1084#1077#1085#1072
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object cnnote: TMemo
    Left = 12
    Top = 97
    Width = 356
    Height = 120
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Ctl3D = True
    Lines.Strings = (
      '')
    ParentCtl3D = False
    TabOrder = 0
  end
  object cnname: TEdit
    Left = 12
    Top = 31
    Width = 356
    Height = 32
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object newconf: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'NEW_CONFIGURATION'
    Left = 328
    Top = 73
    ParamData = <
      item
        DataType = ftString
        Name = 'CNFNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CNFNOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CREATEDATE'
        ParamType = ptInput
      end>
  end
  object chconf: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'UPDATECONF'
    Left = 336
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CNFNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CNFNOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'div_id'
        ParamType = ptInput
      end>
  end
end
