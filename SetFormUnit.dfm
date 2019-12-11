object setform: Tsetform
  Left = 280
  Top = 202
  BorderStyle = bsSizeToolWin
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 435
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 562
    Height = 435
    ActivePage = TabSheet3
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitWidth = 578
    object TabSheet3: TTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      ImageIndex = 2
      ExplicitWidth = 570
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 554
        Height = 404
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 570
        object CoolBar1: TCoolBar
          Left = 0
          Top = 0
          Width = 554
          Height = 29
          AutoSize = True
          Bands = <
            item
              Control = Panel2
              ImageIndex = -1
              Width = 550
            end>
          ExplicitWidth = 570
          object Panel2: TPanel
            Left = 9
            Top = 0
            Width = 537
            Height = 25
            BevelOuter = bvNone
            TabOrder = 0
            object SpeedButton1: TSpeedButton
              Left = 0
              Top = 2
              Width = 70
              Height = 22
              Caption = #1050#1072#1088#1090#1086#1095#1082#1072
              Flat = True
              OnClick = SpeedButton1Click
            end
            object Bevel1: TBevel
              Left = 72
              Top = 1
              Width = 8
              Height = 23
              Shape = bsLeftLine
            end
            object Bevel2: TBevel
              Left = 175
              Top = 1
              Width = 8
              Height = 23
              Shape = bsLeftLine
            end
            object savebut: TSpeedButton
              Left = 230
              Top = 1
              Width = 23
              Height = 22
              Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
              Caption = 'F2'
              Enabled = False
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = savebutClick
            end
            object newbut: TSpeedButton
              Left = 180
              Top = 1
              Width = 23
              Height = 22
              Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Caption = '+'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = newbutClick
            end
            object delbut: TSpeedButton
              Left = 205
              Top = 1
              Width = 23
              Height = 22
              Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Caption = '-'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = delbutClick
            end
            object DBNavigator1: TDBNavigator
              Left = 76
              Top = 0
              Width = 96
              Height = 25
              DataSource = dsus
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Flat = True
              TabOrder = 0
            end
            object CheckBox1: TCheckBox
              Left = 259
              Top = 6
              Width = 97
              Height = 17
              Caption = #1085#1077' '#1072#1082#1090#1080#1074#1085#1099#1077
              TabOrder = 1
              OnClick = CheckBox1Click
            end
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 29
          Width = 554
          Height = 375
          Align = alClient
          DataSource = dsus
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Columns = <
            item
              Expanded = False
              FieldName = 'USER_ID'
              Title.Caption = #1042#1085'. '#1085#1086#1084#1077#1088
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USERNAME'
              Title.Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Width = 202
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USERPASS'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UTNAME'
              Title.Caption = #1058#1080#1087' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Width = 156
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 5
          Top = 90
          Width = 528
          Height = 269
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          object Label4: TLabel
            Left = 39
            Top = 45
            Width = 73
            Height = 13
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 39
            Top = 106
            Width = 38
            Height = 13
            Caption = #1055#1072#1088#1086#1083#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 336
            Top = 106
            Width = 19
            Height = 13
            Caption = #1058#1080#1087
            Enabled = False
          end
          object usertypes: TComboBox
            Left = 336
            Top = 120
            Width = 179
            Height = 24
            BevelKind = bkFlat
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemHeight = 16
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnChange = usertypesChange
          end
          object statuscheck: TCheckBox
            Left = 42
            Top = 159
            Width = 97
            Height = 17
            Caption = #1074' '#1088#1072#1073#1086#1090#1077
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = statuscheckClick
          end
          object userpass: TEdit
            Left = 39
            Top = 121
            Width = 272
            Height = 21
            BevelInner = bvNone
            BevelKind = bkFlat
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnChange = userpassChange
          end
          object username: TEdit
            Left = 39
            Top = 62
            Width = 476
            Height = 30
            BevelInner = bvNone
            BevelKind = bkFlat
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnChange = usernameChange
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1080
      ImageIndex = 1
      ExplicitWidth = 570
      object Splitter1: TSplitter
        Left = 0
        Top = 158
        Width = 554
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        ExplicitWidth = 561
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 26
        Width = 554
        Height = 132
        Align = alTop
        Ctl3D = True
        DataSource = dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
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
            FieldName = 'CNFNAME'
            Width = 539
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 161
        Width = 554
        Height = 243
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 570
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 554
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Panel5'
          TabOrder = 0
          ExplicitWidth = 570
          object StaticText1: TStaticText
            Left = 0
            Top = 0
            Width = 554
            Height = 26
            Align = alClient
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = ' '#1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
            Color = 11903636
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 570
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 26
          Width = 554
          Height = 217
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel6'
          TabOrder = 1
          ExplicitWidth = 570
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 260
            Height = 217
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Panel7'
            TabOrder = 0
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 260
              Height = 217
              Align = alClient
              DataSource = dsusall
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid3DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'USERNAME'
                  Width = 236
                  Visible = True
                end>
            end
          end
          object Panel8: TPanel
            Left = 260
            Top = 0
            Width = 33
            Height = 217
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton2: TSpeedButton
              Left = 5
              Top = 69
              Width = 23
              Height = 22
              Caption = '>>'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnClick = SpeedButton2Click
            end
            object SpeedButton3: TSpeedButton
              Left = 5
              Top = 101
              Width = 23
              Height = 22
              Caption = '<<'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnClick = SpeedButton3Click
            end
          end
          object Panel9: TPanel
            Left = 293
            Top = 0
            Width = 261
            Height = 217
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel9'
            TabOrder = 2
            ExplicitWidth = 277
            object DBGrid4: TDBGrid
              Left = 0
              Top = 0
              Width = 261
              Height = 217
              Align = alClient
              DataSource = dscnfusers
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid4DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'USERNAME'
                  Width = 236
                  Visible = True
                end>
            end
          end
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 554
        Height = 26
        Align = alTop
        BevelOuter = bvLowered
        Color = 11903636
        TabOrder = 2
        ExplicitWidth = 570
        object Label1: TLabel
          Left = 5
          Top = 1
          Width = 142
          Height = 22
          Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton4: TSpeedButton
          Left = 510
          Top = 1
          Width = 23
          Height = 22
          Caption = '+'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 534
          Top = 1
          Width = 23
          Height = 22
          Caption = '-'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton5Click
        end
        object showdelcncheck: TCheckBox
          Left = 413
          Top = 4
          Width = 97
          Height = 17
          Caption = #1091#1076#1072#1083#1105#1085#1085#1099#1077
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnClick = showdelcncheckClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 2
      ExplicitWidth = 570
      object DBGrid5: TDBGrid
        Left = 34
        Top = 47
        Width = 239
        Height = 202
        DataSource = usertDs
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBGrid6: TDBGrid
        Left = 285
        Top = 47
        Width = 238
        Height = 244
        DataSource = DataSource6
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = saveuser
          end
          item
            Action = new
          end>
      end>
    Left = 351
    Top = 158
    StyleName = 'XP Style'
    object saveuser: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
      OnExecute = saveuserExecute
    end
    object new: TAction
      Caption = #1053#1086#1074#1099#1081
      OnExecute = newExecute
    end
  end
  object dstariff: TDataSource
    DataSet = ttariff
    Left = 74
    Top = 297
  end
  object ttariff: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select  tarif_id, tariftitle || '#39' ['#39'|| price ||'#39']'#39',price, culcty' +
        'pename, tariftitle from ttariff,culctypes where culctype=ct_id o' +
        'rder by tariftitle')
    Left = 391
    Top = 369
  end
  object culctypes: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      'select * from culctypes')
    Left = 497
    Top = 369
  end
  object dsculctypes: TDataSource
    DataSet = culctypes
    Left = 269
    Top = 194
  end
  object newtarif: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'NEWTARIFF'
    Left = 354
    Top = 219
  end
  object qupdate: TIBSQL
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Left = 306
    Top = 97
  end
  object dsus: TDataSource
    DataSet = users
    Left = 171
    Top = 312
  end
  object newus: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'NEWUSER'
    Left = 540
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'USERNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERPASS'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'USERLEVELS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'userstatus'
        ParamType = ptInput
      end>
  end
  object users: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select u.*, ut.utname from users u, usertypes ut where u.userlev' +
        'els=ut.id and u.user_id<>0 and (userstatus=0 or userstatus=:stat' +
        'us)'
      ' ')
    Left = 200
    Top = 362
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
    object usersUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USERS.USER_ID'
      Required = True
    end
    object usersUSERNAME: TIBStringField
      FieldName = 'USERNAME'
      Origin = 'USERS.USERNAME'
      Size = 50
    end
    object usersUSERPASS: TIBStringField
      FieldName = 'USERPASS'
      Origin = 'USERS.USERPASS'
      Size = 10
    end
    object usersUSERLEVELS: TIntegerField
      FieldName = 'USERLEVELS'
      Origin = 'USERS.USERLEVELS'
    end
    object usersUTNAME: TIBStringField
      FieldName = 'UTNAME'
      Origin = 'USERTYPES.UTNAME'
      Size = 50
    end
    object usersUSERSTATUS: TSmallintField
      FieldName = 'USERSTATUS'
      Origin = 'USERS.USERSTATUS'
    end
  end
  object ustypes: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      'select * from usertypes')
    Left = 234
    Top = 364
    object ustypesID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERTYPES.ID'
      Required = True
    end
    object ustypesUTNAME: TIBStringField
      FieldName = 'UTNAME'
      Origin = 'USERTYPES.UTNAME'
      Size = 30
    end
  end
  object sql: TIBSQL
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Left = 13
    Top = 363
  end
  object upduser: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'UPDATEUSER'
    Left = 54
    Top = 359
    ParamData = <
      item
        DataType = ftString
        Name = 'USERNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERPASS'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'USERLEVELS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'userstatus'
        ParamType = ptInput
      end>
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 469
    Top = 57
    Bitmap = {
      494C010102000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      00000000000000000000000000000000000000000000F1DBC100DDAA6E00DBA6
      6200DBA66100DBA66100DBA66100DBA66100DBA66100DBA66100DBA66100DBA6
      6100DBA66100DBA66100DBA66100DBA66100DBA66100DBA66100DBA66100DBA6
      6100DBA66200DEAC6F00F0DABD000000000000000000F1DBC100DDAA6E00DBA6
      6200DBA66100DBA66100DBA66100DBA66100DBA66100DBA66100DBA66100DBA6
      6100DBA66100DBA66100DBA66100DBA66100DBA66100DBA66100DBA66100DBA6
      6100DBA66200DEAC6F00F0DABD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DFC600D99E5500EEC06A00EDBB
      5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA
      5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA
      5D00EDBB5F00EEC16B00D99F5600F1DBBE00F2DFC600D99E5500EEC06A00EDBB
      5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA
      5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA5E00EDBA
      5D00EDBB5F00EEC16B00D99F5600F1DBBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFAE7100EEC06A00D99A4600D99B
      4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C
      4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C
      4800D99B4800D99A4600EEC16B00DEAB6B00DFAE7100EEC06A00D99A4600D99B
      4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C
      4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C4800D99C
      4800D99B4800D99A4600EEC16B00DEAB6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEAA6500EDBA5E00D99B4800D99C
      4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C
      4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C
      4900D99C4900D99B4800EDBB5F00DEAB6400DEAA6500EDBA5E00D99B4800D99C
      4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C
      4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C4900D99C
      4900D99C4900D99B4800EDBB5F00DEAB64000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0AE6800ECB95C00D99C4800D99C
      4900DDA65B00E3B77B00D99C4900D99C4900D99C4900D99C4900D99C4900D99C
      4900D99C4900D99C4900D99C4900D99C4900D99C4900DA9F4E00DA9E4D00D99C
      4900D99C4900D99B4800EDBA5E00DFAD6800E0AE6800ECB95C00D99C4800D99C
      4900D99C4900C8965100C8A67700C8A57600C4A06F00D2974700D99C4900D99C
      4900D99C4900D99C4900D4984700C29E6C00C8A57600C8A67800C8975300D99C
      4900D99C4900D99B4800EDBA5E00DFAD68000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0AE6800ECB95C00D99C4800D99C
      4900DDA85E00F1DBBD00E3B67800D99C4900D99C4900D99C4900D99C4900D99C
      4900D99C4900D99C4900D99C4900D99C4900D99C4900E9C69500E9C79800DCA4
      5700D99C4900D99B4800EDBA5E00DFAD6800E0AE6800ECB95C00D99C4800D99C
      4900D99C4900D1984900CDB49000FBF4EB00FAF3E900B38F5E00D99C4900D99C
      4900D99C4900D99C4900B28C5700FAF3E900FBF4EA00D2BA9A00CF964900D99C
      4900D99C4900D99B4800EDBA5E00DFAD68000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0AE6800ECB95C00D99C4800D99C
      4900DA9E4D00EBCBA000F0D8B700DFAB6400D99C4900D99C4900D99C4900D99C
      4900D99C4900D99C4900D99C4900D99C4900DFAA6300FAF3E800F2DCBF00DDA6
      5C00D99C4900D99B4800EDBA5E00DFAD6800E0AE6800ECB95C00D99C4800D99C
      4900D99C4900D99C4900CE964900EFE1CE00F8EDDD00F2E6D600C38D4500D99C
      4900D99C4900C7904500EDE1CF00F8EDDD00F3E6D400CB944A00D99C4900D99C
      4900D99C4900D99B4800EDBA5E00DFAD68000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0AE6800ECB95C00D99C4800D99C
      4900D99C4900E1B27100F9F1E500F3E0C700D99D4B00D99C4900D99C4900D99C
      4900D99C4900D99C4900D99C4900D99C4900E4B97E00F8EEE000E1B06D00D99C
      4900D99C4900D99B4800EDBA5E00DFAD6800E0AE6800ECB95C00D99C4800D99C
      4900D99C4900D99C4900D99C4900CEA46C00F9F0E400F9EEE000C5AD8C00D99C
      4900D99C4900C0A68100F9EFE100F9F0E400CFA87300D99C4900D99C4900D99C
      4900D99C4900D99B4800EDBA5E00DFAD68000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1B06B00EEBB5F00DB9E4B00DB9E
      4C00DDA25400DFA85F00F5E5CF00FAF2E700E7BF8900DDA45700DDA45700DDA4
      5700DDA45700DDA45700DDA45800DEA75C00F5E4CC00E8C08A00DDA35600DCA2
      5300DB9E4C00DB9D4B00EEBC6200E1AF6A00E1B06B00EEBB5F00DB9E4B00DB9E
      4C00DB9E4C00DB9E4C00DB9E4C00DB9E4C00D7C0A100F9EEE000FAF1E500B689
      4E00B88A4B00F9F0E400F9EEDF00DCC7AA00DB9E4C00DB9E4C00DB9E4C00DB9E
      4C00DB9E4C00DB9D4B00EEBC6200E1AF6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3B16D00EFBD6200DDA04D00DDA0
      4E00EECFA600F9EDDE00EED0A800F9EFE000F5E4CC00F0D6B300F8EDDD00F8EA
      D800F8EAD800F8EAD800F7E9D600ECC99B00F2DCBD00F0D4AE00FAF0E300EECF
      A500DDA04E00DD9F4D00EFBE6400E3B06D00E3B16D00EFBD6200DDA04D00DDA0
      4E00DDA04E00DDA04E00DDA04E00DDA04E00CA965000F9EEDF00F9EEDF00DFCF
      B800DCCBB400F9EEDF00F9EFE100C8965200DDA04E00DDA04E00DDA04E00DDA0
      4E00DDA04E00DD9F4D00EFBE6400E3B06D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4B36F00F0C06500DEA35000DEA2
      5000EED0A600FAF1E400F3DCBD00F4E0C500FAF2E500F1D7B200F6E5CF00F8EC
      DB00F8ECDA00F8ECDC00F2DABA00F7E9D500F1D7B300F5E2C900F9EFE000EECF
      A500DEA25000DEA25000F0C16800E4B36E00E4B36F00F0C06500DEA35000DEA2
      5000DEA35100DFA45300DFA55500DFA65600E0A75700C7A67800FAF2E500F9EE
      E000F9EEE000FAF1E500CAAB8000E0A75700DFA65600DFA55400DFA45200DEA3
      5100DEA25000DEA25000F0C16800E4B36E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5B57100F1C26800E0A55300E1A8
      5900ECC89600F1D8B400F1D6B000EDCD9D00FAF1E300F8ECDA00EDCC9B00F1D7
      B100F0D6AF00EFD2A700F0D5AD00FAF2E500EDCB9B00F1D6B000F1D8B400ECC8
      9400E1A85800E0A45300F1C26900E5B57000E5B57100F1C26800E0A55300E1A8
      5900E2AB5D00E2AC5F00E2AD6000E2AD6000E2AD5F00E1AC5F00E6D5BB00FAF0
      E200FAF0E200E9D9C100DFAB6000E2AD5F00E2AD6000E2AD5F00E2AC5F00E2AB
      5D00E1A85800E0A45300F1C26900E5B570000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6B87300F2C87200E4AF6300E5B1
      6600E5B16500E5B16500E5B16500E5B16500F4DEBE00FCF6EE00F2D8B200E5B1
      6500E5B16500E6B36A00FAEFE000F4DDBC00E5B16500E5B16500E5B16500E5B1
      6600E5B16600E4AE6200F2C87200E6B77200E6B87300F2C87200E4AF6300E5B1
      6600E5B16500E5B16500E5B16500E5B16500E5B16500E5B16500D6C3A800FAF1
      E300FAF1E300DBCAB100E4B06500E5B16500E5B16500E5B16500E5B16500E5B1
      6600E5B16600E4AE6200F2C87200E6B772000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9BD7C00F5D18600E7B56B00E7B4
      6B00E7B46B00E7B46B00E7B46B00E7B46B00EBBF8100F8EAD600F5E1C400EABE
      7E00E7B46B00EFCE9F00FCF5EC00EABF8000E7B46B00E7B46B00E7B46B00E7B4
      6B00E7B46B00E7B56B00F5D28700E9BC7B00E9BD7C00F5D18600E7B56B00E7B4
      6B00E7B46B00E7B46B00E7B46B00E7B46B00E7B46B00BB9A6C00FBF4E800FAF1
      E300FAF1E300FBF3E800BB9D7100E7B46B00E7B46B00E7B46B00E7B46B00E7B4
      6B00E7B46B00E7B56B00F5D28700E9BC7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBC08200F6D58D00E9B97100E9B9
      7200E9B97200E9B97200E9B97200E9B97200E9B97200F1D3A500FCF5EB00F3D8
      B100E9BA7400F9ECD800F5DFBE00E9B97200E9B97200E9B97200E9B97200E9B9
      7200E9B97200E9B97100F6D69000EBBF8000EBC08200F6D58D00E9B97100E9B9
      7200E9B97200E9B97200E9B97200E9B97200D3A86900F3EADB00FBF2E400F4E8
      D700F3E7D500FBF2E400F8EFE100CFA66800E9B97200E9B97200E9B97200E9B9
      7200E9B97200E9B97100F6D69000EBBF80000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDC38600F7D99500EBBE7800EBBE
      7900EBBE7900EBBE7900EBBE7900EBBE7900EBBE7900ECC28000F7E4C800FAED
      DB00F1D2A100FBF3E500ECC38300EBBE7900EBBE7900EBBE7900EBBE7900EBBE
      7900EBBE7900EBBE7800F7DA9700ECC28400EDC38600F7D99500EBBE7800EBBE
      7900EBBE7900EBBE7900EBBE7900EBBE7900C9B59800FCF4E900FCF6EC00D6B7
      8800D6B68400FCF6EC00FCF4E800CDBCA100EBBE7900EBBE7900EBBE7900EBBE
      7900EBBE7900EBBE7800F7DA9700ECC284000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEC58800F8DC9D00EDC17F00EDC1
      8000EDC18000EDC18000EDC18000EDC18000EDC18000EDC18000F1CF9D00F1CE
      9A00F8E6CB00F5DCB600EDC18000EDC18000EDC18000EDC18000EDC18000EDC1
      8000EDC18000EDC17F00F8DD9E00EEC48700EEC58800F8DC9D00EDC17F00EDC1
      8000EDC18000EDC18000EDC18000C3A37400FCF6EC00FCF4E900E2D2BC00EDC1
      8000EDC18000DDCCB300FCF5EA00FCF6EC00C1A27500EDC18000EDC18000EDC1
      8000EDC18000EDC17F00F8DD9E00EEC487000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0C88C00F9DFA400EFC58500EFC5
      8600EFC58600EFC58600EFC58600EFC58600EFC58600EFC58600EFC58600F0C8
      8D00FAEDDA00EFC68900EFC58600EFC58600EFC58600EFC58600EFC58600EFC5
      8600EFC58600EFC58500F9DFA500EFC78A00F0C88C00F9DFA400EFC58500EFC5
      8600EFC58600EFC58600E4BC8000E5DACA00FCF4E900FCF5E900D8B47F00EFC5
      8600EFC58600DBB67F00FAF2E600FCF4E900EBE1D200E0B97E00EFC58600EFC5
      8600EFC58600EFC58500F9DFA500EFC78A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1CA9000FAE2AB00F1C98B00F1C9
      8C00F1C98C00F1C98C00F1C98C00F1C98C00F1C98C00F1C98C00F1C98C00F6DD
      B600F5D7AB00F1C98C00F1C98C00F1C98C00F1C98C00F1C98C00F1C98C00F1C9
      8C00F1C98C00F1C98B00FAE2AC00F1CA8E00F1CA9000FAE2AB00F1C98B00F1C9
      8C00F1C98C00EBC48900C0AD9000FDF9F200FDF8F100DAC5A400F1C98C00F1C9
      8C00F1C98C00F1C98C00D9C29F00FDF8F100FDF9F200C3B19700E7C18600F1C9
      8C00F1C98C00F1C98B00FAE2AC00F1CA8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1CD9300FAE5B100F2CD9200F2CD
      9200F2CD9200F2CD9200F2CD9200F2CD9200F2CD9200F2CD9200F2CD9200F5D9
      AB00F2CF9500F2CD9200F2CD9200F2CD9200F2CD9200F2CD9200F2CD9200F2CD
      9200F2CD9200F2CD9100FAE5B200F1CB9200F1CD9300FAE5B100F2CD9200F2CD
      9200F2CD9200DCBE8F00F6E4C800F9E7CB00F8E6C800F0CC9400F2CD9200F2CD
      9200F2CD9200F2CD9200F0CC9300F7E5C600F9E7CB00F7E6CA00DDC09200F2CD
      9200F2CD9200F2CD9100FAE5B200F1CB92000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2CE9500FBE8B900F4D09700F4D0
      9800F4D09800F4D09800F4D09800F4D09800F4D09800F4D09800F4D09800F4D0
      9800F4D09800F4D09800F4D09800F4D09800F4D09800F4D09800F4D09800F4D0
      9800F4D09800F4D09700FBE8B900F2CD9100F2CE9500FBE8B900F4D09700F4D0
      9800F4D09800F4D09800F4D09800F4D09800F4D09800F4D09800F4D09800F4D0
      9800F4D09800F4D09800F4D09800F4D09800F4D09800F4D09800F4D09800F4D0
      9800F4D09800F4D09700FBE8B900F2CD91000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4D19A00FCEBC300F5D49D00F5D3
      9D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D3
      9D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D3
      9D00F5D39D00F5D49D00FCEBC200F3CE9500F4D19A00FCEBC300F5D49D00F5D3
      9D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D3
      9D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D39D00F5D3
      9D00F5D39D00F5D49D00FCEBC200F3CE95000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBEDD800F5CF9400FCEEC800FCED
      C500FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCED
      C400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCED
      C400FCEDC500FCEEC800F5CE9000FAEAD100FBEDD800F5CF9400FCEEC800FCED
      C500FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCED
      C400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCEDC400FCED
      C400FCEDC500FCEEC800F5CE9000FAEAD1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBEDD700F6D5A100F6D4
      9F00F6D5A000F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D5
      9F00F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D5
      A000F6D49E00F6D49E00FBEBD3000000000000000000FBEDD700F6D5A100F6D4
      9F00F6D5A000F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D5
      9F00F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D59F00F6D5
      A000F6D49E00F6D49E00FBEBD300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0080000180000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000180000100000000000000000000000000000000000000000000
      000000000000}
  end
  object config: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      'select * from configurations where block<>:block')
    Left = 21
    Top = 289
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'block'
        ParamType = ptUnknown
      end>
    object configCNF_ID: TIntegerField
      FieldName = 'CNF_ID'
      Origin = 'CONFIGURATIONS.CNF_ID'
    end
    object configCNFNAME: TIBStringField
      FieldName = 'CNFNAME'
      Origin = 'CONFIGURATIONS.CNFNAME'
      Size = 256
    end
    object configCNFNOTE: TIBStringField
      FieldName = 'CNFNOTE'
      Origin = 'CONFIGURATIONS.CNFNOTE'
      Size = 256
    end
    object configCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
      Origin = 'CONFIGURATIONS.CREATEDATE'
    end
    object configDIV_ID: TIntegerField
      FieldName = 'DIV_ID'
      Origin = 'CONFIGURATIONS.DIV_ID'
    end
    object configBLOCK: TSmallintField
      FieldName = 'BLOCK'
      Origin = 'CONFIGURATIONS.BLOCK'
    end
  end
  object dsconfig: TDataSource
    DataSet = config
    Left = 110
    Top = 328
  end
  object cnfuser: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    DataSource = dsconfig
    SQL.Strings = (
      
        'select u.*, c.id from users u,  cnfusers c where c.user_id=u.use' +
        'r_id and c.cnf_id=:cnf_id')
    Left = 311
    Top = 372
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnf_id'
        ParamType = ptUnknown
      end>
    object cnfuserUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USERS.USER_ID'
      Required = True
    end
    object cnfuserUSERNAME: TIBStringField
      FieldName = 'USERNAME'
      Origin = 'USERS.USERNAME'
      Size = 15
    end
    object cnfuserUSERPASS: TIBStringField
      FieldName = 'USERPASS'
      Origin = 'USERS.USERPASS'
      Size = 10
    end
    object cnfuserUSERLEVELS: TIntegerField
      FieldName = 'USERLEVELS'
      Origin = 'USERS.USERLEVELS'
    end
    object cnfuserUSERSTATUS: TSmallintField
      FieldName = 'USERSTATUS'
      Origin = 'USERS.USERSTATUS'
    end
    object cnfuserID: TIntegerField
      FieldName = 'ID'
      Origin = 'CNFUSERS.ID'
      Required = True
    end
  end
  object dscnfusers: TDataSource
    DataSet = cnfuser
    Left = 156
    Top = 373
  end
  object userall: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      'select * from users where userstatus=0  and user_id<>0')
    Left = 277
    Top = 367
    object userallUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USERS.USER_ID'
      Required = True
    end
    object userallUSERNAME: TIBStringField
      FieldName = 'USERNAME'
      Origin = 'USERS.USERNAME'
      Size = 15
    end
    object userallUSERPASS: TIBStringField
      FieldName = 'USERPASS'
      Origin = 'USERS.USERPASS'
      Size = 10
    end
    object userallUSERLEVELS: TIntegerField
      FieldName = 'USERLEVELS'
      Origin = 'USERS.USERLEVELS'
    end
    object userallUSERSTATUS: TSmallintField
      FieldName = 'USERSTATUS'
      Origin = 'USERS.USERSTATUS'
    end
  end
  object dsusall: TDataSource
    DataSet = userall
    Left = 102
    Top = 377
  end
  object addcnfuser: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'ADDUSER_TO_CONF'
    Left = 346
    Top = 338
    ParamData = <
      item
        DataType = ftInteger
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'OPERTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object od: TOpenDialog
    Left = 448
    Top = 312
  end
  object proc1: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_TOWNLIST_XLS'
    Left = 392
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TOWN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TOWNNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TOWNCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCK_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'REG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PARENT_ID'
        ParamType = ptInput
      end>
  end
  object proc2: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_DIV_XLS'
    Left = 448
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DIVNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PREFIX'
        ParamType = ptInput
      end>
  end
  object IBTable1: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoreDefs = True
    TableName = 'UNITTYPES'
    Left = 531
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 528
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = regions
    Left = 234
    Top = 282
  end
  object regions: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    FieldDefs = <
      item
        Name = 'REG_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'REGNAME'
        DataType = ftWideString
        Size = 25
      end
      item
        Name = 'SERV_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'IDX_REGIONS'
        Fields = 'REG_ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'REGIONS'
    Left = 296
    Top = 250
  end
  object DataSource3: TDataSource
    DataSet = IBTable2
    Left = 528
    Top = 168
  end
  object IBTable2: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'FILIAL'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'SOURCEDIV_ID'
        DataType = ftInteger
      end
      item
        Name = 'CN_ID'
        DataType = ftInteger
      end
      item
        Name = 'SYSSTR_ID'
        DataType = ftInteger
      end
      item
        Name = 'TRANSOUTDIV'
        DataType = ftInteger
      end
      item
        Name = 'PACKKOEF'
        DataType = ftFloat
      end
      item
        Name = 'TRANSITKOEF'
        DataType = ftFloat
      end
      item
        Name = 'KRKOEF'
        DataType = ftFloat
      end
      item
        Name = 'BLOCK'
        DataType = ftDateTime
      end>
    StoreDefs = True
    TableName = 'SYSENTER'
    Left = 528
    Top = 216
  end
  object DataSource4: TDataSource
    DataSet = IBTable3
    Left = 528
    Top = 264
  end
  object IBTable3: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    FieldDefs = <
      item
        Name = 'TO_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TONAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TOFLYNAME'
        DataType = ftWideString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'TOPERSTATE'
    Left = 528
    Top = 312
  end
  object IBTable4: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'UTNAME'
        DataType = ftWideString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'USERTYPES_IDX1'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'USERTYPES'
    Left = 456
    Top = 20
  end
  object DataSource5: TDataSource
    DataSet = IBTable4
    Left = 464
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 228
    object n1: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OnClick = n1Click
    end
  end
  object IBTable5: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    TableName = 'LOGTYPE'
    Left = 415
    Top = 18
  end
  object DataSource6: TDataSource
    DataSet = IBTable5
    Left = 464
    Top = 278
  end
  object oemcode1: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Active = True
    FieldDefs = <
      item
        Name = 'OEMCODE'
        DataType = ftWideString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'OEMCODE1_IDX1'
        Fields = 'OEMCODE'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'OEMCODE1'
    Left = 114
    Top = 26
  end
  object dsOemcode1: TDataSource
    DataSet = oemcode1
    Left = 70
    Top = 164
  end
  object oemcode2: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Active = True
    FieldDefs = <
      item
        Name = 'OEMCODE'
        DataType = ftWideString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'OEMCODE2_IDX1'
        Fields = 'OEMCODE'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'OEMCODE2'
    Left = 70
    Top = 28
  end
  object dsOemcode2: TDataSource
    DataSet = oemcode2
    Left = 24
    Top = 164
  end
  object oemcode3: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Active = True
    FieldDefs = <
      item
        Name = 'OEMCODE'
        DataType = ftWideString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'OEMCODE3_IDX1'
        Fields = 'OEMCODE'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'OEMCODE3'
    Left = 170
    Top = 26
  end
  object dsOemcode3: TDataSource
    DataSet = oemcode3
    Left = 138
    Top = 162
  end
  object usert: TIBTable
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    TableName = 'USERTYPES'
    Left = 242
    Top = 20
  end
  object usertDs: TDataSource
    DataSet = usert
    Left = 212
    Top = 66
  end
end
