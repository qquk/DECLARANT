object addzakl: Taddzakl
  Left = 508
  Top = 342
  Caption = #1055#1086#1076#1089#1090#1072#1085#1086#1074#1082#1072
  ClientHeight = 250
  ClientWidth = 589
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 589
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBText1: TDBText
      Left = 7
      Top = 5
      Width = 490
      Height = 17
      DataField = 'CLIENT_NAME'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 51
    Width = 589
    Height = 199
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 589
      Height = 199
      Align = alClient
      DataSource = DataSource1
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PACKTYPENAME'
          Width = 258
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'OEMCODE_LONG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UNITTITLE'
          Width = 42
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PACKTYPEPRICE1'
          Width = 42
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ZAKL_NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Width = 127
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 318
  end
  object IBQuery1: TIBQuery
    Database = dm.IBDatabase2
    Transaction = dm.IBTransaction2
    SQL.Strings = (
      
        'select pt.*, u.unittitle, c.client_name  from clients c, packtyp' +
        'es pt, unittypes u where ptype=4 and pt.unittype_id=u.unttype an' +
        'd c.client_id=pt.cust_id')
    Left = 354
    Top = 1
    object IBQuery1PACKTYPE_ID: TIntegerField
      FieldName = 'PACKTYPE_ID'
      Origin = 'PACKTYPES.PACKTYPE_ID'
      Required = True
    end
    object IBQuery1PUNIT: TSmallintField
      FieldName = 'PUNIT'
      Origin = 'PACKTYPES.PUNIT'
    end
    object IBQuery1SUNIT: TIBStringField
      FieldName = 'SUNIT'
      Origin = 'PACKTYPES.SUNIT'
      Size = 5
    end
    object IBQuery1PTYPE: TSmallintField
      FieldName = 'PTYPE'
      Origin = 'PACKTYPES.PTYPE'
    end
    object IBQuery1OUTERID: TIntegerField
      FieldName = 'OUTERID'
      Origin = 'PACKTYPES.OUTERID'
    end
    object IBQuery1CREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
      Origin = 'PACKTYPES.CREATEDATE'
    end
    object IBQuery1LUPDATE: TDateTimeField
      FieldName = 'LUPDATE'
      Origin = 'PACKTYPES.LUPDATE'
    end
    object IBQuery1OEMCODE: TIBStringField
      FieldName = 'OEMCODE'
      Origin = 'PACKTYPES.OEMCODE'
    end
    object IBQuery1PRNTORDER: TIntegerField
      FieldName = 'PRNTORDER'
      Origin = 'PACKTYPES.PRNTORDER'
    end
    object IBQuery1CN_ID: TIntegerField
      FieldName = 'CN_ID'
      Origin = 'PACKTYPES.CN_ID'
    end
    object IBQuery1PACKPRICE: TFloatField
      FieldName = 'PACKPRICE'
      Origin = 'PACKTYPES.PACKPRICE'
    end
    object IBQuery1PACKTYPEPRICE1: TFloatField
      FieldName = 'PACKTYPEPRICE1'
      Origin = 'PACKTYPES.PACKTYPEPRICE1'
    end
    object IBQuery1PACKTYPEPRICE2: TFloatField
      FieldName = 'PACKTYPEPRICE2'
      Origin = 'PACKTYPES.PACKTYPEPRICE2'
    end
    object IBQuery1MAYSALE: TSmallintField
      FieldName = 'MAYSALE'
      Origin = 'PACKTYPES.MAYSALE'
    end
    object IBQuery1GROUPID: TIntegerField
      FieldName = 'GROUPID'
      Origin = 'PACKTYPES.GROUPID'
    end
    object IBQuery1GOODK_ID: TIntegerField
      FieldName = 'GOODK_ID'
      Origin = 'PACKTYPES.GOODK_ID'
    end
    object IBQuery1FAST_ID: TIntegerField
      FieldName = 'FAST_ID'
      Origin = 'PACKTYPES.FAST_ID'
    end
    object IBQuery1BARCODE: TIBStringField
      FieldName = 'BARCODE'
      Origin = 'PACKTYPES.BARCODE'
      Size = 25
    end
    object IBQuery1PACKTYPENAME: TIBStringField
      FieldName = 'PACKTYPENAME'
      Origin = 'PACKTYPES.PACKTYPENAME'
      Size = 100
    end
    object IBQuery1PTITLE: TIBStringField
      FieldName = 'PTITLE'
      Origin = 'PACKTYPES.PTITLE'
      Size = 100
    end
    object IBQuery1CUST_ID: TIntegerField
      FieldName = 'CUST_ID'
      Origin = 'PACKTYPES.CUST_ID'
    end
    object IBQuery1UNITTYPE_ID: TSmallintField
      FieldName = 'UNITTYPE_ID'
      Origin = 'PACKTYPES.UNITTYPE_ID'
    end
    object IBQuery1OEMCODE_LONG: TIBStringField
      FieldName = 'OEMCODE_LONG'
      Origin = 'PACKTYPES.OEMCODE_LONG'
      Size = 12
    end
    object IBQuery1ZAKL_NAME: TIBStringField
      FieldName = 'ZAKL_NAME'
      Origin = 'PACKTYPES.ZAKL_NAME'
      Size = 30
    end
    object IBQuery1ZAKL_DATE: TDateTimeField
      FieldName = 'ZAKL_DATE'
      Origin = 'PACKTYPES.ZAKL_DATE'
    end
    object IBQuery1ZAKL_DOG: TIBStringField
      FieldName = 'ZAKL_DOG'
      Origin = 'PACKTYPES.ZAKL_DOG'
      Size = 10
    end
    object IBQuery1UNITTITLE: TIBStringField
      FieldName = 'UNITTITLE'
      Origin = 'UNITTYPES.UNITTITLE'
      Size = 5
    end
    object IBQuery1CLIENT_NAME: TIBStringField
      FieldName = 'CLIENT_NAME'
      Origin = 'CLIENTS.CLIENT_NAME'
      Size = 64
    end
  end
  object ActionManager1: TActionManager
    Left = 421
    Top = 7
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
end
