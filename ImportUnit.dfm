object importform: Timportform
  Left = 208
  Top = 142
  BorderIcons = [biSystemMenu]
  Caption = #1048#1084#1087#1086#1088#1090' '#1087#1072#1082#1077#1090#1086#1074
  ClientHeight = 457
  ClientWidth = 613
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
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object add_but: TSpeedButton
    Left = 13
    Top = 410
    Width = 118
    Height = 33
    Caption = #1055#1077#1088#1077#1085#1086#1089' '#1087#1072#1082#1077#1090#1086#1074
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = add_butClick
  end
  object exit_but: TSpeedButton
    Left = 140
    Top = 411
    Width = 118
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = exit_butClick
  end
  object Label1: TLabel
    Left = 16
    Top = 368
    Width = 3
    Height = 13
  end
  object Memo1: TMemo
    Left = 10
    Top = 14
    Width = 293
    Height = 348
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 320
    Top = 13
    Width = 275
    Height = 348
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    TabOrder = 1
  end
  object pb1: TProgressBar
    Left = 13
    Top = 387
    Width = 580
    Height = 17
    TabOrder = 2
    Visible = False
  end
  object Panel1: TPanel
    Left = 252
    Top = 16
    Width = 280
    Height = 348
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label2: TLabel
      Left = 14
      Top = 52
      Width = 96
      Height = 14
      Caption = #1053#1086#1084#1077#1088' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
    end
    object Label3: TLabel
      Left = 15
      Top = 100
      Width = 56
      Height = 14
      Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088
    end
    object Label4: TLabel
      Left = 17
      Top = 197
      Width = 79
      Height = 14
      Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
    end
    object SpeedButton1: TSpeedButton
      Left = 15
      Top = 305
      Width = 86
      Height = 31
      Caption = #1057#1090#1072#1088#1090' >>'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = FlatSpeedButton1Click
    end
    object Label5: TLabel
      Left = 13
      Top = 242
      Width = 88
      Height = 14
      Caption = #1041#1088#1091#1090#1090#1086' '#1089#1077#1082#1074#1077#1089#1090#1088
    end
    object StaticText1: TStaticText
      Left = 2
      Top = 2
      Width = 276
      Height = 17
      Align = alTop
      Alignment = taCenter
      BevelKind = bkTile
      BevelOuter = bvNone
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object dcame: TDateTimePicker
      Left = 14
      Top = 214
      Width = 126
      Height = 22
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      Date = 40105.700719988420000000
      Time = 40105.700719988420000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 13
      Top = 68
      Width = 255
      Height = 26
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 13
      Top = 116
      Width = 255
      Height = 26
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object ComboBox2: TComboBox
      Left = 14
      Top = 158
      Width = 124
      Height = 22
      BevelKind = bkFlat
      ItemHeight = 14
      ItemIndex = 0
      TabOrder = 4
      Text = #1058#1080#1087' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
      Items.Strings = (
        #1058#1080#1087' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
        #1052#1086#1088#1077
        #1057#1072#1084#1086#1083#1105#1090
        #1052#1072#1096#1080#1085#1072)
    end
    object ComboBox1: TComboBox
      Left = 151
      Top = 158
      Width = 117
      Height = 22
      BevelKind = bkFlat
      ItemHeight = 14
      TabOrder = 5
      Text = #1048#1089#1090#1086#1095#1085#1080#1082
      Items.Strings = (
        #1048#1089#1090#1086#1095#1085#1080#1082
        #1040#1083#1072#1096#1077#1085#1082#1086#1091
        #1055#1077#1082#1080#1085
        #1043#1091#1072#1085#1095#1078#1086#1091
        #1057#1090#1072#1085#1073#1091#1083)
    end
    object dxEdit1: TEdit
      Left = 14
      Top = 27
      Width = 78
      Height = 16
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      Text = 'aaa'
    end
    object dxedit2: TEdit
      Left = 102
      Top = 27
      Width = 78
      Height = 16
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      Text = 'aaa'
    end
    object dxedit3: TEdit
      Left = 190
      Top = 27
      Width = 78
      Height = 16
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 8
      Text = 'aaa'
    end
    object minusW: TEdit
      Left = 13
      Top = 260
      Width = 92
      Height = 26
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Text = '0'
    end
    object Button2: TButton
      Left = 196
      Top = 312
      Width = 75
      Height = 25
      Caption = #1055#1077#1088#1077#1085#1086#1089
      TabOrder = 10
      Visible = False
      OnClick = Button2Click
    end
  end
  object Button1: TButton
    Left = 16
    Top = 332
    Width = 75
    Height = 25
    Caption = #1055#1077#1088#1077#1085#1086#1089
    TabOrder = 4
    Visible = False
    OnClick = Button1Click
  end
  object od1: TOpenDialog
    DefaultExt = 'fem'
    Filter = #1042#1089#1077'|*.fem;*.xls;*.xlsx|'#1055#1072#1082#1077#1090#1099' FEM|*.fem|'#1060#1072#1081#1083' Excel|*.xls;*.xlsx'
    FilterIndex = 0
    Left = 571
    Top = 41
  end
  object UnZip: TUnZip
    TranslateOemChar = False
    CpuType = cptAuto
    SeedDataKeys.Key0 = 305419896
    SeedDataKeys.Key1 = 591751049
    SeedDataKeys.Key2 = 878082192
    SeedHeaderKeys.Key0 = 269766672
    SeedHeaderKeys.Key1 = 33834504
    SeedHeaderKeys.Key2 = 541352064
    Left = 573
    Top = 9
  end
  object tran: TIBTransaction
    DefaultDatabase = mdb
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 60
    Top = 8
  end
  object cnvlist: TIBQuery
    Database = mdb
    Transaction = tran
    SQL.Strings = (
      'select * from cnvlist order by cnv_id desc')
    Left = 97
    Top = 8
  end
  object test: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      'select * from cnvlist where cnvstr=:cnvstr and div_id=:div_id')
    Left = 140
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnvstr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'div_id'
        ParamType = ptUnknown
      end>
  end
  object flylist: TIBQuery
    Database = mdb
    Transaction = tran
    SQL.Strings = (
      'select * from flylist')
    Left = 98
    Top = 46
  end
  object query1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select '#39'['#39'|| prefix || '#39'] '#39'  ||  cnvstr from cnvlist c, div d wh' +
        'ere '
      'd.div_id=c.div_id')
    Left = 20
    Top = 89
  end
  object updclients: TIBStoredProc
    Database = mdb
    Transaction = tran
    StoredProcName = 'UPDATE_CLIENT_ID'
    Left = 115
    Top = 91
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENT_ID_OLD'
        ParamType = ptInput
      end>
  end
  object clients: TIBQuery
    Database = mdb
    Transaction = tran
    SQL.Strings = (
      'select * from clients')
    Left = 142
    Top = 44
  end
  object ttariff: TIBQuery
    Database = mdb
    Transaction = tran
    SQL.Strings = (
      'select * from ttariff')
    Left = 60
    Top = 45
  end
  object updtariff: TIBStoredProc
    Database = mdb
    Transaction = tran
    StoredProcName = 'UPDATE_TARIF_ID'
    Left = 149
    Top = 92
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TARIF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TARIF_ID_OLD'
        ParamType = ptInput
      end>
  end
  object packtypes: TIBQuery
    Database = mdb
    Transaction = tran
    SQL.Strings = (
      'select * from packtypes')
    Left = 179
    Top = 45
    object packtypesPACKTYPE_ID: TIntegerField
      FieldName = 'PACKTYPE_ID'
      Origin = 'PACKTYPES.PACKTYPE_ID'
      Required = True
    end
    object packtypesPUNIT: TSmallintField
      FieldName = 'PUNIT'
      Origin = 'PACKTYPES.PUNIT'
    end
    object packtypesSUNIT: TIBStringField
      FieldName = 'SUNIT'
      Origin = 'PACKTYPES.SUNIT'
      Size = 5
    end
    object packtypesPTYPE: TSmallintField
      FieldName = 'PTYPE'
      Origin = 'PACKTYPES.PTYPE'
    end
    object packtypesOUTERID: TIntegerField
      FieldName = 'OUTERID'
      Origin = 'PACKTYPES.OUTERID'
    end
    object packtypesCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
      Origin = 'PACKTYPES.CREATEDATE'
    end
    object packtypesLUPDATE: TDateTimeField
      FieldName = 'LUPDATE'
      Origin = 'PACKTYPES.LUPDATE'
    end
    object packtypesOEMCODE: TIBStringField
      FieldName = 'OEMCODE'
      Origin = 'PACKTYPES.OEMCODE'
    end
    object packtypesPRNTORDER: TIntegerField
      FieldName = 'PRNTORDER'
      Origin = 'PACKTYPES.PRNTORDER'
    end
    object packtypesCN_ID: TIntegerField
      FieldName = 'CN_ID'
      Origin = 'PACKTYPES.CN_ID'
    end
    object packtypesPACKPRICE: TFloatField
      FieldName = 'PACKPRICE'
      Origin = 'PACKTYPES.PACKPRICE'
    end
    object packtypesPACKTYPEPRICE1: TFloatField
      FieldName = 'PACKTYPEPRICE1'
      Origin = 'PACKTYPES.PACKTYPEPRICE1'
    end
    object packtypesPACKTYPEPRICE2: TFloatField
      FieldName = 'PACKTYPEPRICE2'
      Origin = 'PACKTYPES.PACKTYPEPRICE2'
    end
    object packtypesMAYSALE: TSmallintField
      FieldName = 'MAYSALE'
      Origin = 'PACKTYPES.MAYSALE'
    end
    object packtypesGROUPID: TIntegerField
      FieldName = 'GROUPID'
      Origin = 'PACKTYPES.GROUPID'
    end
    object packtypesGOODK_ID: TIntegerField
      FieldName = 'GOODK_ID'
      Origin = 'PACKTYPES.GOODK_ID'
    end
    object packtypesFAST_ID: TIntegerField
      FieldName = 'FAST_ID'
      Origin = 'PACKTYPES.FAST_ID'
    end
    object packtypesBARCODE: TIBStringField
      FieldName = 'BARCODE'
      Origin = 'PACKTYPES.BARCODE'
      Size = 25
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
  end
  object updptype: TIBStoredProc
    Database = mdb
    Transaction = tran
    StoredProcName = 'UPDATE_PACKTYPE_ID'
    Left = 181
    Top = 92
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID_OLD'
        ParamType = ptInput
      end>
  end
  object updcnv: TIBStoredProc
    Database = mdb
    Transaction = tran
    StoredProcName = 'UPDATE_CNV_ID'
    Left = 78
    Top = 90
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end>
  end
  object updfly: TIBStoredProc
    Database = mdb
    Transaction = tran
    StoredProcName = 'UPDATE_FLY_ID'
    Left = 47
    Top = 139
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FLY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IBTFLYNO'
        ParamType = ptInput
      end>
  end
  object partlist: TIBQuery
    Database = mdb
    Transaction = tran
    SQL.Strings = (
      
        'select p.*, c.client_id from partlist p, clients c where c.clout' +
        '_id=p.client_id')
    Left = 220
    Top = 50
    object partlistPART_ID: TIntegerField
      FieldName = 'PART_ID'
      Origin = 'PARTLIST.PART_ID'
      Required = True
    end
    object partlistCLIENT_ID: TIntegerField
      FieldName = 'CLIENT_ID'
      Origin = 'PARTLIST.CLIENT_ID'
    end
    object partlistTRT_ID: TIntegerField
      FieldName = 'TRT_ID'
      Origin = 'PARTLIST.TRT_ID'
    end
    object partlistFLY_ID: TIntegerField
      FieldName = 'FLY_ID'
      Origin = 'PARTLIST.FLY_ID'
    end
    object partlistTOTALSUMM: TFloatField
      FieldName = 'TOTALSUMM'
      Origin = 'PARTLIST.TOTALSUMM'
    end
    object partlistSUMMPAIED: TFloatField
      FieldName = 'SUMMPAIED'
      Origin = 'PARTLIST.SUMMPAIED'
    end
    object partlistSUMMDEPT: TFloatField
      FieldName = 'SUMMDEPT'
      Origin = 'PARTLIST.SUMMDEPT'
    end
    object partlistOCENKA: TFloatField
      FieldName = 'OCENKA'
      Origin = 'PARTLIST.OCENKA'
    end
    object partlistSTRAHOVKA: TFloatField
      FieldName = 'STRAHOVKA'
      Origin = 'PARTLIST.STRAHOVKA'
    end
    object partlistSUMMPACK: TFloatField
      FieldName = 'SUMMPACK'
      Origin = 'PARTLIST.SUMMPACK'
    end
    object partlistSUMMADD1: TFloatField
      FieldName = 'SUMMADD1'
      Origin = 'PARTLIST.SUMMADD1'
    end
    object partlistSUMMADD2: TFloatField
      FieldName = 'SUMMADD2'
      Origin = 'PARTLIST.SUMMADD2'
    end
    object partlistSUMMADD3: TFloatField
      FieldName = 'SUMMADD3'
      Origin = 'PARTLIST.SUMMADD3'
    end
    object partlistSUMMADD4: TFloatField
      FieldName = 'SUMMADD4'
      Origin = 'PARTLIST.SUMMADD4'
    end
    object partlistSUMMADD5: TFloatField
      FieldName = 'SUMMADD5'
      Origin = 'PARTLIST.SUMMADD5'
    end
    object partlistSUMMADD6: TFloatField
      FieldName = 'SUMMADD6'
      Origin = 'PARTLIST.SUMMADD6'
    end
    object partlistSUMMADD7: TFloatField
      FieldName = 'SUMMADD7'
      Origin = 'PARTLIST.SUMMADD7'
    end
    object partlistSUMMADD8: TFloatField
      FieldName = 'SUMMADD8'
      Origin = 'PARTLIST.SUMMADD8'
    end
    object partlistSUMMADD9: TFloatField
      FieldName = 'SUMMADD9'
      Origin = 'PARTLIST.SUMMADD9'
    end
    object partlistSUMMSKIDKA: TFloatField
      FieldName = 'SUMMSKIDKA'
      Origin = 'PARTLIST.SUMMSKIDKA'
    end
    object partlistCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
      Origin = 'PARTLIST.CREATEDATE'
    end
    object partlistTARIF_ID: TIntegerField
      FieldName = 'TARIF_ID'
      Origin = 'PARTLIST.TARIF_ID'
    end
    object partlistTARRIFF: TFloatField
      FieldName = 'TARRIFF'
      Origin = 'PARTLIST.TARRIFF'
    end
    object partlistTOWN_ID: TIntegerField
      FieldName = 'TOWN_ID'
      Origin = 'PARTLIST.TOWN_ID'
    end
    object partlistCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
      Origin = 'PARTLIST.CUST_TYPE'
    end
    object partlistDEL_TYPE: TIntegerField
      FieldName = 'DEL_TYPE'
      Origin = 'PARTLIST.DEL_TYPE'
    end
    object partlistAWB: TIBStringField
      FieldName = 'AWB'
      Origin = 'PARTLIST.AWB'
    end
    object partlistXCODE: TIntegerField
      FieldName = 'XCODE'
      Origin = 'PARTLIST.XCODE'
    end
    object partlistPARTPOSCOUNT: TIntegerField
      FieldName = 'PARTPOSCOUNT'
      Origin = 'PARTLIST.PARTPOSCOUNT'
    end
    object partlistPARTWEIGHT: TFloatField
      FieldName = 'PARTWEIGHT'
      Origin = 'PARTLIST.PARTWEIGHT'
    end
    object partlistPARTVOLUME: TFloatField
      FieldName = 'PARTVOLUME'
      Origin = 'PARTLIST.PARTVOLUME'
    end
    object partlistDIV_ID: TIntegerField
      FieldName = 'DIV_ID'
      Origin = 'PARTLIST.DIV_ID'
    end
    object partlistOUTER_ID: TIntegerField
      FieldName = 'OUTER_ID'
      Origin = 'PARTLIST.OUTER_ID'
    end
    object partlistCNV_ID: TIntegerField
      FieldName = 'CNV_ID'
      Origin = 'PARTLIST.CNV_ID'
    end
    object partlistTOWN_CODE: TIBStringField
      FieldName = 'TOWN_CODE'
      Origin = 'PARTLIST.TOWN_CODE'
      Size = 3
    end
    object partlistSCOMMENT: TIBStringField
      FieldName = 'SCOMMENT'
      Origin = 'PARTLIST.SCOMMENT'
      Size = 100
    end
    object partlistFLYNO: TIntegerField
      FieldName = 'FLYNO'
      Origin = 'PARTLIST.FLYNO'
    end
    object partlistCLIENT_ID1: TIntegerField
      FieldName = 'CLIENT_ID1'
      Origin = 'CLIENTS.CLIENT_ID'
      Required = True
    end
  end
  object updpart: TIBStoredProc
    Database = mdb
    Transaction = tran
    StoredProcName = 'UPDATE_PART_ID'
    Left = 100
    Top = 140
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PART_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PART_ID_OLD'
        ParamType = ptInput
      end>
  end
  object updzag: TIBStoredProc
    Database = mdb
    Transaction = tran
    StoredProcName = 'UPDATE_ZAG_ID'
    Left = 149
    Top = 142
    ParamData = <
      item
        DataType = ftInteger
        Name = 'BAG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAG_ID_OLD'
        ParamType = ptInput
      end>
  end
  object zagruzka: TIBQuery
    Database = mdb
    Transaction = tran
    SQL.Strings = (
      
        'select z.*, c.client_id from zagruzka z, clients c where c.clout' +
        '_id=z.client_id')
    Left = 179
    Top = 7
    object zagruzkaZAG_ID: TIntegerField
      FieldName = 'ZAG_ID'
      Origin = 'ZAGRUZKA.ZAG_ID'
      Required = True
    end
    object zagruzkaCLIENT_ID: TIntegerField
      FieldName = 'CLIENT_ID'
      Origin = 'ZAGRUZKA.CLIENT_ID'
    end
    object zagruzkaBAGGETDATE: TDateTimeField
      FieldName = 'BAGGETDATE'
      Origin = 'ZAGRUZKA.BAGGETDATE'
    end
    object zagruzkaTRT_ID: TIntegerField
      FieldName = 'TRT_ID'
      Origin = 'ZAGRUZKA.TRT_ID'
    end
    object zagruzkaTRANSNO: TIntegerField
      FieldName = 'TRANSNO'
      Origin = 'ZAGRUZKA.TRANSNO'
    end
    object zagruzkaTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'ZAGRUZKA.TRANS_ID'
    end
    object zagruzkaOPERSTATE: TIntegerField
      FieldName = 'OPERSTATE'
      Origin = 'ZAGRUZKA.OPERSTATE'
    end
    object zagruzkaOUTERTRANS_ID: TIntegerField
      FieldName = 'OUTERTRANS_ID'
      Origin = 'ZAGRUZKA.OUTERTRANS_ID'
    end
    object zagruzkaTRANSIT_NUM: TIBStringField
      FieldName = 'TRANSIT_NUM'
      Origin = 'ZAGRUZKA.TRANSIT_NUM'
    end
    object zagruzkaBAGNUM: TIBStringField
      FieldName = 'BAGNUM'
      Origin = 'ZAGRUZKA.BAGNUM'
      Size = 10
    end
    object zagruzkaBAGNUM_X: TIBStringField
      FieldName = 'BAGNUM_X'
      Origin = 'ZAGRUZKA.BAGNUM_X'
      Size = 10
    end
    object zagruzkaFULLBAGNUM: TIBStringField
      FieldName = 'FULLBAGNUM'
      Origin = 'ZAGRUZKA.FULLBAGNUM'
    end
    object zagruzkaSHORTBAGNUM: TIntegerField
      FieldName = 'SHORTBAGNUM'
      Origin = 'ZAGRUZKA.SHORTBAGNUM'
    end
    object zagruzkaINSIDE_NUM: TIntegerField
      FieldName = 'INSIDE_NUM'
      Origin = 'ZAGRUZKA.INSIDE_NUM'
    end
    object zagruzkaBTYPE_ID: TIntegerField
      FieldName = 'BTYPE_ID'
      Origin = 'ZAGRUZKA.BTYPE_ID'
    end
    object zagruzkaCUSTTYPE_ID: TIntegerField
      FieldName = 'CUSTTYPE_ID'
      Origin = 'ZAGRUZKA.CUSTTYPE_ID'
    end
    object zagruzkaCLIENT_CODE: TIntegerField
      FieldName = 'CLIENT_CODE'
      Origin = 'ZAGRUZKA.CLIENT_CODE'
    end
    object zagruzkaXCODE: TIntegerField
      FieldName = 'XCODE'
      Origin = 'ZAGRUZKA.XCODE'
    end
    object zagruzkaBARCODE: TIBStringField
      FieldName = 'BARCODE'
      Origin = 'ZAGRUZKA.BARCODE'
    end
    object zagruzkaWEIGHT: TFloatField
      FieldName = 'WEIGHT'
      Origin = 'ZAGRUZKA.WEIGHT'
    end
    object zagruzkaVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = 'ZAGRUZKA.VOLUME'
    end
    object zagruzkaTARIF_TYPE: TIntegerField
      FieldName = 'TARIF_TYPE'
      Origin = 'ZAGRUZKA.TARIF_TYPE'
    end
    object zagruzkaDELIVER_ID: TIntegerField
      FieldName = 'DELIVER_ID'
      Origin = 'ZAGRUZKA.DELIVER_ID'
    end
    object zagruzkaSUMMDEST: TFloatField
      FieldName = 'SUMMDEST'
      Origin = 'ZAGRUZKA.SUMMDEST'
    end
    object zagruzkaSUMM_PACK: TIntegerField
      FieldName = 'SUMM_PACK'
      Origin = 'ZAGRUZKA.SUMM_PACK'
    end
    object zagruzkaSUMM_AGENT: TIntegerField
      FieldName = 'SUMM_AGENT'
      Origin = 'ZAGRUZKA.SUMM_AGENT'
    end
    object zagruzkaSUMM_EXTRA: TIntegerField
      FieldName = 'SUMM_EXTRA'
      Origin = 'ZAGRUZKA.SUMM_EXTRA'
    end
    object zagruzkaSUMM_AIRPORT: TIntegerField
      FieldName = 'SUMM_AIRPORT'
      Origin = 'ZAGRUZKA.SUMM_AIRPORT'
    end
    object zagruzkaSUMM_STRAF: TIntegerField
      FieldName = 'SUMM_STRAF'
      Origin = 'ZAGRUZKA.SUMM_STRAF'
    end
    object zagruzkaSUMM_AWB: TIntegerField
      FieldName = 'SUMM_AWB'
      Origin = 'ZAGRUZKA.SUMM_AWB'
    end
    object zagruzkaSUMM_ADDTRANS: TIntegerField
      FieldName = 'SUMM_ADDTRANS'
      Origin = 'ZAGRUZKA.SUMM_ADDTRANS'
    end
    object zagruzkaSUMM_ADD: TIntegerField
      FieldName = 'SUMM_ADD'
      Origin = 'ZAGRUZKA.SUMM_ADD'
    end
    object zagruzkaTOTALSUMM: TFloatField
      FieldName = 'TOTALSUMM'
      Origin = 'ZAGRUZKA.TOTALSUMM'
    end
    object zagruzkaSUMMDEPT: TFloatField
      FieldName = 'SUMMDEPT'
      Origin = 'ZAGRUZKA.SUMMDEPT'
    end
    object zagruzkaSUMMPAIED: TFloatField
      FieldName = 'SUMMPAIED'
      Origin = 'ZAGRUZKA.SUMMPAIED'
    end
    object zagruzkaCNV_ID: TIntegerField
      FieldName = 'CNV_ID'
      Origin = 'ZAGRUZKA.CNV_ID'
    end
    object zagruzkaSOURCEDIV_ID: TSmallintField
      FieldName = 'SOURCEDIV_ID'
      Origin = 'ZAGRUZKA.SOURCEDIV_ID'
    end
    object zagruzkaDESTDIV_ID: TSmallintField
      FieldName = 'DESTDIV_ID'
      Origin = 'ZAGRUZKA.DESTDIV_ID'
    end
    object zagruzkaIBTFLY: TIntegerField
      FieldName = 'IBTFLY'
      Origin = 'ZAGRUZKA.IBTFLY'
    end
    object zagruzkaIBTFLYNO: TIntegerField
      FieldName = 'IBTFLYNO'
      Origin = 'ZAGRUZKA.IBTFLYNO'
    end
    object zagruzkaBAGPOSCOUNT: TIntegerField
      FieldName = 'BAGPOSCOUNT'
      Origin = 'ZAGRUZKA.BAGPOSCOUNT'
    end
    object zagruzkaBAGOUTDATE: TDateTimeField
      FieldName = 'BAGOUTDATE'
      Origin = 'ZAGRUZKA.BAGOUTDATE'
    end
    object zagruzkaBAGTRANSNO: TIntegerField
      FieldName = 'BAGTRANSNO'
      Origin = 'ZAGRUZKA.BAGTRANSNO'
    end
    object zagruzkaPART_ID: TIntegerField
      FieldName = 'PART_ID'
      Origin = 'ZAGRUZKA.PART_ID'
    end
    object zagruzkaTARIFF: TFloatField
      FieldName = 'TARIFF'
      Origin = 'ZAGRUZKA.TARIFF'
    end
    object zagruzkaOCENKA: TFloatField
      FieldName = 'OCENKA'
      Origin = 'ZAGRUZKA.OCENKA'
    end
    object zagruzkaSTRAHOVKA: TFloatField
      FieldName = 'STRAHOVKA'
      Origin = 'ZAGRUZKA.STRAHOVKA'
    end
    object zagruzkaBAGNUM1: TIBStringField
      FieldName = 'BAGNUM1'
      Origin = 'ZAGRUZKA.BAGNUM1'
      Size = 25
    end
    object zagruzkaTRANSPREFIX: TIBStringField
      FieldName = 'TRANSPREFIX'
      Origin = 'ZAGRUZKA.TRANSPREFIX'
      Size = 5
    end
    object zagruzkaCLIENT_NAME: TIBStringField
      FieldName = 'CLIENT_NAME'
      Origin = 'ZAGRUZKA.CLIENT_NAME'
      Size = 80
    end
    object zagruzkaOUTER_ID: TIntegerField
      FieldName = 'OUTER_ID'
      Origin = 'ZAGRUZKA.OUTER_ID'
    end
    object zagruzkaSIZE_1: TIntegerField
      FieldName = 'SIZE_1'
      Origin = 'ZAGRUZKA.SIZE_1'
    end
    object zagruzkaSIZE_2: TIntegerField
      FieldName = 'SIZE_2'
      Origin = 'ZAGRUZKA.SIZE_2'
    end
    object zagruzkaSIZE_3: TIntegerField
      FieldName = 'SIZE_3'
      Origin = 'ZAGRUZKA.SIZE_3'
    end
    object zagruzkaPACK_KOL: TIntegerField
      FieldName = 'PACK_KOL'
      Origin = 'ZAGRUZKA.PACK_KOL'
    end
    object zagruzkaSCOMMENT: TIBStringField
      FieldName = 'SCOMMENT'
      Origin = 'ZAGRUZKA.SCOMMENT'
      Size = 256
    end
    object zagruzkaDATECAME: TDateTimeField
      FieldName = 'DATECAME'
      Origin = 'ZAGRUZKA.DATECAME'
    end
    object zagruzkaPARTBARCODE: TIBStringField
      FieldName = 'PARTBARCODE'
      Origin = 'ZAGRUZKA.PARTBARCODE'
    end
    object zagruzkaFLYBARCODE: TIBStringField
      FieldName = 'FLYBARCODE'
      Origin = 'ZAGRUZKA.FLYBARCODE'
    end
    object zagruzkaCLIENT_ID1: TIntegerField
      FieldName = 'CLIENT_ID1'
      Origin = 'CLIENTS.CLIENT_ID'
      Required = True
    end
  end
  object updtrans: TIBStoredProc
    Database = mdb
    Transaction = tran
    StoredProcName = 'UPDATE_TRANSPORT'
    Left = 199
    Top = 150
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TRANS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRANSNO'
        ParamType = ptInput
      end>
  end
  object transport: TIBQuery
    Database = mdb
    Transaction = tran
    SQL.Strings = (
      'select * from transport')
    Left = 227
    Top = 82
    object transportTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'TRANSPORT.TRANS_ID'
    end
    object transportTRANSNO: TIntegerField
      FieldName = 'TRANSNO'
      Origin = 'TRANSPORT.TRANSNO'
    end
    object transportTRANSINFO: TIBStringField
      FieldName = 'TRANSINFO'
      Origin = 'TRANSPORT.TRANSINFO'
    end
    object transportTRT_ID: TIntegerField
      FieldName = 'TRT_ID'
      Origin = 'TRANSPORT.TRT_ID'
    end
    object transportTDATE: TDateTimeField
      FieldName = 'TDATE'
      Origin = 'TRANSPORT.TDATE'
    end
    object transportTRANSCAME: TDateTimeField
      FieldName = 'TRANSCAME'
      Origin = 'TRANSPORT.TRANSCAME'
    end
    object transportTRANSOUT: TDateTimeField
      FieldName = 'TRANSOUT'
      Origin = 'TRANSPORT.TRANSOUT'
    end
    object transportTRANSSUMM_1: TIntegerField
      FieldName = 'TRANSSUMM_1'
      Origin = 'TRANSPORT.TRANSSUMM_1'
    end
    object transportTRANSSUMM: TIntegerField
      FieldName = 'TRANSSUMM'
      Origin = 'TRANSPORT.TRANSSUMM'
    end
    object transportOPERSTATE: TIntegerField
      FieldName = 'OPERSTATE'
      Origin = 'TRANSPORT.OPERSTATE'
    end
    object transportPOSCOUNT: TIntegerField
      FieldName = 'POSCOUNT'
      Origin = 'TRANSPORT.POSCOUNT'
    end
    object transportPOSWEIGHT: TFloatField
      FieldName = 'POSWEIGHT'
      Origin = 'TRANSPORT.POSWEIGHT'
    end
    object transportPOSVOLUME: TFloatField
      FieldName = 'POSVOLUME'
      Origin = 'TRANSPORT.POSVOLUME'
    end
    object transportSCOMMENT: TIBStringField
      FieldName = 'SCOMMENT'
      Origin = 'TRANSPORT.SCOMMENT'
      Size = 64
    end
    object transportSOURCEDIV_ID: TIntegerField
      FieldName = 'SOURCEDIV_ID'
      Origin = 'TRANSPORT.SOURCEDIV_ID'
    end
    object transportOUTER_ID: TIntegerField
      FieldName = 'OUTER_ID'
      Origin = 'TRANSPORT.OUTER_ID'
    end
    object transportGOS_NO: TIBStringField
      FieldName = 'GOS_NO'
      Origin = 'TRANSPORT.GOS_NO'
    end
    object transportGOS_NO1: TIBStringField
      FieldName = 'GOS_NO1'
      Origin = 'TRANSPORT.GOS_NO1'
    end
    object transportCNV_ID: TIntegerField
      FieldName = 'CNV_ID'
      Origin = 'TRANSPORT.CNV_ID'
    end
    object transportPOSCAME: TIntegerField
      FieldName = 'POSCAME'
      Origin = 'TRANSPORT.POSCAME'
    end
    object transportPOSWEIGHTCAME: TFloatField
      FieldName = 'POSWEIGHTCAME'
      Origin = 'TRANSPORT.POSWEIGHTCAME'
    end
    object transportPOSVOLUMECAME: TFloatField
      FieldName = 'POSVOLUMECAME'
      Origin = 'TRANSPORT.POSVOLUMECAME'
    end
    object transportPOSSEND: TIntegerField
      FieldName = 'POSSEND'
      Origin = 'TRANSPORT.POSSEND'
    end
  end
  object mdb: TIBDatabase
    DatabaseName = 'D:\Ibag\packet\packet\packet.gdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = tran
    SQLDialect = 1
    Left = 22
    Top = 8
  end
  object packing: TIBQuery
    Database = mdb
    Transaction = tran
    SQL.Strings = (
      
        'select  p.*, pt.packtype_id from packing p, packtypes pt where p' +
        't.outerid=p.packtype_id')
    Left = 23
    Top = 44
    object packingPACK_ID: TIntegerField
      FieldName = 'PACK_ID'
      Origin = 'PACKING.PACK_ID'
      Required = True
    end
    object packingPACKTYPE_ID: TIntegerField
      FieldName = 'PACKTYPE_ID'
      Origin = 'PACKING.PACKTYPE_ID'
    end
    object packingBAG_ID: TIntegerField
      FieldName = 'BAG_ID'
      Origin = 'PACKING.BAG_ID'
    end
    object packingPACKKOL: TIntegerField
      FieldName = 'PACKKOL'
      Origin = 'PACKING.PACKKOL'
    end
    object packingINSDATE: TDateTimeField
      FieldName = 'INSDATE'
      Origin = 'PACKING.INSDATE'
    end
    object packingOPERSTATE: TSmallintField
      FieldName = 'OPERSTATE'
      Origin = 'PACKING.OPERSTATE'
    end
    object packingCNV_ID: TIntegerField
      FieldName = 'CNV_ID'
      Origin = 'PACKING.CNV_ID'
    end
    object packingBAG_OUTERID: TIntegerField
      FieldName = 'BAG_OUTERID'
      Origin = 'PACKING.BAG_OUTERID'
    end
    object packingPACKSUM: TFloatField
      FieldName = 'PACKSUM'
      Origin = 'PACKING.PACKSUM'
    end
    object packingSCOMMENT: TIBStringField
      FieldName = 'SCOMMENT'
      Origin = 'PACKING.SCOMMENT'
      Size = 64
    end
    object packingOUTER_ID: TIntegerField
      FieldName = 'OUTER_ID'
      Origin = 'PACKING.OUTER_ID'
    end
    object packingUNITTYPE: TIntegerField
      FieldName = 'UNITTYPE'
      Origin = 'PACKING.UNITTYPE'
    end
    object packingDIV_ID: TSmallintField
      FieldName = 'DIV_ID'
      Origin = 'PACKING.DIV_ID'
    end
    object packingPACKWEIGHT: TIntegerField
      FieldName = 'PACKWEIGHT'
      Origin = 'PACKING.PACKWEIGHT'
    end
    object packingPACKTYPE_ID1: TIntegerField
      FieldName = 'PACKTYPE_ID1'
      Origin = 'PACKTYPES.PACKTYPE_ID'
      Required = True
    end
  end
  object ActionList1: TActionList
    Left = 574
    Top = 75
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
    end
    object importfem: TAction
      Caption = 'importfem'
      OnExecute = importfemExecute
    end
    object importfromexls: TAction
      Caption = 'importfromexls'
      OnExecute = importfromexlsExecute
    end
  end
  object Unj: TUnARJ
    TranslateOemChar = False
    CpuType = cptAuto
    Left = 33
    Top = 189
  end
  object impcnv: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'ADD_CNVLIST'
    Left = 12
    Top = 222
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CNV_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CNVSTR'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CDATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRANS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNVRC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRANSNO'
        ParamType = ptInput
      end>
  end
  object importptype: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_PACKTYPE_1'
    Left = 100
    Top = 231
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
      end>
  end
  object importclients: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_CLIENTS_1'
    Left = 105
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENT_PHONE'
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
        DataType = ftDateTime
        Name = 'CREATEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CREATEDIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLOUT_ID'
        ParamType = ptInput
      end>
  end
  object imppack: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_PACKING_1'
    Left = 184
    Top = 215
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PACK_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKKOL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'INSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'OPERSTATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAG_OUTERID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKSUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SCOMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UNITTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLY_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'XCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INSIDE_NUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TM_ID'
        ParamType = ptInput
      end>
  end
  object imptm: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_TRADEMARKS'
    Left = 228
    Top = 241
    ParamData = <
      item
        DataType = ftString
        Name = 'TMNAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end>
  end
  object mtov: TQuery
    SQL.Strings = (
      'select * from mtov')
    Left = 154
    Top = 284
  end
  object clients_1: TQuery
    SQL.Strings = (
      'select  * from mtrs')
    Left = 94
    Top = 275
  end
  object mtoz: TQuery
    SQL.Strings = (
      'select * from mtoz')
    Left = 184
    Top = 283
  end
  object mwin: TQuery
    SQL.Strings = (
      'select * from mwin')
    Left = 217
    Top = 281
  end
  object Query_1: TQuery
    SQL.Strings = (
      
        'select b.*, c.famr as famr, c.namr as namr, c.otc as otc, c.ntwn' +
        ' as ntwn  from mreg b, mtrs c   where b.ntrs=c.ntrs ')
    Left = 59
    Top = 274
  end
  object Query2: TQuery
    SQL.Strings = (
      'select  * from mvan')
    Left = 21
    Top = 271
  end
  object Query3: TQuery
    SQL.Strings = (
      'select sum(wsit), count(*) from mreg')
    Left = 22
    Top = 303
  end
  object imptrans: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_TRANSPORT_FEM'
    Left = 60
    Top = 234
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NEW_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'NEW_TRANSNO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'TRANS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRANSNO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TRANSINFO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TRANSCAME'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TRANSOUT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRANSSUMM_1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRANSSUMM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OPERSTATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'POSCOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'POSWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'POSVOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SCOMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SOURCEDIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GOS_NO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GOS_NO1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'POSCAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'POSWEIGHTCAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'POSVOLUMECAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'POSSEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'posweight_fact'
        ParamType = ptInput
      end>
  end
  object destdiv: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    Left = 94
    Top = 334
  end
  object impzag: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_ZAGRUZKA'
    Left = 152
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ZAG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BAGGETDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRANSNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRANS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OPERSTATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTERTRANS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TRANSIT_NUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BAGNUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BAGNUM_X'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FULLBAGNUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SHORTBAGNUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INSIDE_NUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUSTTYPE_ID'
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
        Name = 'BARCODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TARIF_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DELIVER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMDEST'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUMM_PACK'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUMM_AGENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUMM_EXTRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUMM_AIRPORT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUMM_STRAF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUMM_AWB'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUMM_ADDTRANS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUMM_ADD'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTALSUMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMDEPT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMPAIED'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SOURCEDIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'DESTDIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IBTFLY'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IBTFLYNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAGPOSCOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BAGOUTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAGTRANSNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PART_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TARIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCENKA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STRAHOVKA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BAGNUM1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TRANSPREFIX'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SIZE_1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SIZE_2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SIZE_3'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACK_KOL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SCOMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATECAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARTBARCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FLYBARCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WEIGHT_FACT'
        ParamType = ptInput
      end>
  end
  object importptype1: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_PACKTYPE'
    Left = 164
    Top = 345
  end
  object imptm1: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_TRADEMARKS1'
    Left = 230
    Top = 347
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'TMNAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end>
  end
  object imppack2: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'IMPORT_PACKING_2'
    Left = 276
    Top = 353
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PACK_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKKOL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'INSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'OPERSTATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAG_OUTERID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PACKSUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SCOMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UNITTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLY_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'XCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INSIDE_NUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TM_ID'
        ParamType = ptInput
      end>
  end
  object refreshtrans: TIBStoredProc
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    StoredProcName = 'RECULC_CNV'
    Left = 330
    Top = 363
  end
end
