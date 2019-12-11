object translateform: Ttranslateform
  Left = 194
  Top = 129
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1086#1074#1072#1088#1086#1074
  ClientHeight = 769
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1071
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        Width = 1067
      end>
    FixedOrder = True
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 0
      Top = 0
      Width = 1063
      Height = 25
      UseSystemFont = False
      ActionManager = ActionManager1
      Caption = 'ActionMainMenuBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Spacing = 0
    end
  end
  object CoolBar2: TCoolBar
    Left = 0
    Top = 29
    Width = 1071
    Height = 46
    AutoSize = True
    Bands = <
      item
        Control = Panel1
        ImageIndex = -1
        MinHeight = 42
        Width = 1067
      end>
    object Panel1: TPanel
      Left = 9
      Top = 0
      Width = 1054
      Height = 42
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object nametov: TLabeledEdit
        Left = 4
        Top = 2
        Width = 298
        Height = 36
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Ctl3D = True
        EditLabel.Width = 5
        EditLabel.Height = 13
        EditLabel.Caption = ' '
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        LabelPosition = lpLeft
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = nametovKeyDown
      end
      object CheckBox2: TCheckBox
        Left = 308
        Top = 3
        Width = 181
        Height = 17
        Caption = #1053#1077' '#1087#1077#1088#1077#1074#1077#1076#1077#1085#1085#1099#1077' '#1072#1085#1075#1083'.'
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object oemcode: TLabeledEdit
        Left = 633
        Top = 6
        Width = 133
        Height = 32
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Ctl3D = True
        EditLabel.Width = 5
        EditLabel.Height = 13
        EditLabel.Caption = ' '
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        LabelPosition = lpLeft
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnEnter = oemcodeEnter
        OnExit = oemcodeExit
        OnKeyDown = oemcodeKeyDown
      end
      object CheckBox1: TCheckBox
        Left = 308
        Top = 20
        Width = 181
        Height = 17
        Caption = #1053#1077' '#1087#1077#1088#1077#1074#1077#1076#1077#1085#1085#1099#1077' '#1082#1080#1090'.'
        TabOrder = 3
        OnClick = CheckBox2Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 750
    Width = 1071
    Height = 19
    Panels = <
      item
        Text = #1053#1077' '#1087#1077#1088#1077#1074#1077#1076#1077#1085#1085#1099#1093
        Width = 120
      end
      item
        Width = 50
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 75
    Width = 1071
    Height = 675
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 3
    object Label1: TLabel
      Left = 311
      Top = 134
      Width = 75
      Height = 13
      Caption = 'CLIENT_NAME'
    end
    object Label2: TLabel
      Left = 358
      Top = 10
      Width = 75
      Height = 13
      Caption = 'CLIENT_NAME'
    end
    object DBGrid2: TDBGrid
      Left = 0
      Top = 0
      Width = 1071
      Height = 675
      Align = alClient
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          Width = 4
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACKTYPENAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 375
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PTITLE'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1072#1085#1075#1083'.'
          Width = 349
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TITLE_CH'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1080#1090#1072#1081
          Visible = False
        end>
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = refresh_act
            Caption = '&F5-'#1054#1073#1085#1086#1074#1080#1090#1100
            ShortCut = 116
          end
          item
            Action = save_act
            Caption = 'F&2-'#1057#1086#1093#1088#1072#1085#1080#1090#1100
            ShortCut = 113
          end
          item
            Action = exitbut
            ShortCut = 121
          end
          item
            Visible = False
            Action = Action1
            ShortCut = 45
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 545
    Top = 150
    StyleName = 'XP Style'
    object exitbut: TAction
      Caption = #1042#1099#1093#1086#1076
      ShortCut = 121
      OnExecute = exitbutExecute
    end
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 45
      OnExecute = Action1Execute
    end
    object save_act: TAction
      Caption = 'F2-'#1057#1086#1093#1088#1072#1085#1080#1090#1100
      ShortCut = 113
      OnExecute = save_actExecute
    end
    object refresh_act: TAction
      Caption = 'F5-'#1054#1073#1085#1086#1074#1080#1090#1100
      ShortCut = 116
      OnExecute = refresh_actExecute
    end
    object translate_act: TAction
      Caption = 'translate_act'
      ShortCut = 32852
      OnExecute = translate_actExecute
    end
  end
  object DataSource1: TDataSource
    DataSet = packtypes
    Left = 406
    Top = 156
  end
  object packtypes: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    CachedUpdates = True
    SQL.Strings = (
      
        'select p.packtype_id, p.packtypename, p.ptitle, p.title_ch from ' +
        'PACKTYPES p  where ptype in (0)'
      ''
      'order by packtypename')
    UpdateObject = IBUpdateSQL1
    Left = 389
    Top = 214
    object packtypesPACKTYPENAME: TIBStringField
      FieldName = 'PACKTYPENAME'
      Origin = 'PACKTYPES.PACKTYPENAME'
      ReadOnly = True
      Size = 100
    end
    object packtypesPTITLE: TIBStringField
      FieldName = 'PTITLE'
      Origin = 'PACKTYPES.PTITLE'
      Size = 100
    end
    object packtypesPACKTYPE_ID: TIntegerField
      FieldName = 'PACKTYPE_ID'
      Origin = 'PACKTYPES.PACKTYPE_ID'
      Required = True
    end
    object packtypesTITLE_CH: TIBStringField
      FieldName = 'TITLE_CH'
      Origin = 'PACKTYPES.TITLE_CH'
      Size = 200
    end
  end
  object kol: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    CachedUpdates = True
    SQL.Strings = (
      
        'select count(*) from packtypes where (( ptitle='#39#39' or ptitle is n' +
        'ull ) or ( title_ch = "" or title_ch is null )) and ptype in (0,' +
        '5)')
    Left = 448
    Top = 216
  end
  object translate: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'TRANSLATE_TITLE'
    Left = 482
    Top = 146
    ParamData = <
      item
        DataType = ftString
        Name = 'PNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PTITLE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TITLE_CH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lang'
        ParamType = ptInput
      end>
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PACKTYPE_ID,'
      '  PUNIT,'
      '  SUNIT,'
      '  PTYPE,'
      '  OUTERID,'
      '  CREATEDATE,'
      '  LUPDATE,'
      '  OEMCODE,'
      '  PRNTORDER,'
      '  CN_ID,'
      '  PACKPRICE,'
      '  PACKTYPEPRICE1,'
      '  PACKTYPEPRICE2,'
      '  MAYSALE,'
      '  GROUPID,'
      '  GOODK_ID,'
      '  FAST_ID,'
      '  BARCODE,'
      '  PACKTYPENAME,'
      '  PTITLE,'
      '  CUST_ID,'
      '  UNITTYPE_ID,'
      '  OEMCODE_LONG,'
      '  ZAKL_NAME,'
      '  ZAKL_DATE,'
      '  ZAKL_DOG,'
      '  CNF_ID,'
      '  TITLE_CH,'
      '  CLIENT_NAME'
      'from PACKTYPES '
      'where'
      '  PACKTYPE_ID = :PACKTYPE_ID')
    ModifySQL.Strings = (
      'update PACKTYPES'
      'set'
      '  PTITLE = :PTITLE,'
      '  TITLE_CH = :TITLE_CH'
      'where'
      '  PACKTYPE_ID = :OLD_PACKTYPE_ID')
    InsertSQL.Strings = (
      'insert into PACKTYPES'
      '  (PTITLE, TITLE_CH)'
      'values'
      '  (:PTITLE, :TITLE_CH)')
    DeleteSQL.Strings = (
      'delete from PACKTYPES'
      'where'
      '  PACKTYPE_ID = :OLD_PACKTYPE_ID')
    Left = 579
    Top = 285
  end
  object PopupMenu1: TPopupMenu
    Left = 615
    Top = 158
    object N2: TMenuItem
      Action = translate_act
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1087#1086' '#1074#1089#1077#1084' '#1092#1080#1088#1084#1072#1084
    end
  end
end
