object oemcodevocb: Toemcodevocb
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  ClientHeight = 383
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 606
    Height = 383
    ActivePage = pg1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object pg1: TTabSheet
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object Label6: TLabel
        Left = 10
        Top = 193
        Width = 151
        Height = 13
        Caption = #1053#1055' ('#1085#1077' '#1087#1077#1088#1077#1085#1086#1089#1080#1084#1099#1077' '#1087#1086#1079#1080#1094#1080#1080')'
      end
      object Label2: TLabel
        Left = 12
        Top = 0
        Width = 86
        Height = 13
        Caption = #1054#1076#1077#1078#1076#1072' + '#1086#1073#1091#1074#1100
      end
      object Label3: TLabel
        Left = 308
        Top = 1
        Width = 151
        Height = 13
        Caption = #1054#1076#1077#1078#1076#1072' + '#1086#1073#1091#1074#1100' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1077
      end
      object DBGrid9: TDBGrid
        Left = 10
        Top = 235
        Width = 240
        Height = 120
        DataSource = dsOemcode3
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator4: TDBNavigator
        Left = 10
        Top = 210
        Width = 240
        Height = 25
        DataSource = dsOemcode3
        TabOrder = 1
      end
      object DBGrid7: TDBGrid
        Left = 10
        Top = 41
        Width = 243
        Height = 136
        DataSource = dsOemcode1
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator2: TDBNavigator
        Left = 10
        Top = 15
        Width = 240
        Height = 25
        DataSource = dsOemcode1
        TabOrder = 3
      end
      object DBNavigator3: TDBNavigator
        Left = 306
        Top = 20
        Width = 240
        Height = 25
        DataSource = dsOemcode2
        TabOrder = 4
      end
      object DBGrid8: TDBGrid
        Left = 306
        Top = 44
        Width = 240
        Height = 133
        DataSource = dsOemcode2
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
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
    StoreDefs = True
    TableName = 'OEMCODE2'
    Left = 304
    Top = 296
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
    StoreDefs = True
    TableName = 'OEMCODE1'
    Left = 348
    Top = 294
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
    StoreDefs = True
    TableName = 'OEMCODE3'
    Left = 404
    Top = 294
  end
  object dsOemcode3: TDataSource
    DataSet = oemcode3
    Left = 420
    Top = 330
  end
  object dsOemcode1: TDataSource
    DataSet = oemcode1
    Left = 352
    Top = 332
  end
  object dsOemcode2: TDataSource
    DataSet = oemcode2
    Left = 306
    Top = 332
  end
end
