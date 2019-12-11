object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 625
  Width = 829
  object transtype: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      
        'select trt_id , tname from transtype where trt_id<>3 order by tr' +
        't_id')
    Left = 263
    Top = 7
    object transtypeTRT_ID: TIntegerField
      FieldName = 'TRT_ID'
      Origin = 'TRANSTYPE.TRT_ID'
      Required = True
    end
    object transtypeTNAME: TIBStringField
      FieldName = 'TNAME'
      Origin = 'TRANSTYPE.TNAME'
      Size = 10
    end
  end
  object dstrans: TDataSource
    DataSet = transtype
    Left = 146
    Top = 60
  end
  object transport: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      
        'select * from transport where operstate<>-1 order by trans_id de' +
        'sc')
    Left = 630
    Top = 8
  end
  object dstransport: TDataSource
    DataSet = transport
    Left = 629
    Top = 53
  end
  object towns: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from towns')
    Left = 447
    Top = 7
  end
  object dstowns: TDataSource
    DataSet = towns
    Left = 450
    Top = 51
  end
  object IBDatabase2: TIBDatabase
    Connected = True
    DatabaseName = 'C:\WORK\DOBRO\DEC_BD\database\DECLARANT_U.IB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=UNICODE_FSS')
    LoginPrompt = False
    DefaultTransaction = IBTransaction2
    SQLDialect = 1
    Left = 758
    Top = 228
  end
  object IBTransaction2: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase2
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommitRetaining
    Left = 757
    Top = 179
  end
  object clientset: TIBQuery
    Database = IBDatabase2
    Transaction = clienparttran
    SQL.Strings = (
      'select *  from clientsettings')
    Left = 272
    Top = 64
  end
  object customs: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from customs order by cust_id desc')
    Left = 356
    Top = 6
  end
  object delivers: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select  * from DELIVERTYPES')
    Left = 315
    Top = 5
  end
  object newpos: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'NEWZAGPOS'
    Left = 308
    Top = 259
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRT_ID'
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
        Name = 'CUST_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WEIGH'
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
        Name = 'ibtfly'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'flyno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'part_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ok'
        ParamType = ptOutput
      end>
  end
  object chcl: TIBStoredProc
    Database = IBDatabase2
    Transaction = clienparttran
    StoredProcName = 'CHANGECLIENTPROP'
    Left = 306
    Top = 179
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
        Name = 'flok'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'oldxcode'
        ParamType = ptInput
      end>
  end
  object custtype: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from CUSTOMS')
    Left = 215
    Top = 6
  end
  object deltypes: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from DELIVERTYPES')
    Left = 165
    Top = 5
  end
  object timer: TTimer
    Enabled = False
    Interval = 1000000
    OnTimer = timerTimer
    Left = 14
    Top = 11
  end
  object newpack: TIBStoredProc
    Database = IBDatabase2
    Transaction = price_tran
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
  object newfly: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'NEWFLY'
    Left = 359
    Top = 260
    ParamData = <
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
        DataType = ftInteger
        Name = 'FLYNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ok'
        ParamType = ptOutput
      end>
  end
  object addpart: TIBStoredProc
    Database = IBDatabase2
    Transaction = clienparttran
    StoredProcName = 'ADDPART'
    Left = 224
    Top = 177
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NEW_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TARIF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TARRIFF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TOWN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUST_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DEL_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'XCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AWB'
        ParamType = ptInput
      end>
  end
  object unittypes: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from unittypes order by orders')
    Left = 542
    Top = 8
  end
  object addpacking: TIBStoredProc
    Database = IBDatabase2
    Transaction = price_tran
    StoredProcName = 'ADD_PACKING'
    Left = 507
    Top = 175
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKKOL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UNITTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SCOMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKING_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OPERTYPE'
        ParamType = ptInput
      end>
  end
  object changepartsumm: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'CHANGE_PARTSUMM'
    Left = 425
    Top = 260
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PART_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTALSUMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMPAIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STRAHOVKA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TARRIFF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TARIF_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUSTTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'changetariff'
        ParamType = ptInput
      end>
  end
  object delpos: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'DELZAGPOS'
    Left = 357
    Top = 321
  end
  object delpart: TIBStoredProc
    Database = IBDatabase2
    Transaction = clienparttran
    StoredProcName = 'DELPART'
    Left = 265
    Top = 177
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FLOK'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PART_ID'
        ParamType = ptInput
      end>
  end
  object sysenter: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from sysenter')
    Left = 493
    Top = 6
  end
  object toserver: TIBQuery
    Database = IBDatabase2
    Transaction = toservertran
    Left = 717
    Top = 440
  end
  object changebagsumm: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'CAHGE_BAGSUMM'
    Left = 426
    Top = 321
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FLOK'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ZAG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLDWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLDVOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEWWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEWVOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TRANS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TARIFF_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TARIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLDSUMMDEST'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PART_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INSIDENUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptInput
      end>
  end
  object dstariff: TDataSource
    DataSet = ttariff
    Left = 678
    Top = 52
  end
  object ttariff: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      
        'select  tarif_id, tariftitle || '#39' ['#39'|| price ||'#39']'#39' as tariftitle' +
        ' ,price, culctypename, tariftitle as tariftitle1 from ttariff,cu' +
        'lctypes where culctype=ct_id order by tariftitle')
    Left = 676
    Top = 7
  end
  object price_tran: TIBTransaction
    DefaultDatabase = IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 407
    Top = 129
  end
  object toservertran: TIBTransaction
    DefaultDatabase = IBDatabase2
    Left = 656
    Top = 434
  end
  object flylist: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      
        'select '#39#1042#1077#1076#1086#1084#1086#1089#1090#1100' '#8470' '#39' || '#39' [ '#39' || flyno || '#39' ]'#39'  as flyname, ibt' +
        'fly_id,  '#39'[ '#39' || d.prefix || '#39' ] - '#39' || flyno, flypos, flyweight' +
        ', flyvolume from flylist f,  div d, transtype tt where f.trt_id=' +
        'tt.trt_id and operstate=1 and d.div_id=f.div_id')
    Left = 587
    Top = 9
  end
  object IBDatabase1: TIBDatabase
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = packtran
    SQLDialect = 1
    Left = 22
    Top = 112
  end
  object proc: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'INSERT_ZAGRUZKA'
    Left = 54
    Top = 161
    ParamData = <
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
        Name = 'pack_kol'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SCOMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datecame'
        ParamType = ptInput
      end>
  end
  object impcl: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'INSERT_CLIENTS'
    Left = 19
    Top = 203
    ParamData = <
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
  object cleardata: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'deletedata'
    Left = 93
    Top = 112
  end
  object inspt: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'insert_packtypes'
    Left = 56
    Top = 205
    ParamData = <
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
  object packtran: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 21
    Top = 253
  end
  object clienparttran: TIBTransaction
    DefaultDatabase = IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 206
    Top = 142
  end
  object regions: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from regions')
    Left = 399
    Top = 6
  end
  object chpack: TIBStoredProc
    Database = IBDatabase2
    Transaction = price_tran
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
  object instar: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'INSERT_TARIF'
    Left = 93
    Top = 206
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TARIF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CULCTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TARIFTITLE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIV_ID'
        ParamType = ptInput
      end>
  end
  object inspacking: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'INSERT_PACKING'
    Left = 142
    Top = 206
    ParamData = <
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
      end>
  end
  object imppart: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'INSERT_PARTLIST'
    Left = 18
    Top = 158
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PART_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTALSUMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMPAIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMDEPT'
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
        DataType = ftFloat
        Name = 'SUMMPACK'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD4'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD6'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD7'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD8'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD9'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMSKIDKA'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CREATEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TARIF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TARRIFF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TOWN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUST_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DEL_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AWB'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'XCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PARTPOSCOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTVOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TOWN_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'scomment'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'flyno'
        ParamType = ptInput
      end>
  end
  object impfly: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'INSERT_FLYLIST'
    Left = 143
    Top = 164
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TRT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLYNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLYPOS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLYWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLYVOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FLYCOMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OPERSTATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATEOPEN'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATECLOSE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IBTFLY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end>
  end
  object impcnv: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'INSERT_CNVLIST'
    Left = 91
    Top = 163
    ParamData = <
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
  object add_cnvlist: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'ADD_CNVLIST'
    Left = 26
    Top = 418
    ParamData = <
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
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object import_fly: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'IMPORT_FLY'
    Left = 26
    Top = 467
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TRT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLYNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLYPOS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLYWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLYVOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FLYCOMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OPERSTATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATEOPEN'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATECLOSE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IBTFLY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'nflyno'
        ParamType = ptOutput
      end>
  end
  object import_clients: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'IMPORT_CLIENTS'
    Left = 90
    Top = 419
    ParamData = <
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
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object import_tariff: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'IMPORT_TARIFF'
    Left = 90
    Top = 467
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TARIF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CULCTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TARIFTITLE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object IMPORT_PTYPE: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'IMPORT_PACKTYPE'
    Left = 171
    Top = 420
    ParamData = <
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
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object import_part: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'IMPORT_PARTLIST'
    Left = 171
    Top = 470
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PART_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FLY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTALSUMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMPAIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMDEPT'
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
        DataType = ftFloat
        Name = 'SUMMPACK'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD4'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD6'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD7'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD8'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMADD9'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SUMMSKIDKA'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CREATEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TARIF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TARRIFF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TOWN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUST_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DEL_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AWB'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'XCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PARTPOSCOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTWEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTVOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TOWN_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SCOMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'flyno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object import_pack: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'IMPORT_PACKING'
    Left = 324
    Top = 467
    ParamData = <
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
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object del_cnv: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'DEL_CNV'
    Left = 244
    Top = 418
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CNV_ID'
        ParamType = ptInput
      end>
  end
  object dsflylist: TDataSource
    DataSet = flylist
    Left = 580
    Top = 63
  end
  object sklad: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from div')
    Left = 730
    Top = 7
    object skladDIV_ID: TIntegerField
      FieldName = 'DIV_ID'
      Origin = 'DIV.DIV_ID'
      Required = True
    end
    object skladDIVNAME: TIBStringField
      FieldName = 'DIVNAME'
      Origin = 'DIV.DIVNAME'
      Size = 30
    end
    object skladPREFIX: TIBStringField
      FieldName = 'PREFIX'
      Origin = 'DIV.PREFIX'
      Size = 10
    end
  end
  object zagtran: TIBTransaction
    DefaultDatabase = IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 499
    Top = 381
  end
  object imptrans: TIBStoredProc
    Database = IBDatabase1
    Transaction = packtran
    StoredProcName = 'INSERT_TRANSPORT'
    Left = 137
    Top = 279
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
        Name = 'DESTDIV_ID'
        ParamType = ptInput
      end>
  end
  object choper: TIBStoredProc
    Database = IBDatabase2
    Transaction = uploadtran
    StoredProcName = 'CHANGEOPERSTATE'
    Left = 671
    Top = 369
  end
  object uploadtran: TIBTransaction
    DefaultDatabase = IBDatabase2
    Left = 726
    Top = 336
  end
  object checkbarcode: TIBQuery
    Database = IBDatabase2
    Transaction = uploadtran
    SQL.Strings = (
      
        'select zag_id from zagruzka where barcode=:barcode and outertran' +
        's_id=:trans_id and operstate=0')
    Left = 585
    Top = 375
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
  object imptrans1: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'IMPORT_TRANSPORT'
    Left = 313
    Top = 418
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
        Name = 'NEW_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'NEW_TRANSNO'
        ParamType = ptOutput
      end>
  end
  object countries: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from countries')
    Left = 317
    Top = 65
  end
  object neword: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'NEW_ORDER'
    Left = 543
    Top = 289
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORDNUMBER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OUTNUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUST_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CREATEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'trans_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cnf_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'send_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'deltaw'
        ParamType = ptInput
      end>
  end
  object clients: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      
        'select * from clients where clout_id=-1 and client_id<>-1 and st' +
        'atus=1')
    Left = 631
    Top = 179
  end
  object dscl: TDataSource
    DataSet = clients
    Left = 631
    Top = 227
  end
  object dsus: TDataSource
    DataSet = users
    Left = 35
    Top = 57
  end
  object new_ot: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'NEW_OT_ITEMS'
    Left = 540
    Top = 230
  end
  object import_zag: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'IMPORT_ZAGRUZKA1'
    Left = 228
    Top = 477
    ParamData = <
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
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object newzaklpos: TIBStoredProc
    Database = IBDatabase2
    Transaction = IBTransaction2
    StoredProcName = 'NEWPZAKL'
    Left = 470
    Top = 123
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
      end
      item
        DataType = ftInteger
        Name = 'CUST_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OEMCODE_LONG'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UNITTYPE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ZAKL_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ZAKL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ZAKL_DOG'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OPERTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PACKTYPE_ID'
        ParamType = ptInput
      end>
  end
  object config: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from configurations where block<>1')
    Left = 96
    Top = 8
  end
  object users: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    DataSource = dsconfig
    SQL.Strings = (
      'select u.*, c.cnf_id from users u, configurations c, cnfusers cu'
      'where u.user_id<>0 and cu.user_id=u.user_id and c.cnf_id=:cnf_id'
      'and cu.cnf_id=:cnf_id and u.userstatus=0')
    Left = 232
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnf_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnf_id'
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
      Size = 30
    end
    object usersUSERPASS: TIBStringField
      FieldName = 'USERPASS'
      Origin = 'USERS.USERPASS'
      Size = 30
    end
    object usersUSERLEVELS: TIntegerField
      FieldName = 'USERLEVELS'
      Origin = 'USERS.USERLEVELS'
    end
    object usersUSERSTATUS: TSmallintField
      FieldName = 'USERSTATUS'
      Origin = 'USERS.USERSTATUS'
    end
    object usersCNF_ID: TIntegerField
      FieldName = 'CNF_ID'
      Origin = 'CONFIGURATIONS.CNF_ID'
    end
  end
  object dsconfig: TDataSource
    DataSet = config
    Left = 96
    Top = 56
  end
  object divlist: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from div')
    Left = 480
    Top = 496
  end
  object dsdiv: TDataSource
    DataSet = divlist
    Left = 520
    Top = 496
  end
  object cust: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    SQL.Strings = (
      'select * from clients where clout_id=0')
    Left = 671
    Top = 179
  end
  object dscust: TDataSource
    DataSet = cust
    Left = 671
    Top = 227
  end
  object usersw: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    DataSource = dsconfig
    SQL.Strings = (
      'select u.*, c.cnf_id from users u, configurations c, cnfusers cu'
      'where u.user_id<>0 and cu.user_id=u.user_id and c.cnf_id=:cnf_id'
      'and cu.cnf_id=:cnf_id and u.userstatus=0')
    Left = 236
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnf_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnf_id'
        ParamType = ptUnknown
      end>
  end
  object IBSQL1: TIBSQL
    Database = IBDatabase2
    SQL.Strings = (
      'update sysenter set transoutdiv=transoutdiv-1')
    Transaction = IBTransaction2
    Left = 600
    Top = 552
  end
end
