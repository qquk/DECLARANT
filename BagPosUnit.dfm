object bagpos: Tbagpos
  Left = 548
  Top = 251
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'bagpos'
  ClientHeight = 500
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 123
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ActionToolBar1: TActionToolBar
      Left = 0
      Top = 0
      Width = 753
      Height = 23
      ActionManager = ActionManager1
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
    object CoolBar1: TCoolBar
      Left = 0
      Top = 23
      Width = 753
      Height = 97
      Bands = <
        item
          Control = Panel5
          ImageIndex = -1
          MinHeight = 63
          Width = 749
        end
        item
          Control = Panel7
          ImageIndex = -1
          Width = 749
        end>
      object Panel5: TPanel
        Left = 9
        Top = 0
        Width = 736
        Height = 63
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 7
          Top = 3
          Width = 45
          Height = 13
          Caption = #8470' '#1084#1077#1089#1090#1072
        end
        object Label5: TLabel
          Left = 132
          Top = 5
          Width = 19
          Height = 13
          Caption = #1042#1077#1089
        end
        object Label6: TLabel
          Left = 215
          Top = 7
          Width = 35
          Height = 13
          Caption = #1054#1073#1098#1105#1084
        end
        object Label12: TLabel
          Left = 5
          Top = 60
          Width = 5
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 366
          Top = 6
          Width = 321
          Height = 43
          DataField = 'BAGNUM'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -37
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 7
          Top = 18
          Width = 105
          Height = 36
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnChange = Edit5Change
        end
        object Edit3: TEdit
          Left = 131
          Top = 20
          Width = 66
          Height = 27
          BevelInner = bvNone
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
          TabOrder = 1
          OnChange = Edit5Change
        end
        object Edit4: TEdit
          Left = 217
          Top = 20
          Width = 66
          Height = 27
          BevelInner = bvNone
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
          TabOrder = 2
          OnChange = edit4Change
        end
      end
      object Panel7: TPanel
        Left = 9
        Top = 65
        Width = 736
        Height = 25
        BevelOuter = bvNone
        TabOrder = 1
        object Bevel3: TBevel
          Left = 1
          Top = 2
          Width = 9
          Height = 20
          Shape = bsLeftLine
        end
        object Label9: TLabel
          Left = 6
          Top = 5
          Width = 63
          Height = 13
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit5: TEdit
          Left = 72
          Top = 2
          Width = 218
          Height = 21
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnChange = Edit5Change
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 123
    Width = 753
    Height = 377
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 375
      Top = 0
      Height = 377
      ExplicitLeft = 408
      ExplicitTop = 168
      ExplicitHeight = 100
    end
    object Panel3: TPanel
      Left = 378
      Top = 0
      Width = 375
      Height = 377
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object CoolBar3: TCoolBar
        Left = 0
        Top = 29
        Width = 375
        Height = 31
        Bands = <
          item
            Control = CheckBox1
            ImageIndex = -1
            Width = 371
          end>
        object CheckBox1: TCheckBox
          Left = 9
          Top = 0
          Width = 358
          Height = 25
          Caption = #1054#1088#1080#1075#1080#1085#1072#1083
          TabOrder = 0
          OnClick = CheckBox1Click
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 60
        Width = 375
        Height = 317
        Align = alClient
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PACKTYPENAME'
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PACKKOL'
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITTITLE'
            Title.Alignment = taCenter
            Title.Caption = #1045#1076'.'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tmname'
            Title.Caption = #1058#1086#1088#1075'. '#1084#1072#1088#1082#1072
            Visible = True
          end>
      end
      object CoolBar5: TCoolBar
        Left = 0
        Top = 0
        Width = 375
        Height = 29
        Bands = <>
        object SpeedButton1: TSpeedButton
          Left = 5
          Top = 1
          Width = 23
          Height = 22
          Caption = '+'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 28
          Top = 1
          Width = 23
          Height = 22
          Caption = '...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 51
          Top = 1
          Width = 23
          Height = 22
          Caption = '-'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object DBText1: TDBText
          Left = 319
          Top = 5
          Width = 65
          Height = 17
          DataField = 'PACK_KOL'
          DataSource = DataSource1
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 375
      Height = 377
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object CoolBar2: TCoolBar
        Left = 0
        Top = 29
        Width = 375
        Height = 31
        Bands = <>
        object Label1: TLabel
          Left = 0
          Top = 6
          Width = 81
          Height = 13
          Caption = #1057#1087#1080#1089#1086#1082' '#1090#1086#1074#1072#1088#1086#1074
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 60
        Width = 375
        Height = 317
        Align = alClient
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
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
            FieldName = 'PACKTYPENAME'
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 345
            Visible = True
          end>
      end
      object CoolBar4: TCoolBar
        Left = 0
        Top = 0
        Width = 375
        Height = 29
        Bands = <
          item
            Control = Edit1
            ImageIndex = -1
            MinHeight = 23
            Width = 371
          end>
        object Edit1: TEdit
          Left = 9
          Top = 0
          Width = 358
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyDown = Edit1KeyDown
        end
      end
    end
  end
  object IBQuery1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = bagpostran
    CachedUpdates = True
    SQL.Strings = (
      'select * from zagruzka where zag_id=:zag_id')
    UpdateObject = IBUpdateSQL1
    Left = 46
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'zag_id'
        ParamType = ptUnknown
      end>
  end
  object IBUpdateSQL1: TIBUpdateSQL
    Left = 646
    Top = 341
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = Action5
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
            ShortCut = 112
          end
          item
            Action = Action2
            Caption = #1042#1099#1093#1086#1076
            ShortCut = 27
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 314
    Top = 37
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 113
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = Action2Execute
    end
    object Action4: TAction
      Caption = 'Action4'
      ShortCut = 45
      OnExecute = Action4Execute
    end
    object Action5: TAction
      Caption = 'Action5'
      ShortCut = 112
      OnExecute = Action5Execute
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 37
    Top = 305
  end
  object packtypes: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      'select * from packtypes')
    Left = 106
    Top = 249
  end
  object DataSource2: TDataSource
    DataSet = packtypes
    Left = 91
    Top = 308
  end
  object packing: TIBQuery
    Database = dm.IBDatabase2
    Transaction = bagpostran
    SQL.Strings = (
      
        'select p.pack_id, pt.packtypename, p.packkol ,u.unittitle, p.pac' +
        'ktype_id, p.unittype, p.bag_id, tm.tmname'
      'from packing p, packtypes pt, unittypes u, trademarks tm '
      
        'where p.tm_id=tm.tm_id and u.unttype=p.unittype and p.packtype_i' +
        'd=pt.packtype_id and  p.bag_id=:zag_id and p.pstate=1')
    Left = 164
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'zag_id'
        ParamType = ptUnknown
      end>
  end
  object DataSource3: TDataSource
    DataSet = packing
    Left = 162
    Top = 310
  end
  object IBSQL1: TIBSQL
    Database = dm.IBDatabase2
    SQL.Strings = (
      'delete from packing where pack_id=:pack_id')
    Transaction = bagpostran
    Left = 103
    Top = 430
  end
  object bagpostran: TIBTransaction
    DefaultDatabase = dm.IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 425
    Top = 275
  end
  object addpacking: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'INSERT_PACKING'
    Left = 571
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PTNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TMNAME'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'OPER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKKOL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACK_ID'
        ParamType = ptInput
      end>
  end
  object changebagsumm: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = bagpostran
    StoredProcName = 'CAHGE_BAGSUMM'
    Left = 422
    Top = 347
  end
  object del_packing: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = bagpostran
    StoredProcName = 'del_packing'
    Left = 499
    Top = 346
  end
  object upd: TIBSQL
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Left = 144
    Top = 435
  end
end
