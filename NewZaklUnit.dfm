object zaklpos: Tzaklpos
  Left = 451
  Top = 231
  BorderStyle = bsSizeToolWin
  Caption = #1055#1086#1079#1080#1094#1080#1103' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
  ClientHeight = 239
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 3
    Top = 31
    Width = 456
    Height = 202
    Shape = bsFrame
  end
  object Bevel2: TBevel
    Left = 11
    Top = 41
    Width = 325
    Height = 133
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 21
    Top = 51
    Width = 22
    Height = 13
    Caption = #1050#1086#1076':'
  end
  object DBText2: TDBText
    Left = 45
    Top = 52
    Width = 48
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 22
    Top = 116
    Width = 37
    Height = 13
    Caption = #1055#1072#1082#1080#1085#1075
  end
  object Label6: TLabel
    Left = 413
    Top = 180
    Width = 32
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object Label8: TLabel
    Left = 142
    Top = 52
    Width = 45
    Height = 13
    Caption = #1058#1072#1084'. '#1082#1086#1076
  end
  object Label1: TLabel
    Left = 343
    Top = 83
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label4: TLabel
    Left = 346
    Top = 131
    Width = 39
    Height = 13
    Caption = #1045#1076'. '#1080#1079#1084
  end
  object Label5: TLabel
    Left = 271
    Top = 182
    Width = 37
    Height = 13
    Caption = #1060#1080#1088#1084#1072
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 461
    Height = 31
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 23
        Width = 461
      end>
    EdgeInner = esNone
    EdgeOuter = esNone
    FixedOrder = True
    object ActionToolBar1: TActionToolBar
      Left = 0
      Top = 0
      Width = 457
      Height = 23
      ActionManager = ActionManager1
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
  end
  object packname: TLabeledEdit
    Left = 22
    Top = 85
    Width = 303
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    EditLabel.Width = 76
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = packnameChange
  end
  object DBEdit1: TDBEdit
    Left = 22
    Top = 131
    Width = 302
    Height = 24
    BorderStyle = bsNone
    DataField = 'PTITLE'
    DataSource = DataSource1
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object price: TLabeledEdit
    Left = 343
    Top = 52
    Width = 102
    Height = 26
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Ctl3D = True
    EditLabel.Width = 92
    EditLabel.Height = 13
    EditLabel.Caption = #1062#1077#1085#1072' '#1088#1072#1089#1090#1072#1084#1086#1078#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'oemcode'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    Text = '0,0'
    OnKeyPress = priceKeyPress
  end
  object oemcode: TEdit
    Left = 201
    Top = 52
    Width = 122
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object zakl_name: TLabeledEdit
    Left = 11
    Top = 199
    Width = 183
    Height = 26
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    EditLabel.Width = 62
    EditLabel.Height = 13
    EditLabel.Caption = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'oemcode'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
  end
  object zakl_dog: TLabeledEdit
    Left = 199
    Top = 199
    Width = 66
    Height = 26
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Ctl3D = True
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1086#1075#1086#1074#1086#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'oemcode'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
  end
  object zakl_date: TDateTimePicker
    Left = 345
    Top = 101
    Width = 100
    Height = 25
    Date = 39562.626151250000000000
    Time = 39562.626151250000000000
    TabOrder = 7
  end
  object town_com1: TComboBox
    Left = 271
    Top = 198
    Width = 174
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
  object punitcombo: TComboBox
    Left = 346
    Top = 147
    Width = 97
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Visible = False
            Action = safe
            Caption = 'F&2-'#1057#1086#1093#1088#1072#1085#1080#1090#1100
            ShortCut = 113
          end
          item
            Action = exit
            Caption = #1042#1099#1093#1086#1076
            ShortCut = 27
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 439
    Top = 5
    StyleName = 'XP Style'
    object safe: TAction
      Caption = 'safe'
      ShortCut = 113
      OnExecute = safeExecute
    end
    object exit: TAction
      Caption = 'exit'
      ShortCut = 27
      OnExecute = exitExecute
    end
  end
  object IBQuery1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      'select * from packtypes where packtype_id=:packtype_id')
    Left = 226
    Top = 113
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'packtype_id'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 192
    Top = 112
  end
end
