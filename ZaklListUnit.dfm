object zakl: Tzakl
  Left = 413
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1058#1086#1074#1072#1088#1099
  ClientHeight = 466
  ClientWidth = 756
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 756
    Height = 27
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        Width = 752
      end>
    FixedOrder = True
    object ActionToolBar1: TActionToolBar
      Left = 0
      Top = 0
      Width = 748
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
    Width = 756
    Height = 33
    Bands = <
      item
        Control = Panel1
        ImageIndex = -1
        MinHeight = 26
        Width = 752
      end>
    object Panel1: TPanel
      Left = 9
      Top = 0
      Width = 739
      Height = 26
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel1: TBevel
        Left = 100
        Top = 2
        Width = 50
        Height = 22
        Shape = bsLeftLine
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 98
        Height = 26
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
        BevelInner = bvNone
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
        OnKeyDown = LabeledEdit1KeyDown
      end
      object town_com1: TComboBox
        Left = 495
        Top = 1
        Width = 215
        Height = 22
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = #1042#1089#1077' '#1092#1080#1088#1084#1099
        OnChange = town_com1Change
        Items.Strings = (
          #1042#1089#1077' '#1092#1080#1088#1084#1099)
      end
      object oem: TLabeledEdit
        Left = 340
        Top = 2
        Width = 146
        Height = 21
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Ctl3D = True
        EditLabel.Width = 23
        EditLabel.Height = 13
        EditLabel.Caption = #1050#1086#1076
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
        TabOrder = 3
        OnKeyDown = LabeledEdit1KeyDown
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 357
    Width = 756
    Height = 109
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 757
      Height = 109
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 0
      object StaticText1: TStaticText
        Left = 0
        Top = 0
        Width = 757
        Height = 17
        Align = alTop
        Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080' '
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 724
        Top = 17
        Width = 33
        Height = 92
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 17
        Width = 724
        Height = 92
        Align = alClient
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
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'POSPRICE'
            Title.Caption = #1062#1077#1085#1072' '#1077#1076
            Width = 61
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
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BAGPOS'
            Title.Caption = #1052#1077#1089#1090
            Visible = True
          end>
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 60
    Width = 756
    Height = 297
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel6'
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 756
      Height = 297
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIENT_NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = #1060#1080#1088#1084#1072
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACKTYPENAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 237
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'OEMCODE_LONG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = #1058#1072#1084'. '#1082#1086#1076
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UNITTITLE'
          Title.Caption = #1045#1076'.'#1080#1079#1084
          Width = 47
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PACKTYPEPRICE1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = #1062#1077#1085#1072
          Width = 61
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ZAKL_NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1077
          Width = 113
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ZAKL_DATE'
          Title.Caption = #1044#1072#1090#1072
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ZAKL_DOG'
          Title.Caption = #1044#1086#1075#1086#1074#1086#1088
          Width = 49
          Visible = True
        end>
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
            Caption = 'I&NS-'#1053#1086#1074#1099#1081
            ShortCut = 45
          end
          item
            Visible = False
            Action = Action1
          end
          item
            Action = exit
            Caption = #1042#1099#1093#1086#1076
            ShortCut = 27
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 671
    Top = 71
    StyleName = 'XP Style'
    object refresh: TAction
      Caption = 'refresh'
      OnExecute = refreshExecute
    end
    object new: TAction
      Caption = 'new'
      ShortCut = 45
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
  end
  object packtypes: TIBQuery
    Database = dm.IBDatabase2
    Transaction = pricetran
    SQL.Strings = (
      
        'select p.*, u.unittitle, c.client_name from PACKTYPES p, unittyp' +
        'es u, clients c where p.unittype_id=u.unttype and p.cust_id=c.cl' +
        'ient_id'
      'and p.ptype=4'
      'order by packtypename')
    Left = 670
    Top = 145
  end
  object DataSource1: TDataSource
    DataSet = packtypes
    Left = 670
    Top = 110
  end
  object PopupMenu1: TPopupMenu
    Left = 172
    Top = 108
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N1Click
    end
  end
  object pricetran: TIBTransaction
    DefaultDatabase = dm.IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 606
    Top = 112
  end
  object chpack: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = pricetran
    StoredProcName = 'CHANGEPACKTYPE'
    Left = 454
    Top = 175
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
      end>
  end
  object newpack: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = pricetran
    StoredProcName = 'NEWPACKTYPE'
    Left = 410
    Top = 174
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
      end>
  end
  object IBQuery1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select b.*, p.oemcode, u.unittitle from bufer b, packtypes p,uni' +
        'ttypes u where u.unttype=b.unittype and ord_id=:id and b.packtyp' +
        'e_id=p.packtype_id')
    Left = 606
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object IBStoredProc1: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'NEWBUFITEMS'
    Left = 701
    Top = 341
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
      end>
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 569
    Top = 288
  end
  object IBSQL1: TIBSQL
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Left = 602
    Top = 198
  end
  object delbufer: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'DEL_BUFER'
    Left = 707
    Top = 303
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
    Left = 558
    Top = 111
  end
  object bufprop: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select sum(poscount), sum(posweight), sum(bagpos) from bufer whe' +
        're ord_id=:id')
    Left = 538
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
end
