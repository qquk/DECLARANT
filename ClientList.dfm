object Form5: TForm5
  Left = 150
  Top = 193
  BorderIcons = [biSystemMenu]
  Caption = 'Form5'
  ClientHeight = 466
  ClientWidth = 749
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
  object Label12: TLabel
    Left = 62
    Top = 377
    Width = 63
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 749
    Height = 88
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object CoolBar1: TCoolBar
      Left = 0
      Top = 0
      Width = 749
      Height = 88
      Align = alClient
      AutoSize = True
      Bands = <
        item
          Control = ActionToolBar1
          ImageIndex = -1
          Width = 745
        end
        item
          Control = Panel4
          ImageIndex = -1
          MinHeight = 27
          Width = 745
        end
        item
          Control = Panel5
          ImageIndex = -1
          Width = 745
        end>
      FixedOrder = True
      object Panel4: TPanel
        Left = 9
        Top = 27
        Width = 732
        Height = 27
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 3
          Width = 58
          Height = 22
          Caption = #1050#1072#1088#1090#1086#1095#1082#1072
          Flat = True
          OnClick = SpeedButton1Click
        end
        object Bevel1: TBevel
          Left = 64
          Top = 1
          Width = 9
          Height = 25
          Shape = bsLeftLine
        end
        object Label1: TLabel
          Left = 77
          Top = 7
          Width = 36
          Height = 13
          Caption = #1043#1086#1088#1086#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 279
          Top = 1
          Width = 9
          Height = 25
          Shape = bsLeftLine
        end
        object Label2: TLabel
          Left = 284
          Top = 8
          Width = 47
          Height = 13
          Caption = #1060#1080#1083#1100#1090#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object town_com1: TComboBox
          Left = 117
          Top = 2
          Width = 154
          Height = 24
          BevelKind = bkFlat
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = #1042#1089#1077' '#1075#1086#1088#1086#1076#1072
          OnChange = town_com1Change
          Items.Strings = (
            #1042#1089#1077' '#1075#1086#1088#1086#1076#1072)
        end
        object combo_filter: TComboBox
          Left = 339
          Top = 2
          Width = 154
          Height = 24
          BevelKind = bkFlat
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = #1042#1089#1077
          OnSelect = combo_filterSelect
          Items.Strings = (
            #1042#1089#1077
            #1055#1086' '#1082#1086#1076#1091' '#1082#1083#1080#1077#1085#1090#1072
            '')
        end
        object filter: TEdit
          Left = 515
          Top = 2
          Width = 135
          Height = 24
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
          Visible = False
          OnKeyDown = filterKeyDown
        end
      end
      object Panel5: TPanel
        Left = 9
        Top = 56
        Width = 732
        Height = 25
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Bevel3: TBevel
          Left = 128
          Top = 2
          Width = 19
          Height = 21
          Shape = bsLeftLine
        end
        object Label24: TLabel
          Left = 659
          Top = 10
          Width = 38
          Height = 13
          Caption = 'Label24'
          Visible = False
        end
        object navigator: TDBNavigator
          Left = -1
          Top = 2
          Width = 124
          Height = 22
          DataSource = dsclient
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          TabOrder = 0
        end
      end
      object ActionToolBar1: TActionToolBar
        Left = 0
        Top = 0
        Width = 741
        Height = 25
        ActionManager = ActionManager1
        Caption = 'ActionToolBar1'
        ColorMap.HighlightColor = 14410210
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = 14410210
        EdgeOuter = esLowered
        Spacing = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 88
    Width = 749
    Height = 359
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    ExplicitLeft = -8
    ExplicitTop = 87
    object Label3: TLabel
      Left = 39
      Top = 8
      Width = 13
      Height = 14
      Caption = #8470
      Enabled = False
    end
    object Label4: TLabel
      Left = 39
      Top = 45
      Width = 50
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
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
      Width = 45
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 39
      Top = 149
      Width = 63
      Height = 13
      Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 149
      Top = 149
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
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
      Width = 30
      Height = 14
      Caption = #1043#1086#1088#1086#1076
      Enabled = False
    end
    object Label10: TLabel
      Left = 40
      Top = 210
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 40
      Top = 257
      Width = 63
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 40
      Top = 304
      Width = 28
      Height = 13
      Caption = 'E-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 506
      Top = 256
      Width = 43
      Height = 13
      Caption = #1057#1086#1079#1076#1072#1085#1072
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object town_com: TComboBox
      Left = 336
      Top = 122
      Width = 145
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
      OnChange = town_comChange
    end
    object Edit1: TEdit
      Left = 506
      Top = 272
      Width = 153
      Height = 24
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 505
      Top = 110
      Width = 154
      Height = 140
      Caption = #1054#1087#1094#1080#1080
      TabOrder = 2
      object SpeedButton3: TSpeedButton
        Left = 11
        Top = 74
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB4CBDF5A90BE508ABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CCE06B9ECC92B9DE5087B8C6A08BC38E68
          C08B66BE8864BB8561B9835FB47E5CB88461C89A79E6C6ABE6C5A9DFB99AB6A3
          979CB8D36395C4B5CCE0C8926CE6E5E5E5E5E5E5E5E6E5E5E5E5E5E5E6E5E5E1
          CCBBF2DCC9F8E3CEF7E0C7F8E2CBF3D1B3B2A399837677FFFFFFCA946EE7E7E7
          E8E7E7E7E7E7E7E7E7E7E7E7C3C3C3E5C4A8F5E5D6F4DAC1F3D8BDF3D8BDF8E3
          CCD9B69AAA7353FFFFFFCC976FE9E9E9D28358D28358D28358E9E9E9C3C3C3E0
          BD9EF8EADCF4DDC6F4DCC4F3D8BDF8E2CDE4C1A4AC7554FFFFFFD19C73ECECEC
          ECECEBECECEBECECECECEBECC3C3C3E6C6AAF3E4D6F6E0CAF5DEC6F5DEC5F8E6
          D3E0C2A8B07A58FFFFFFD49E75EFEEEEEFEFEFEFEEEEEFEEEEEEEFEEEEEEEEDE
          CFBFE9CDB4F5E7DBF8ECDFF2DDC9EBD0B8DFCBBAB27C5AFFFFFFD5A076F1F1F0
          F1F0F1F0F1F1F1F0F1F1F1F1C3C3C3FEFFFFE3D4C2DAC6ACE1BFA0E5C4A7E3CD
          B6EAEEF0B57E5CFFFFFFD8A279F2F2F2D28358D28358D28358F2F2F3C3C3C3FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3B7815EFFFFFFD9A379F5F5F5
          F5F5F4F4F5F4F4F4F4F5F5F4C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
          C3F4F4F5BA8560FFFFFFDBA47AF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6BD8763FFFFFFDCA77BDCA77B
          DCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA7
          7BDCA77BC08B66FFFFFFDDAC85E8B992E8B992E8B992E8B992E8B992E8B992E8
          B992E8B992E8B992E8B992E8B992E8B992E8B992C19070FFFFFFDAC3B5DEB491
          DCA77BDCA67ADAA47AD8A279D5A076D49E75D29D73CF9A72CE9970CB966FC994
          6CC69E7FDAC3B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = SpeedButton3Click
      end
      object SpeedButton2: TSpeedButton
        Left = 33
        Top = 74
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Hint = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1094#1077#1085#1099
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFD7EEF8D8EEF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1E6F540B1DFB9E1F3FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A08BC38E68
          C08B66BE8864BB85614EA1BC43B5E35395AFA87D60AE7957AD7656AB7554A973
          53A97151C6A08BFFFFFFC8926CFFFFFFFFFFFFFFFFFFFFFFFFF3FBFD31AFDF51
          BAE63BADDEABD9F0FFFFFFFFFFFFFFFFFFFFFFFFA97251FFFFFFCA946EFFFFFF
          A4E3F490DBF092DAEF8CD6EE3DB7E27DD0F06DC7EC44B2E273C1E4DFEFF5FCFC
          F9FFFFFFAA7353FFFFFFCC976FFFFFFF63D1EC6ED8F068D3EF66CFED84D9F388
          D7F47DCFF158BCE852B7E5229DD7A5D3E9F5FAFDAC7554FFFFFFD19C73FFFFFF
          D4F3F849C9EA90E6F88DE3F760D2F284D7F43CB7E286CFEA8BCFE982CAE790CC
          E6E5F3FAB07A58FFFFFFD49E75FFFFFFFAFDFC9AE2F26BD9F196E7F847CFF289
          DCF438B9E3A4DBECFBF8F4FBF7F2FBF5F2FFFFFFB27C5AFFFFFFD5A076FFFFFF
          FDFDFCE5F7F947CCEB93E7F85FD8F490E0F67DD6F252C3E9AADBEBFAF3EFF8F2
          ECFFFFFFB57E5CFFFFFFD8A279FFFFFFFDFDFAFAFBFA8DE0F174DEF389E3F685
          DEF581D9F478D3F150C2E8AEDAE7F4ECE8FFFFFFB7815EFFFFFFD9A379FFFFFF
          FCFBF9FCFBF8CAEEF45DD4EC59D1EB57CEEA55CAE853C7E74EC2E458C2E3DCE1
          DEFFFFFFBA8560FFFFFFDBA47AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FFFFFFDCA77BDCA77B
          DCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA77BDCA7
          7BDCA77BC08B66FFFFFFDDAC85E8B992E8B992E8B992E8B992E8B992E8B992E8
          B992E8B992E8B992E8B992E8B992E8B992E8B992C19070FFFFFFDAC3B5DEB491
          DCA77BDCA67ADAA47AD8A279D5A076D49E75D29D73CF9A72CE9970CB966FC994
          6CC69E7FDAC3B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = SpeedButton4Click
      end
      object ComboBox1: TComboBox
        Left = 11
        Top = 47
        Width = 134
        Height = 24
        BevelKind = bkFlat
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 16
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
      object CheckBox1: TCheckBox
        Left = 12
        Top = 24
        Width = 97
        Height = 17
        Caption = #1094#1077#1085#1099
        TabOrder = 1
        Visible = False
        OnClick = CheckBox1Click
      end
    end
    object clnum: TDBEdit
      Left = 39
      Top = 24
      Width = 58
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      DataField = 'CLIENT_ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object FIO: TEdit
      Left = 40
      Top = 60
      Width = 619
      Height = 40
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object PHONE: TEdit
      Left = 40
      Top = 120
      Width = 268
      Height = 24
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
      TabOrder = 5
      OnKeyDown = filterKeyDown
    end
    object xcode: TEdit
      Left = 39
      Top = 164
      Width = 84
      Height = 40
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      OnKeyDown = filterKeyDown
    end
    object client_code: TEdit
      Left = 149
      Top = 164
      Width = 84
      Height = 40
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      OnKeyDown = filterKeyDown
    end
    object claddress: TEdit
      Left = 40
      Top = 227
      Width = 446
      Height = 24
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
      TabOrder = 8
      OnKeyDown = filterKeyDown
    end
    object email: TEdit
      Left = 40
      Top = 318
      Width = 446
      Height = 24
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
      TabOrder = 9
      OnKeyDown = filterKeyDown
    end
    object clnote: TEdit
      Left = 40
      Top = 274
      Width = 446
      Height = 24
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
      TabOrder = 10
      OnKeyDown = filterKeyDown
    end
  end
  object client_grid: TDBGrid
    Left = 505
    Top = 377
    Width = 221
    Height = 60
    BorderStyle = bsNone
    DataSource = dsclient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = rrr
    OnDblClick = client_gridDblClick
    Columns = <
      item
        Expanded = False
        Width = 7
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TOWNNAME'
        Title.Alignment = taCenter
        Title.Caption = #1043#1086#1088#1086#1076
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'XCODE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'X-'#1050#1086#1076
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENT_NAME'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103'/'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 288
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENT_PHONE'
        Title.Alignment = taCenter
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 298
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL_ADDRESS'
        Title.Alignment = taCenter
        Title.Caption = #1040#1076#1088#1077#1089
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTNOTE'
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 345
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 701
    Top = 256
    object N2: TMenuItem
      Caption = #1040#1082#1090#1080#1074#1085#1099#1081
      OnClick = N2Click
    end
  end
  object IBQuery1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Left = 690
    Top = 198
  end
  object clients: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select  c.*,  t.townname  from  clients c, towns t where c.cl_di' +
        'v=t.town_id  and c.clout_id=0 order by client_id ')
    Left = 609
    Top = 87
  end
  object dsclient: TDataSource
    DataSet = clients
    Left = 649
    Top = 90
  end
  object inscl: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'NEWCLIENT'
    Left = 305
    Top = 246
    ParamData = <
      item
        DataType = ftString
        Name = 'CLIENTNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENT_PHONE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CL_ADDRESS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CL_DIV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'XCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PASSNO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMAIL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTNOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'flok'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'sendprice'
        ParamType = ptInput
      end>
  end
  object chcl: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'CHANGECLIENTPROP'
    Left = 344
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'CLIENTNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENT_PHONE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CL_ADDRESS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TOWN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'XCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PASSNO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMAIL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTNOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'oldxcode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'flok'
        ParamType = ptOutput
      end>
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = refresh_act
          end
          item
            Action = newcl_act
          end
          item
            Visible = False
            Action = save_act
          end
          item
            Action = close_act
            ShortCut = 27
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 709
    Top = 136
    StyleName = 'XP Style'
    object refresh_act: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = refresh_actExecute
    end
    object newcl_act: TAction
      Caption = #1053#1086#1074#1099#1081
      OnExecute = newcl_actExecute
    end
    object save_act: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = False
      OnExecute = save_actExecute
    end
    object close_act: TAction
      Caption = #1042#1099#1093#1086#1076
      ShortCut = 27
      OnExecute = close_actExecute
    end
  end
  object delsend: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'DELSENDERS'
    Left = 414
    Top = 128
  end
  object setprice: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'SET_PRICES'
    Left = 444
    Top = 256
  end
  object upd: TIBSQL
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Left = 288
    Top = 104
  end
end
