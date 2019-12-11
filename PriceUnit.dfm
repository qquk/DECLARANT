object price: Tprice
  Left = 321
  Top = 160
  Action = Action1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1088#1072#1090#1100
  ClientHeight = 534
  ClientWidth = 1134
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClick = Action1Execute
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1134
    Height = 27
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        Width = 1130
      end>
    FixedOrder = True
    object ActionToolBar1: TActionToolBar
      Left = 0
      Top = 0
      Width = 1126
      Height = 25
      ActionManager = ActionManager1
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
  end
  object CoolBar2: TCoolBar
    Left = 0
    Top = 27
    Width = 1134
    Height = 33
    Bands = <
      item
        Control = Panel1
        ImageIndex = -1
        MinHeight = 27
        Width = 1130
      end>
    object Panel1: TPanel
      Left = 9
      Top = 0
      Width = 1117
      Height = 27
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel1: TBevel
        Left = 104
        Top = 3
        Width = 50
        Height = 22
        Shape = bsLeftLine
      end
      object Bevel2: TBevel
        Left = 590
        Top = 1
        Width = 50
        Height = 22
        Shape = bsLeftLine
      end
      object label3: TLabel
        Left = 652
        Top = 6
        Width = 13
        Height = 13
        Caption = #1054#1090
        Visible = False
      end
      object Label2: TLabel
        Left = 761
        Top = 6
        Width = 15
        Height = 13
        Caption = #1044#1086
        Visible = False
      end
      object SpeedButton4: TSpeedButton
        Left = 868
        Top = 2
        Width = 50
        Height = 22
        Caption = #1055#1086#1080#1089#1082
        Flat = True
        Visible = False
        OnClick = SpeedButton4Click
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 98
        Height = 27
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
        Flat = True
        TabOrder = 0
      end
      object LabeledEdit1: TLabeledEdit
        Left = 157
        Top = 2
        Width = 146
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Ctl3D = True
        EditLabel.Width = 47
        EditLabel.Height = 13
        EditLabel.Caption = #1060#1080#1083#1100#1090#1088
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        LabelPosition = lpLeft
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnEnter = LabeledEdit1Enter
        OnKeyDown = LabeledEdit1KeyDown
      end
      object cust_com: TComboBox
        Left = 309
        Top = 1
        Width = 180
        Height = 22
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 14
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = #1042#1089#1077' '#1092#1080#1088#1084#1099
        OnChange = cust_comChange
        Items.Strings = (
          #1042#1089#1077' '#1092#1080#1088#1084#1099
          '')
      end
      object CheckBox2: TCheckBox
        Left = 495
        Top = 4
        Width = 89
        Height = 17
        Caption = #1057#1077#1088#1090#1080#1092#1080#1082#1072#1090
        TabOrder = 3
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 597
        Top = 4
        Width = 47
        Height = 17
        Caption = #1044#1072#1090#1072
        TabOrder = 4
        OnClick = CheckBox3Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 675
        Top = 2
        Width = 80
        Height = 21
        Date = 41316.595866099540000000
        Time = 41316.595866099540000000
        TabOrder = 5
        Visible = False
      end
      object DateTimePicker2: TDateTimePicker
        Left = 782
        Top = 2
        Width = 80
        Height = 21
        Date = 41316.595866099540000000
        Time = 41316.595866099540000000
        TabOrder = 6
        Visible = False
      end
      object CheckBox1: TCheckBox
        Left = 926
        Top = 6
        Width = 97
        Height = 17
        Caption = 'CheckBox1'
        TabOrder = 7
        Visible = False
        OnClick = CheckBox1Click
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 425
    Width = 1134
    Height = 109
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1134
      Height = 109
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 0
      object StaticText1: TStaticText
        Left = 0
        Top = 0
        Width = 1134
        Height = 17
        Align = alTop
        Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080' '
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 735
        Top = 15
        Width = 206
        Height = 92
        BevelOuter = bvNone
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 149
          Top = 0
          Width = 23
          Height = 22
          Caption = '-'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = tton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 149
          Top = 23
          Width = 23
          Height = 22
          Caption = '+'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = FlatSpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 149
          Top = 46
          Width = 23
          Height = 22
          Caption = '!'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = FlatSpeedButton3Click
        end
      end
      object DBGrid2: TDBGrid
        Left = 2
        Top = 16
        Width = 879
        Height = 92
        Ctl3D = False
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'PACKTYPENAME'
            Title.Caption = #1058#1086#1074#1072#1088
            Width = 318
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'POSCOUNT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Width = 61
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'POSPRICE'
            Title.Caption = #1062#1077#1085#1072' '#1077#1076
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSPRICE_WEIGHT'
            Title.Caption = #1062#1077#1085#1072' '#1079#1072' '#1082#1075'.'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRICE_INV'
            Title.Caption = #1062#1077#1085#1072' '#1080#1085#1074'.'
            Width = 57
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TOTALSUMM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = #1057#1091#1084#1084#1072
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'OEMCODE'
            Title.Caption = #1050#1086#1076
            Width = 59
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'POSWEIGHT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = #1042#1077#1089
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nweight'
            Title.Caption = #1053#1077#1090#1090#1086
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BAGPOS'
            Title.Caption = #1052#1077#1089#1090
            Width = 57
            Visible = True
          end>
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 104
    Width = 1134
    Height = 321
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel6'
    TabOrder = 3
    object split: TSplitter
      Left = 931
      Top = 0
      Height = 321
      Align = alRight
      Beveled = True
      Visible = False
      ExplicitLeft = 549
      ExplicitHeight = 307
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 931
      Height = 321
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          Width = 4
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'OEMCODE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = #1050#1086#1076
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACKTYPENAME'
          ReadOnly = True
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 304
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACKTYPENAME_LONG'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1085#1086#1077
          Width = 295
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PTITLE'
          ReadOnly = True
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1072#1085#1075#1083'.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TITLE_CH'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1080#1090'.'
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UNITTITLE'
          Title.Caption = #1045#1076'. '#1080#1079#1084#1077#1088
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERT'
          Title.Caption = #1057#1077#1088#1090'.'
          Width = 33
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CLIENT_NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACKPRICE'
          Title.Caption = #1062#1077#1085#1072' '#1077#1076'.'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACKPRICE_WEIGHT'
          Title.Caption = #1062#1077#1085#1072' '#1082#1075'.'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DUTY'
          Title.Caption = #1055#1086#1096#1083#1080#1085#1072
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOAD'
          Title.Caption = #1053#1072#1075#1088#1091#1079#1082#1072
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACKPRICE_CUST'
          Title.Caption = #1058#1072#1084'. '#1094#1077#1085#1072
          Width = 53
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 934
      Top = 0
      Width = 200
      Height = 321
      Align = alRight
      BorderStyle = bsNone
      DataSource = DataSource3
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnDrawColumnCell = DBGrid3DrawColumnCell
      OnKeyDown = DBGrid3KeyDown
      Columns = <
        item
          Expanded = False
          Width = 4
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'OEMCODE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = #1050#1086#1076
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACKTYPENAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 295
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERT'
          Title.Caption = #1057#1077#1088#1090'.'
          Width = 41
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 60
    Width = 1134
    Height = 24
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = 'Panel4'
    TabOrder = 4
    Visible = False
    object pg1: TPageControl
      Left = 1
      Top = 1
      Width = 1132
      Height = 22
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      Visible = False
      OnChange = pg1Change
      object TabSheet1: TTabSheet
        Caption = #1055#1088#1086#1089#1090#1086#1081
      end
      object TabSheet2: TTabSheet
        Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081
        ImageIndex = 1
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 84
    Width = 1134
    Height = 20
    Align = alTop
    TabOrder = 5
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 99
      Height = 13
      Caption = #1042#1099#1073#1088#1072#1085#1085#1072#1103' '#1079#1072#1087#1080#1089#1100':'
    end
    object DBText1: TDBText
      Left = 110
      Top = 3
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'OEMCODE'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 171
      Top = 3
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PACKPRICE'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 235
      Top = 3
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PACKTYPENAME'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = refresh
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          end
          item
            Action = new
            Caption = 'F&1-'#1053#1086#1074#1099#1081
            ShortCut = 112
          end
          item
            Visible = False
            Action = Action1
          end
          item
            Items = <
              item
                Visible = False
                Action = load1
                Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1089#1105' '#1080#1079' &Excel'
              end
              item
                Action = load2
                Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1079' &Excel'
              end>
            Action = load
          end
          item
            Action = tract
          end
          item
            Items = <
              item
                Action = printlistact
              end
              item
                Action = printHistoryAct
              end>
            Caption = #1055#1077#1095#1072#1090#1100
          end
          item
            Action = exit
            Caption = #1042#1099#1093#1086#1076
            ShortCut = 27
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 271
    Top = 143
    StyleName = 'XP Style'
    object refresh: TAction
      Caption = 'refresh'
      OnExecute = refreshExecute
    end
    object new: TAction
      Caption = 'new'
      ShortCut = 112
      OnExecute = newExecute
    end
    object exit: TAction
      Caption = 'exit'
      ShortCut = 27
      OnExecute = exitExecute
    end
    object Action1: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Visible = False
      OnExecute = Action1Execute
    end
    object load: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      OnExecute = loadExecute
    end
    object load1: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1089#1105' '#1080#1079' Excel'
      Visible = False
      OnExecute = load1Execute
    end
    object load2: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1079' Excel'
      OnExecute = load2Execute
    end
    object Action2: TAction
      Caption = #1055#1077#1095#1072#1090#1100
    end
    object tract: TAction
      Caption = #1055#1077#1088#1077#1074#1086#1076
      OnExecute = tractExecute
    end
    object ins: TAction
      Caption = 'ins'
      ShortCut = 45
      OnExecute = insExecute
    end
    object printlistact: TAction
      Caption = #1057#1087#1080#1089#1086#1082
      OnExecute = printlistactExecute
    end
    object printHistoryAct: TAction
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      OnExecute = printHistoryActExecute
    end
  end
  object packtypes: TIBQuery
    Database = dm.IBDatabase2
    Transaction = pricetran
    CachedUpdates = True
    SQL.Strings = (
      
        'select pc.sert,pc.packprice_weight, pc.packprice_cust, pc.packty' +
        'pename_long,pc.oemcode,p.packtypename,pc.packtypename_eng as pti' +
        'tle, pc.packtypename_ch as title_ch, pc.packprice,pc.load,pc.dut' +
        'y, c.client_name, p.packtype_id, c.client_id, pc.ptp_id, pc.send' +
        '_id as cust_id, unittitle, p.unittype_id from PACKTYPES p,packty' +
        'pe_price pc, clients c, unittypes u where p.packtype_id=pc.packt' +
        'ype_id and ptype=0 and pc.delflag=0 and pc.send_id=c.client_id a' +
        'nd pc.cnf_id=:cnf_id and p.unittype_id=u.unttype and c.status=1'
      ''
      'order by packtypename, pc.oemcode')
    UpdateObject = updsql
    Left = 228
    Top = 211
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnf_id'
        ParamType = ptUnknown
      end>
    object packtypesOEMCODE: TIBStringField
      FieldName = 'OEMCODE'
      Origin = 'PACKTYPE_PRICE.OEMCODE'
      ReadOnly = True
      Size = 40
    end
    object packtypesPACKTYPENAME: TIBStringField
      FieldName = 'PACKTYPENAME'
      Origin = 'PACKTYPES.PACKTYPENAME'
      Size = 100
    end
    object packtypesPTITLE: TIBStringField
      FieldName = 'PTITLE'
      Origin = 'PACKTYPES.PTITLE'
      Size = 100
    end
    object packtypesTITLE_CH: TIBStringField
      FieldName = 'TITLE_CH'
      Origin = 'PACKTYPES.TITLE_CH'
      Size = 100
    end
    object packtypesPACKPRICE: TFloatField
      FieldName = 'PACKPRICE'
      Origin = 'PACKTYPE_PRICE.PACKPRICE'
    end
    object packtypesCLIENT_NAME: TIBStringField
      FieldName = 'CLIENT_NAME'
      Origin = 'CLIENTS.CLIENT_NAME'
      Size = 64
    end
    object packtypesPACKTYPE_ID: TIntegerField
      FieldName = 'PACKTYPE_ID'
      Origin = 'PACKTYPES.PACKTYPE_ID'
      Required = True
    end
    object packtypesCLIENT_ID: TIntegerField
      FieldName = 'CLIENT_ID'
      Origin = 'CLIENTS.CLIENT_ID'
      Required = True
    end
    object packtypesPTP_ID: TIntegerField
      FieldName = 'PTP_ID'
      Origin = 'PACKTYPE_PRICE.PTP_ID'
    end
    object packtypesCUST_ID: TIntegerField
      FieldName = 'CUST_ID'
      Origin = 'PACKTYPE_PRICE.SEND_ID'
    end
    object packtypesUNITTITLE: TIBStringField
      FieldName = 'UNITTITLE'
      Origin = 'UNITTYPES.UNITTITLE'
      Size = 5
    end
    object packtypesUNITTYPE_ID: TSmallintField
      FieldName = 'UNITTYPE_ID'
      Origin = 'PACKTYPES.UNITTYPE_ID'
    end
    object packtypesSERT: TSmallintField
      FieldName = 'SERT'
      Origin = 'PACKTYPE_PRICE.SERT'
    end
    object packtypesLOAD: TFloatField
      FieldName = 'LOAD'
      Origin = 'PACKTYPE_PRICE.LOAD'
    end
    object packtypesDUTY: TFloatField
      FieldName = 'DUTY'
      Origin = 'PACKTYPE_PRICE.DUTY'
    end
    object packtypesPACKPRICE_WEIGHT: TFloatField
      FieldName = 'PACKPRICE_WEIGHT'
      Origin = 'PACKTYPE_PRICE.PACKPRICE_WEIGHT'
    end
    object packtypesPACKTYPENAME_LONG: TIBStringField
      FieldName = 'PACKTYPENAME_LONG'
      Origin = 'PACKTYPE_PRICE.PACKTYPENAME_LONG'
      Size = 200
    end
    object packtypesPACKPRICE_CUST: TFloatField
      FieldName = 'PACKPRICE_CUST'
      Origin = 'PACKTYPE_PRICE.PACKPRICE_CUST'
    end
  end
  object DataSource1: TDataSource
    DataSet = packtypes
    Left = 385
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 61
    Top = 155
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086' '#1074#1089#1077#1084' '#1092#1080#1088#1084#1072#1084
      OnClick = N1Click
    end
  end
  object pricetran: TIBTransaction
    DefaultDatabase = dm.IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 130
    Top = 275
  end
  object chpack: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = pricetran
    StoredProcName = 'CHANGEPACKTYPE'
    Left = 76
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PACKTYPENAME'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CREATEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OEMCODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKPRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUST_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ptitle'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ptp_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'unittype_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sert'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'duty'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'load'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'packprice_weight'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'packtypename_long'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'packtypename_ch'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'packprice_cust'
        ParamType = ptInput
      end>
  end
  object newpack: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = pricetran
    StoredProcName = 'NEWPACKTYPE'
    Left = 19
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'PACKTYPENAME'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CREATEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OEMCODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKPRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUST_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cnf_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PTITLE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'unittype_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sert'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'duty'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'load'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'packprice_weight'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'packtypename_long'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'packtypename_ch'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'packprice_cust'
        ParamType = ptInput
      end>
  end
  object IBQuery1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select b.*, pc.oemcode, u.unittitle from bufer b, packtypes p,un' +
        'ittypes u, packtype_price pc '
      
        'where u.unttype=b.unittype and b.ptp_id=pc.ptp_id and ord_id=:id' +
        ' '
      'and b.packtype_id=p.packtype_id')
    Left = 204
    Top = 349
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'BUFER.ID'
      Required = True
    end
    object IBQuery1PACKTYPE_ID: TIntegerField
      FieldName = 'PACKTYPE_ID'
      Origin = 'BUFER.PACKTYPE_ID'
    end
    object IBQuery1POSCOUNT: TFloatField
      FieldName = 'POSCOUNT'
      Origin = 'BUFER.POSCOUNT'
    end
    object IBQuery1POSWEIGHT: TFloatField
      FieldName = 'POSWEIGHT'
      Origin = 'BUFER.POSWEIGHT'
    end
    object IBQuery1POSPRICE: TFloatField
      FieldName = 'POSPRICE'
      Origin = 'BUFER.POSPRICE'
    end
    object IBQuery1TOTALSUMM: TFloatField
      FieldName = 'TOTALSUMM'
      Origin = 'BUFER.TOTALSUMM'
    end
    object IBQuery1ORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'BUFER.ORD_ID'
    end
    object IBQuery1PACKTYPENAME: TIBStringField
      FieldName = 'PACKTYPENAME'
      Origin = 'BUFER.PACKTYPENAME'
      Size = 120
    end
    object IBQuery1BAGPOS: TIntegerField
      FieldName = 'BAGPOS'
      Origin = 'BUFER.BAGPOS'
    end
    object IBQuery1UNITTYPE: TSmallintField
      FieldName = 'UNITTYPE'
      Origin = 'BUFER.UNITTYPE'
    end
    object IBQuery1POSPRICE_WEIGHT: TFloatField
      FieldName = 'POSPRICE_WEIGHT'
      Origin = 'BUFER.POSPRICE_WEIGHT'
    end
    object IBQuery1PTP_ID: TIntegerField
      FieldName = 'PTP_ID'
      Origin = 'BUFER.PTP_ID'
    end
    object IBQuery1TOTALSUMMCUST: TFloatField
      FieldName = 'TOTALSUMMCUST'
      Origin = 'BUFER.TOTALSUMMCUST'
    end
    object IBQuery1OEMCODE: TIBStringField
      FieldName = 'OEMCODE'
      Origin = 'PACKTYPE_PRICE.OEMCODE'
    end
    object IBQuery1UNITTITLE: TIBStringField
      FieldName = 'UNITTITLE'
      Origin = 'UNITTYPES.UNITTITLE'
      Size = 5
    end
    object IBQuery1PRICE_INV: TFloatField
      FieldName = 'PRICE_INV'
      Origin = 'BUFER.PRICE_INV'
    end
    object IBQuery1nweight: TFloatField
      FieldName = 'nweight'
      Origin = 'BUFER.nweight'
    end
  end
  object IBStoredProc1: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'NEWBUFITEMS'
    Left = 654
    Top = 302
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ORD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKKOL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTALPRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OPERTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PACKTYPENAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAGPOS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ptp_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'unittype_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'posprice_weight'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'price_inv'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'nweight'
        ParamType = ptInput
      end>
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 74
    Top = 272
  end
  object IBSQL1: TIBSQL
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Left = 168
    Top = 216
  end
  object delbufer: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'DEL_BUFER'
    Left = 347
    Top = 260
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORD_ID'
        ParamType = ptInput
      end>
  end
  object delpos: TIBSQL
    Database = dm.IBDatabase2
    Transaction = pricetran
    Left = 129
    Top = 223
  end
  object bufprop: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select sum(poscount), sum(posweight), sum(bagpos) from bufer whe' +
        're ord_id=:id')
    Left = 16
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object od: TOpenDialog
    Filter = #1060#1072#1081#1083' Excel|*.xls'
    Left = 82
    Top = 106
  end
  object loadp: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = pricetran
    StoredProcName = 'LOAD_PACKTYPE'
    Left = 6
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PUNIT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SUNIT'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTERID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CREATEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'LUPDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OEMCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRNTORDER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKPRICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKTYPEPRICE1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKTYPEPRICE2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'MAYSALE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GROUPID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GOODK_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FAST_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BARCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PACKTYPENAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PTITLE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUST_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cnf_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'packprice_weight'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'duty'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'load'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sert'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'packtypename_long'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'packprice_cust'
        ParamType = ptInput
      end>
  end
  object updsql: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  OEMCODE,'
      '  PACKTYPENAME,'
      '  PTITLE,'
      '  PACKPRICE,'
      '  CLIENT_NAME,'
      '  PACKTYPE_ID,'
      '  CLIENT_ID,'
      '  PTP_ID,'
      '  CUST_ID'
      'from packtype_price '
      'where'
      '  PTP_ID = :PTP_ID')
    ModifySQL.Strings = (
      'update packtype_price'
      'set'
      '  PACKPRICE = :PACKPRICE,'
      '  sert=:sert,'
      '  load=:load,'
      '  duty=:duty,'
      '  packprice_weight=:packprice_weight'
      'where'
      '  PTP_ID = :OLD_PTP_ID')
    InsertSQL.Strings = (
      'insert into packtype_price'
      '  (PACKPRICE)'
      'values'
      '  (:PACKPRICE)')
    DeleteSQL.Strings = (
      'delete from packtype_price'
      'where'
      '  PTP_ID = :OLD_PTP_ID')
    Left = 94
    Top = 163
  end
  object delprices: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = pricetran
    StoredProcName = 'DELPRICES'
    Left = 9
    Top = 162
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SEND_ID'
        ParamType = ptInput
      end>
  end
  object delprice: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'DELPACKTYPES'
    Left = 130
    Top = 171
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PTP_ID'
        ParamType = ptInput
      end>
  end
  object packtypes1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = pricetran
    SQL.Strings = (
      
        'select pc.sert, pc.oemcode,p.packtypename,p.ptitle,p.title_ch, p' +
        'c.packprice, c.client_name, p.packtype_id, c.client_id, pc.ptp_i' +
        'd, pc.send_id as cust_id from PACKTYPES p,packtype_price pc, cli' +
        'ents c where p.packtype_id=pc.packtype_id and ptype=0 and pc.del' +
        'flag=0 and pc.send_id=c.client_id and pc.cnf_id=:cnf_id '
      ''
      'order by packtypename')
    Left = 313
    Top = 324
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnf_id'
        ParamType = ptUnknown
      end>
    object packtypes1OEMCODE: TIBStringField
      FieldName = 'OEMCODE'
      Origin = 'PACKTYPE_PRICE.OEMCODE'
      ReadOnly = True
    end
    object packtypes1PACKTYPENAME: TIBStringField
      FieldName = 'PACKTYPENAME'
      Origin = 'PACKTYPES.PACKTYPENAME'
      ReadOnly = True
      Size = 100
    end
    object packtypes1PTITLE: TIBStringField
      FieldName = 'PTITLE'
      Origin = 'PACKTYPES.PTITLE'
      ReadOnly = True
      Size = 100
    end
    object packtypes1TITLE_CH: TIBStringField
      FieldName = 'TITLE_CH'
      Origin = 'PACKTYPES.TITLE_CH'
      ReadOnly = True
      Size = 100
    end
    object packtypes1PACKPRICE: TFloatField
      FieldName = 'PACKPRICE'
      Origin = 'PACKTYPE_PRICE.PACKPRICE'
      ReadOnly = True
    end
    object packtypes1CLIENT_NAME: TIBStringField
      FieldName = 'CLIENT_NAME'
      Origin = 'CLIENTS.CLIENT_NAME'
      ReadOnly = True
      Size = 64
    end
    object packtypes1PACKTYPE_ID: TIntegerField
      FieldName = 'PACKTYPE_ID'
      Origin = 'PACKTYPES.PACKTYPE_ID'
      ReadOnly = True
      Required = True
    end
    object packtypes1CLIENT_ID: TIntegerField
      FieldName = 'CLIENT_ID'
      Origin = 'CLIENTS.CLIENT_ID'
      ReadOnly = True
      Required = True
    end
    object packtypes1PTP_ID: TIntegerField
      FieldName = 'PTP_ID'
      Origin = 'PACKTYPE_PRICE.PTP_ID'
      ReadOnly = True
    end
    object packtypes1CUST_ID: TIntegerField
      FieldName = 'CUST_ID'
      Origin = 'PACKTYPE_PRICE.SEND_ID'
      ReadOnly = True
    end
    object packtypes1SERT: TSmallintField
      FieldName = 'SERT'
      Origin = 'PACKTYPE_PRICE.SERT'
    end
  end
  object DataSource3: TDataSource
    DataSet = packtypes1
    Left = 402
    Top = 320
  end
  object packinglist: TIBQuery
    Database = dm.IBDatabase2
    Transaction = pricetran
    SQL.Strings = (
      
        'select p.* from packing p, zagruzka z where p.bag_id=z.zag_id an' +
        'd z.outertrans_id=:trans_id')
    Left = 496
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trans_id'
        ParamType = ptUnknown
      end>
  end
  object delpacking: TIBSQL
    Left = 568
    Top = 328
  end
  object updsql1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SERT,'
      '  OEMCODE,'
      '  PACKTYPENAME,'
      '  PTITLE,'
      '  TITLE_CH,'
      '  PACKPRICE,'
      '  CLIENT_NAME,'
      '  PACKTYPE_ID,'
      '  CLIENT_ID,'
      '  PTP_ID,'
      '  CUST_ID'
      'from packtype_price '
      'where'
      '  PTP_ID = :PTP_ID')
    ModifySQL.Strings = (
      'update packtype_price'
      'set'
      '  SERT = :SERT'
      'where'
      '  PTP_ID = :OLD_PTP_ID')
    InsertSQL.Strings = (
      'insert into packtype_price'
      '  (SERT)'
      'values'
      '  (:SERT)')
    DeleteSQL.Strings = (
      'delete from packtype_price'
      'where'
      '  PTP_ID = :OLD_PTP_ID')
    Left = 472
    Top = 152
  end
  object helper: TIBQuery
    Database = dm.IBDatabase2
    Transaction = pricetran
    Left = 585
    Top = 129
  end
end
