object newfly: Tnewfly
  Left = 624
  Top = 224
  BorderStyle = bsNone
  ClientHeight = 244
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 38
    Top = 68
    Width = 28
    Height = 15
    Caption = #1044#1072#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 37
    Top = 116
    Width = 117
    Height = 15
    Caption = #1060#1080#1088#1084#1072' '#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object add_but: TSpeedButton
    Left = 70
    Top = 214
    Width = 69
    Height = 22
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = add_butClick
  end
  object close_but: TSpeedButton
    Left = 175
    Top = 214
    Width = 69
    Height = 22
    Caption = #1054#1090#1084#1077#1085#1072
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = close_butClick
  end
  object Label3: TLabel
    Left = 37
    Top = 158
    Width = 112
    Height = 15
    Caption = #1060#1080#1088#1084#1072' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ordno: TLabeledEdit
    Left = 37
    Top = 36
    Width = 121
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Ctl3D = True
    EditLabel.Width = 66
    EditLabel.Height = 15
    EditLabel.Caption = #8470' '#1048#1085#1074#1086#1081#1089#1072
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Arial'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyDown = ordnoKeyDown
    OnKeyPress = ordnoKeyPress
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 37
    Top = 134
    Width = 259
    Height = 22
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkFlat
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'CLIENT_NAME'
    ListField = 'CLIENT_NAME'
    ListSource = dm.dscl
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object outno: TLabeledEdit
    Left = 175
    Top = 36
    Width = 121
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    EditLabel.Width = 61
    EditLabel.Height = 15
    EditLabel.Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Arial'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object datetrans: TDateTimePicker
    Left = 39
    Top = 84
    Width = 120
    Height = 26
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 40106.701076817130000000
    Time = 40106.701076817130000000
    TabOrder = 3
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 37
    Top = 176
    Width = 259
    Height = 22
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkFlat
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'CLIENT_NAME'
    ListField = 'CLIENT_NAME'
    ListSource = dm.dscust
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
  end
  object deltaw: TLabeledEdit
    Left = 224
    Top = 83
    Width = 72
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    EditLabel.Width = 43
    EditLabel.Height = 15
    EditLabel.Caption = 'delta W'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Arial'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    Text = '4'
    OnKeyPress = deltawKeyPress
  end
  object prov: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      'select * from orders where trans_id=:trans_id')
    Left = 15
    Top = 171
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trans_id'
        ParamType = ptUnknown
      end>
  end
  object translist: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Left = 52
    Top = 170
  end
end