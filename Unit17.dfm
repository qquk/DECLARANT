object packingform: Tpackingform
  Left = 434
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'pa'
  ClientHeight = 218
  ClientWidth = 505
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 43
    Top = 178
    Width = 120
    Height = 30
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 220
    Top = 179
    Width = 120
    Height = 30
    Caption = #1054#1090#1084#1077#1085#1072
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 505
    Height = 170
    Bands = <
      item
        Control = Panel1
        ImageIndex = -1
        MinHeight = 58
        Width = 501
      end
      item
        Control = Panel2
        ImageIndex = -1
        MinHeight = 55
        Width = 501
      end
      item
        Control = Panel3
        ImageIndex = -1
        MinHeight = 47
        Width = 501
      end>
    object Panel1: TPanel
      Left = 9
      Top = 0
      Width = 488
      Height = 58
      BevelOuter = bvNone
      TabOrder = 0
      object DBText1: TDBText
        Left = 6
        Top = 8
        Width = 48
        Height = 17
        DataField = 'PACKTYPE_ID'
        DataSource = DataSource1
      end
      object DBText2: TDBText
        Left = 6
        Top = 29
        Width = 357
        Height = 25
        DataField = 'PACKTYPENAME'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit4: TEdit
        Left = 7
        Top = 28
        Width = 478
        Height = 26
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
        TabOrder = 0
        Visible = False
        OnKeyDown = Edit4KeyDown
      end
    end
    object Panel2: TPanel
      Left = 9
      Top = 60
      Width = 488
      Height = 55
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 6
        Top = 4
        Width = 59
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      end
      object Edit1: TEdit
        Left = 7
        Top = 20
        Width = 83
        Height = 26
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
        TabOrder = 0
        Text = '0'
        OnKeyDown = Edit1KeyDown
        OnKeyPress = Edit1KeyPress
      end
    end
    object Panel3: TPanel
      Left = 9
      Top = 117
      Width = 488
      Height = 47
      BevelOuter = bvNone
      TabOrder = 2
      object Label3: TLabel
        Left = 6
        Top = 2
        Width = 303
        Height = 13
        Caption = #1058#1086#1088#1075#1086#1074#1072#1103' '#1084#1072#1088#1082#1072' ('#1086#1076#1085#1086' '#1085#1072#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1077' '#1073#1086#1083#1077#1077' 50 '#1089#1080#1084#1074#1086#1083#1086#1074')'
      end
      object Edit2: TEdit
        Left = 6
        Top = 18
        Width = 357
        Height = 26
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        Text = '?'
        OnKeyDown = Edit2KeyDown
        OnKeyPress = Edit2KeyPress
      end
    end
  end
  object packtypes: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select packtype_id, packtypename from packtypes where packtype_i' +
        'd=:packtype_id')
    Left = 328
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'packtype_id'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      'select packtype_id, packtypename from packtypes')
    Left = 235
    Top = 26
  end
  object DataSource1: TDataSource
    DataSet = packtypes
    Left = 300
    Top = 19
  end
  object ActionManager1: TActionManager
    Left = 164
    Top = 76
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
end
