object cnvform: Tcnvform
  Left = 199
  Top = 182
  Caption = 'cnvform'
  ClientHeight = 569
  ClientWidth = 821
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
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 821
    Height = 79
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        Width = 817
      end
      item
        Control = Panel3
        ImageIndex = -1
        Width = 817
      end
      item
        Control = Panel4
        ImageIndex = -1
        MinHeight = 21
        Width = 817
      end>
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 804
      Height = 25
      ActionManager = ActionManager1
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
    object Panel3: TPanel
      Left = 9
      Top = 27
      Width = 804
      Height = 25
      BevelOuter = bvNone
      TabOrder = 1
      object DBText1: TDBText
        Left = 0
        Top = 4
        Width = 215
        Height = 17
        DataField = 'TRANSINFO'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 220
        Top = 2
        Width = 19
        Height = 21
        Shape = bsLeftLine
      end
      object Label1: TLabel
        Left = 226
        Top = 3
        Width = 115
        Height = 19
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1093#1086#1076#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 453
        Top = 3
        Width = 84
        Height = 20
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Flat = True
        OnClick = SpeedButton1Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 344
        Top = 2
        Width = 105
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkFlat
        Date = 39099.557135636580000000
        Time = 39099.557135636580000000
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 9
      Top = 54
      Width = 804
      Height = 21
      BevelOuter = bvNone
      TabOrder = 2
      object Label2: TLabel
        Left = 2
        Top = 2
        Width = 82
        Height = 18
        Caption = #1052#1077#1089#1090' '#1092#1072#1082#1089':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 87
        Top = 2
        Width = 65
        Height = 17
        DataField = 'POSCOUNT'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 155
        Top = 0
        Width = 19
        Height = 21
        Shape = bsLeftLine
      end
      object Label3: TLabel
        Left = 160
        Top = 2
        Width = 80
        Height = 18
        Caption = #1052#1077#1089#1090' '#1092#1072#1082#1090':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 244
        Top = 2
        Width = 65
        Height = 17
        DataField = 'POSCAME'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel3: TBevel
        Left = 313
        Top = 1
        Width = 19
        Height = 21
        Shape = bsLeftLine
      end
    end
  end
  object Panel1: TPanel
    Left = 193
    Top = 110
    Width = 712
    Height = 179
    BevelOuter = bvNone
    Caption = 'Panel1'
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object Bevel6: TBevel
      Left = 0
      Top = 0
      Width = 712
      Height = 33
      Align = alTop
      Shape = bsFrame
    end
    object SpeedButton2: TSpeedButton
      Left = 4
      Top = 3
      Width = 69
      Height = 27
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      Visible = False
      OnClick = SpeedButton2Click
    end
    object Bevel7: TBevel
      Left = 75
      Top = 4
      Width = 14
      Height = 26
      Shape = bsLeftLine
    end
    object Label4: TLabel
      Left = 79
      Top = 10
      Width = 30
      Height = 13
      Caption = #1043#1086#1088#1086#1076
    end
    object Label5: TLabel
      Left = 231
      Top = 10
      Width = 36
      Height = 13
      Caption = #1050#1083#1080#1077#1085#1090
    end
    object Bevel8: TBevel
      Left = 226
      Top = 3
      Width = 14
      Height = 26
      Shape = bsLeftLine
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 33
      Width = 712
      Height = 146
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOWN_CODE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = #1056#1077#1075#1080#1086#1085
          Width = 42
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BAGGETDATE'
          Title.Caption = #1057#1076#1072#1085#1086
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOWNNAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #1043#1086#1088#1086#1076
          Width = 89
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CLIENT_CODE'
          Title.Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INSIDE_NUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = #1052#1077#1089#1090#1086
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTNAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = #1050#1083#1080#1077#1085#1090
          Width = 252
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BAGNUM1'
          Title.Caption = #8470' '#1073#1072#1075#1072#1078#1072
          Width = 84
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'WEIGHT'
          Title.Caption = #1042#1077#1089
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WEIGHT_FACT'
          Title.Caption = #1042#1077#1089' '#1092#1072#1082#1090
          Width = 43
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SIZE_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = #1044#1083#1080#1085#1072
          Width = 46
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SIZE_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = #1064#1080#1088#1080#1085#1072
          Width = 48
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SIZE_3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = #1042#1099#1089#1086#1090#1072
          Width = 44
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VOLUME'
          Title.Caption = #1054#1073#1098#1105#1084
          Width = 45
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TRANSOUT1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1086
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATECAME'
          Title.Caption = #1055#1088#1080#1096#1083#1086
          Width = 81
          Visible = True
        end>
    end
    object com: TComboBox
      Left = 111
      Top = 5
      Width = 113
      Height = 24
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = #1042#1089#1077' '#1075#1086#1088#1086#1076#1072
      OnChange = comChange
      Items.Strings = (
        #1042#1089#1077' '#1075#1086#1088#1086#1076#1072)
    end
    object Edit1: TEdit
      Left = 270
      Top = 5
      Width = 121
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyDown = Edit1KeyDown
    end
    object CheckBox2: TCheckBox
      Left = 409
      Top = 10
      Width = 97
      Height = 17
      Caption = #1073#1077#1079' '#1087#1072#1082#1080#1085#1075#1072
      TabOrder = 3
      OnClick = CheckBox2Click
    end
  end
  object Panel2: TPanel
    Left = 100
    Top = 298
    Width = 802
    Height = 181
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 547
      Top = 0
      Height = 181
      Color = clBlack
      ParentColor = False
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 547
      Height = 181
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 0
      object Bevel4: TBevel
        Left = 0
        Top = 0
        Width = 547
        Height = 33
        Align = alTop
        Shape = bsFrame
      end
      object SpeedButton3: TSpeedButton
        Left = 4
        Top = 3
        Width = 69
        Height = 27
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        Flat = True
      end
      object Bevel9: TBevel
        Left = 75
        Top = 4
        Width = 14
        Height = 26
        Shape = bsLeftLine
      end
      object Label6: TLabel
        Left = 79
        Top = 10
        Width = 30
        Height = 13
        Caption = #1043#1086#1088#1086#1076
      end
      object Bevel10: TBevel
        Left = 226
        Top = 3
        Width = 14
        Height = 26
        Shape = bsLeftLine
      end
      object Label7: TLabel
        Left = 231
        Top = 11
        Width = 36
        Height = 13
        Caption = #1050#1083#1080#1077#1085#1090
      end
      object com1: TComboBox
        Left = 111
        Top = 4
        Width = 113
        Height = 24
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 16
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = #1042#1089#1077' '#1075#1086#1088#1086#1076#1072
        OnChange = com1Change
        Items.Strings = (
          #1042#1089#1077' '#1075#1086#1088#1086#1076#1072)
      end
      object Edit2: TEdit
        Left = 270
        Top = 5
        Width = 121
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyDown = Edit2KeyDown
      end
    end
    object Panel6: TPanel
      Left = 550
      Top = 0
      Width = 252
      Height = 181
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel6'
      TabOrder = 1
      object Bevel5: TBevel
        Left = 0
        Top = 0
        Width = 252
        Height = 33
        Align = alTop
        Shape = bsFrame
      end
      object Bevel11: TBevel
        Left = 67
        Top = 3
        Width = 14
        Height = 26
        Shape = bsLeftLine
      end
      object Label9: TLabel
        Left = 78
        Top = 10
        Width = 36
        Height = 13
        Caption = #1050#1083#1080#1077#1085#1090
        Visible = False
      end
      object CheckBox1: TCheckBox
        Left = 4
        Top = 9
        Width = 61
        Height = 17
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object Edit3: TEdit
        Left = 120
        Top = 5
        Width = 123
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnKeyDown = Edit3KeyDown
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = refersh
            ShortCut = 116
          end
          item
            Action = makeinvoice
          end
          item
            Visible = False
            Action = recieve_all
          end
          item
            Visible = False
            Action = load_file
          end
          item
            Items = <
              item
                Action = packrep
              end
              item
                Visible = False
                Action = town_rep
              end
              item
                Action = pack_all
              end
              item
                Visible = False
                Action = load_off
              end
              item
                Visible = False
                Action = incar_act
              end>
            Action = reports
          end
          item
            Items = <
              item
                Action = view1
              end
              item
                Action = view2
              end>
            Visible = False
            Action = view_act
          end
          item
            Action = archive_act
          end
          item
            Action = close_act
            ShortCut = 27
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 824
    Top = 86
    StyleName = 'XP Style'
    object refersh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ShortCut = 116
      OnExecute = refershExecute
    end
    object recieve_all: TAction
      Caption = #1055#1088#1080#1085#1103#1090#1100' '#1074#1089#1105' '#1085#1072' '#1089#1082#1083#1072#1076
      OnExecute = recieve_allExecute
    end
    object load_file: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1080#1079' '#1092#1072#1081#1083#1072
    end
    object reports: TAction
      Caption = #1054#1090#1095#1077#1090#1099
      OnExecute = reportsExecute
    end
    object view_act: TAction
      Caption = #1042#1080#1076
      OnExecute = view_actExecute
    end
    object archive_act: TAction
      Caption = #1040#1088#1093#1080#1074#1080#1088#1086#1074#1072#1090#1100
      OnExecute = archive_actExecute
    end
    object close_act: TAction
      Caption = #1042#1099#1093#1086#1076
      ShortCut = 27
      OnExecute = close_actExecute
    end
    object view1: TAction
      Caption = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081
      OnExecute = view1Execute
    end
    object view2: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072'/'#1089#1082#1083#1072#1076
      OnExecute = view2Execute
    end
    object load_off_pos: TAction
      Caption = #1042#1077#1088#1085#1091#1090#1100
      OnExecute = load_off_posExecute
    end
    object packrep: TAction
      Caption = #1057#1074#1086#1076#1085#1099#1081' '#1087#1072#1082#1080#1085#1075' ('#1086#1088#1080#1075#1080#1085#1072#1083')'
      OnExecute = packrepExecute
    end
    object town_rep: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1087#1086' '#1075#1086#1088#1086#1076#1072#1084
      Visible = False
      OnExecute = town_repExecute
    end
    object pack_all: TAction
      Caption = #1055#1086#1076#1088#1086#1073#1085#1099#1081' '#1087#1072#1082#1080#1085#1075' ('#1086#1088#1080#1075#1080#1085#1072#1083')'
      OnExecute = pack_allExecute
    end
    object load_off: TAction
      Caption = #1042#1099#1075#1088#1091#1079#1082#1072
      Visible = False
      OnExecute = load_offExecute
    end
    object incar_act: TAction
      Caption = #1054#1090#1095#1105#1090' '#1085#1072' '#1089#1077#1088#1074#1077#1088
      Visible = False
      OnExecute = incar_actExecute
    end
    object makeinvoice: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1080#1085#1074#1086#1081#1089
      OnExecute = makeinvoiceExecute
    end
  end
  object cnvpos: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    SQL.Strings = (
      
        'select '#39'['#39'||transprefix|| '#39']'#39' || '#39' '#39' || bagnum1 as bagnum1, zag_' +
        'id, xcode from zagruzka where outertrans_id=:outertrans_id and o' +
        'perstate=0')
    Left = 24
    Top = 86
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'outertrans_id'
        ParamType = ptUnknown
      end>
  end
  object cnvinfo: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    SQL.Strings = (
      'select * from transport where trans_id=:trans_id')
    Left = 58
    Top = 86
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trans_id'
        ParamType = ptUnknown
      end>
  end
  object cnvtran: TIBTransaction
    DefaultDatabase = dm.IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 37
    Top = 432
  end
  object choper: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = cnvtran
    StoredProcName = 'CHANGEOPERSTATE'
    Left = 24
    Top = 205
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ZAG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRANS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NEWOPER'
        ParamType = ptInput
      end>
  end
  object updatetransstate: TIBSQL
    Database = dm.IBDatabase2
    Transaction = cnvtran
    Left = 34
    Top = 477
  end
  object DataSource1: TDataSource
    DataSet = cnvpos
    Left = 24
    Top = 137
  end
  object cnvall: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    SQL.Strings = (
      
        'select z.*, tt.tname, tw.townname, tw.town_code, r.regname, tr.t' +
        'ransout, tr1.transout, c.client_name as clientname'
      
        'from zagruzka z, transtype tt, towns tw, regions r, transport tr' +
        ', transport tr1, clients c'
      
        'where z.trans_id=tr.trans_id and z.outertrans_id=tr1.trans_id an' +
        'd z.client_id=c.client_id and z.outertrans_id=:outertrans_id and' +
        ' z.trt_id=tt.trt_id and z.destdiv_id=tw.town_id and tw.reg_id=r.' +
        'reg_id order by xcode, inside_num')
    Left = 92
    Top = 87
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'outertrans_id'
        ParamType = ptUnknown
      end>
  end
  object cnvstore: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    SQL.Strings = (
      
        'select  '#39'['#39' || transprefix || '#39']'#39' || '#39' '#39' || bagnum1 as bagnum1, ' +
        'zag_id, xcode from zagruzka where outertrans_id=:outertrans_id a' +
        'nd operstate=1')
    Left = 140
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'outertrans_id'
        ParamType = ptUnknown
      end>
  end
  object DataSource2: TDataSource
    DataSet = cnvinfo
    Left = 67
    Top = 146
  end
  object DataSource3: TDataSource
    DataSet = cnvall
    Left = 102
    Top = 163
  end
  object DataSource4: TDataSource
    DataSet = cnvstore
    Left = 151
    Top = 162
  end
  object refreshcnv: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = cnvtran
    StoredProcName = 'RECULC_CNV'
    Left = 277
    Top = 419
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TRANS_ID'
        ParamType = ptInput
      end>
  end
  object packing_all: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    Left = 109
    Top = 213
  end
  object IBQuery1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    SQL.Strings = (
      
        'select sum(z.bagposcount), sum(weight), sum(volume), r.reg_id, r' +
        '.regname from zagruzka z, regions r, towns t where'
      
        'r.reg_id=t.reg_id and z.destdiv_id=t.town_id  and z.outertrans_i' +
        'd=:trans_id group by r.reg_id, r.regname ')
    Left = 175
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trans_id'
        ParamType = ptUnknown
      end>
  end
  object transpos: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    SQL.Strings = (
      
        'select sum(bagposcount), sum(weight), sum(volume), z.xcode, tw.t' +
        'own_code,  z.client_id from zagruzka z, towns tw, clients c wher' +
        'e z.outertrans_id=:trans_id and c.client_id=z.client_id and c.cl' +
        '_div=tw.town_id group by z.xcode, tw.town_code, z.client_id orde' +
        'r by  xcode, inside_num')
    Left = 17
    Top = 314
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trans_id'
        ParamType = ptUnknown
      end>
  end
  object pospack: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    SQL.Strings = (
      
        'select inside_num, bagnum1, weight, zag_id from zagruzka z where' +
        ' z.outertrans_id=:trans_id'
      'order by inside_num')
    Left = 60
    Top = 316
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trans_id'
        ParamType = ptUnknown
      end>
  end
  object packing1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    DataSource = DataSource3
    SQL.Strings = (
      
        'select z.bagnum1, z.weight, pt.packtype_id, pt.packtypename, u.u' +
        'nittitle, p.packkol'
      'from packing_origin p, zagruzka z, packtypes pt, unittypes u'
      
        'where u.unttype=p.unittype and z.zag_id=p.bag_id and z.zag_id=:z' +
        'ag_id and p.packtype_id=pt.packtype_id')
    Left = 98
    Top = 316
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'zag_id'
        ParamType = ptUnknown
      end>
  end
  object DataSource5: TDataSource
    DataSet = pospack
    Left = 70
    Top = 375
  end
  object DataSource6: TDataSource
    DataSet = transpos
    Left = 20
    Top = 374
  end
  object checkbarcode: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    SQL.Strings = (
      
        'select zag_id from zagruzka where barcode=:barcode and outertran' +
        's_id=:trans_id and operstate=0')
    Left = 127
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'barcode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'trans_id'
        ParamType = ptUnknown
      end>
  end
  object newitems: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = cnvtran
    StoredProcName = 'NEWORDITEMS'
    Left = 164
    Top = 341
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NEW_ID'
        ParamType = ptOutput
      end
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
        DataType = ftDateTime
        Name = 'lupdate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ptp_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'poskol'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'unittype_id'
        ParamType = ptInput
      end>
  end
  object makeorder: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = cnvtran
    StoredProcName = 'MAKE_ORDER'
    Left = 223
    Top = 341
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TRANS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ORD_ID'
        ParamType = ptInput
      end>
  end
  object new_ot: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = cnvtran
    StoredProcName = 'NEW_OT_ITEMS'
    Left = 277
    Top = 347
  end
  object helper: TIBQuery
    Database = dm.IBDatabase2
    Transaction = cnvtran
    Left = 207
    Top = 414
  end
  object newtm: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = cnvtran
    StoredProcName = 'NEW_ORDITEM_TM'
    Left = 157
    Top = 410
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORDITEM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKKOL'
        ParamType = ptInput
      end>
  end
end
