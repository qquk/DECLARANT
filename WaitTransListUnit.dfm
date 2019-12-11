object waittransportf: Twaittransportf
  Left = 244
  Top = 179
  Caption = #1057#1087#1080#1089#1086#1082' '#1086#1078#1080#1076#1072#1077#1084#1099#1093' '#1087#1072#1088#1090#1080#1081
  ClientHeight = 464
  ClientWidth = 849
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 23
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ActionToolBar1: TActionToolBar
      Left = 0
      Top = 0
      Width = 849
      Height = 23
      ActionManager = ActionManager1
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 23
    Width = 849
    Height = 32
    Bands = <
      item
        Control = Panel2
        ImageIndex = -1
        Width = 845
      end>
    object Panel2: TPanel
      Left = 9
      Top = 0
      Width = 832
      Height = 25
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel1: TBevel
        Left = 61
        Top = 1
        Width = 50
        Height = 22
        Shape = bsLeftLine
      end
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 0
        Width = 58
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 67
        Top = 4
        Width = 97
        Height = 17
        Caption = #1054#1078#1080#1076#1072#1077#1084#1099#1077
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 164
        Top = 4
        Width = 97
        Height = 17
        Caption = #1040#1088#1093#1080#1074#1085#1099#1077
        TabOrder = 2
        OnClick = CheckBox3Click
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 55
    Width = 849
    Height = 409
    Align = alClient
    BorderStyle = bsNone
    Color = 15717318
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PREFIX'
        Title.Caption = #1057#1082#1083#1072#1076
        Width = 39
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TNAME'
        Title.Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TRANSNO'
        Title.Caption = #8470
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GOS_NO'
        Title.Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'POSCOUNT'
        Title.Caption = #1052#1077#1089#1090' '#1092#1072#1082#1089
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TONAME'
        Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
        Width = 96
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'POSWEIGHT'
        Title.Caption = #1042#1077#1089
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'POSWEIGHT_FACT'
        Title.Caption = #1042#1077#1089' '#1092#1072#1082#1090'.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'POSVOLUME'
        Title.Caption = #1054#1073#1098#1105#1084
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TDATE'
        Title.Caption = #1057#1086#1079#1076#1072#1085
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TRANSOUT'
        Title.Caption = #1054#1090#1087#1088#1072#1074#1083#1077#1085
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TRANSCAME'
        Title.Caption = #1055#1088#1080#1096#1105#1083
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'SCOMMENT'
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 230
        Visible = True
      end>
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = refresh
            Caption = 'F&5-'#1054#1073#1085#1086#1074#1080#1090#1100
            ShortCut = 116
          end
          item
            Action = open
            Caption = #1054#1090#1082#1088#1099#1090#1100' '#1090#1088#1072#1085#1089#1087#1086#1088#1090
          end
          item
            Action = exit
            Caption = #1042#1099#1093#1086#1076
            ShortCut = 27
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 597
    Top = 98
    StyleName = 'XP Style'
    object refresh: TAction
      Caption = 'refresh'
      ShortCut = 116
      OnExecute = refreshExecute
    end
    object open: TAction
      Caption = 'open'
      OnExecute = openExecute
    end
    object exit: TAction
      Caption = 'exit'
      ShortCut = 27
      OnExecute = exitExecute
    end
  end
  object DataSource1: TDataSource
    DataSet = transport
    Left = 525
    Top = 91
  end
  object transport: TIBQuery
    Database = dm.IBDatabase2
    Transaction = transtran
    SQL.Strings = (
      
        'select poscount, posweight, posweight_fact, posvolume, t.trans_i' +
        'd, t.transinfo, t.tdate, t.transout,t.operstate ,ts.toname, t.tr' +
        'ansno, t.gos_no, tt.tname, t.scomment, t.transcame, t.poscame, d' +
        '.prefix from  transport t, toperstate ts, transtype tt, div d'
      
        'where d.div_id=t.sourcediv_id and ts.to_id=t.operstate and t.trt' +
        '_id=tt.trt_id and t.operstate<>2 and t.operstate<>3  and opersta' +
        'te<>4 and cnf_id=:cnf_id'
      'order by trans_id desc'
      '')
    Left = 383
    Top = 103
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnf_id'
        ParamType = ptUnknown
      end>
  end
  object transtran: TIBTransaction
    DefaultDatabase = dm.IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 270
    Top = 109
  end
  object PopupMenu1: TPopupMenu
    Left = 140
    Top = 158
    object N3: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1080#1085#1074#1086#1081#1089
      Enabled = False
      OnClick = N3Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = #1040#1088#1093#1080#1074#1080#1088#1086#1074#1072#1090#1100
      OnClick = N1Click
    end
  end
  object updatetransstate: TIBSQL
    Database = dm.IBDatabase2
    Transaction = transtran
    Left = 10
    Top = 165
  end
  object packing_all: TIBQuery
    Database = dm.IBDatabase2
    Transaction = transtran
    Left = 234
    Top = 211
  end
  object makeorder: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'MAKE_ORDER1'
    Left = 272
    Top = 211
  end
  object newitems: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = transtran
    StoredProcName = 'NEWORDITEMS'
    Left = 310
    Top = 211
  end
  object new_ot: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = transtran
    StoredProcName = 'NEW_OT_ITEMS'
    Left = 342
    Top = 212
  end
end
