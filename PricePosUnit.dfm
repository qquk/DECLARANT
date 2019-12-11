object packpos: Tpackpos
  Left = 569
  Top = 199
  BorderStyle = bsSizeToolWin
  Caption = #1055#1086#1079#1080#1094#1080#1103' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1072
  ClientHeight = 333
  ClientWidth = 632
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
  object Label1: TLabel
    Left = 15
    Top = 303
    Width = 46
    Height = 13
    Caption = #1057#1086#1079#1076#1072#1085#1072':'
  end
  object DBText1: TDBText
    Left = 65
    Top = 303
    Width = 167
    Height = 17
    DataField = 'CREATEDATE'
    DataSource = DataSource1
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
    DataField = 'PACKTYPE_ID'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 346
    Top = 51
    Width = 42
    Height = 13
    Caption = #1058#1072#1084' '#1082#1086#1076
  end
  object Label6: TLabel
    Left = 229
    Top = 305
    Width = 32
    Height = 13
    AutoSize = False
    Caption = 'Label6'
    Visible = False
  end
  object Label7: TLabel
    Left = 509
    Top = 39
    Width = 59
    Height = 13
    Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076'.'
  end
  object Label8: TLabel
    Left = 22
    Top = 254
    Width = 104
    Height = 13
    Caption = #1060#1080#1088#1084#1072' '#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
  end
  object Label3: TLabel
    Left = 424
    Top = 254
    Width = 42
    Height = 13
    Caption = #1045#1076'. '#1080#1079#1084'.'
  end
  object Label4: TLabel
    Left = 509
    Top = 123
    Width = 46
    Height = 13
    Caption = #1055#1086#1096#1083#1080#1085#1072
  end
  object Label9: TLabel
    Left = 509
    Top = 164
    Width = 48
    Height = 13
    Caption = #1053#1072#1075#1088#1091#1079#1082#1072
  end
  object Label10: TLabel
    Left = 509
    Top = 80
    Width = 58
    Height = 13
    Caption = #1062#1077#1085#1072' '#1079#1072' '#1082#1075'.'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 31
    Width = 632
    Height = 302
    Align = alClient
    Shape = bsFrame
    ExplicitWidth = 537
  end
  object Bevel2: TBevel
    Left = 5
    Top = 37
    Width = 498
    Height = 262
    Shape = bsFrame
  end
  object Label11: TLabel
    Left = 211
    Top = 254
    Width = 61
    Height = 13
    Caption = #1057#1077#1088#1090#1080#1092#1080#1082#1072#1090
  end
  object Label12: TLabel
    Left = 509
    Top = 208
    Width = 51
    Height = 13
    Caption = #1058#1072#1084'. '#1094#1077#1085#1072
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 632
    Height = 31
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        Width = 632
      end>
    EdgeInner = esNone
    EdgeOuter = esNone
    FixedOrder = True
    object ActionToolBar1: TActionToolBar
      Left = 0
      Top = 0
      Width = 628
      Height = 25
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
    Width = 470
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
  object cust_com: TComboBox
    Left = 22
    Top = 268
    Width = 176
    Height = 23
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 15
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object ptitle: TLabeledEdit
    Left = 22
    Top = 178
    Width = 470
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    EditLabel.Width = 105
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1072#1085#1075#1083'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnChange = packnameChange
  end
  object oemcode: TEdit
    Left = 397
    Top = 53
    Width = 95
    Height = 22
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Text = '0000'
    OnKeyPress = oemcodeKeyPress
  end
  object packprice: TEdit
    Left = 509
    Top = 53
    Width = 105
    Height = 26
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = '0'
    OnEnter = packpriceEnter
    OnExit = packpriceExit
    OnKeyPress = packpriceKeyPress
  end
  object title_ch: TLabeledEdit
    Left = 22
    Top = 224
    Width = 470
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    EditLabel.Width = 99
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1080#1090'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnChange = packnameChange
  end
  object unitcom: TComboBox
    Left = 424
    Top = 268
    Width = 68
    Height = 23
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 15
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
  end
  object duty: TEdit
    Left = 509
    Top = 137
    Width = 105
    Height = 26
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Text = '0'
    OnEnter = dutyEnter
    OnExit = dutyExit
    OnKeyPress = dutyKeyPress
  end
  object load: TEdit
    Left = 509
    Top = 176
    Width = 105
    Height = 26
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    Text = '0'
    OnEnter = loadEnter
    OnExit = loadExit
    OnKeyPress = loadKeyPress
  end
  object packprice_weight: TEdit
    Left = 509
    Top = 94
    Width = 105
    Height = 26
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Text = '0'
    OnKeyPress = packprice_weightKeyPress
  end
  object packtypename_long: TLabeledEdit
    Left = 21
    Top = 129
    Width = 470
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    EditLabel.Width = 147
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1085#1086#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnChange = packnameChange
  end
  object sertcom: TComboBox
    Left = 211
    Top = 268
    Width = 68
    Height = 23
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 15
    ItemIndex = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 12
    Text = #1053#1077#1090
    Items.Strings = (
      #1044#1072
      #1053#1077#1090)
  end
  object custsumm: TEdit
    Left = 509
    Top = 224
    Width = 105
    Height = 26
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    Text = '0'
    OnKeyPress = custsummKeyPress
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
    Left = 283
    Top = 49
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
      
        'select p.*, pc.ptp_id from packtypes p, packtype_price pc where ' +
        'p.packtype_id=:packtype_id and p.packtype_id=pc.packtype_id and ' +
        'pc.send_id=:send')
    Left = 231
    Top = 47
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'packtype_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'send'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 171
    Top = 45
  end
end
