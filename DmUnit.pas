unit dmunit;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery, IBDatabase, IBStoredProc,
  imgstartunit,dialogs, ExtCtrls, inifiles,Windows, BDE, Registry, IBSQL;
  //const INI_NAME='att_oae.ini';

type
  Tdm = class(TDataModule)
    transtype: TIBQuery;
    dstrans: TDataSource;
    transport: TIBQuery;
    dstransport: TDataSource;
    towns: TIBQuery;
    dstowns: TDataSource;
    IBDatabase2: TIBDatabase;
    IBTransaction2: TIBTransaction;
    clientset: TIBQuery;
    customs: TIBQuery;
    delivers: TIBQuery;
    newpos: TIBStoredProc;
    chcl: TIBStoredProc;
    custtype: TIBQuery;
    deltypes: TIBQuery;
    timer: TTimer;
    newpack: TIBStoredProc;
    newfly: TIBStoredProc;
    addpart: TIBStoredProc;
    unittypes: TIBQuery;
    addpacking: TIBStoredProc;
    changepartsumm: TIBStoredProc;
    delpos: TIBStoredProc;
    delpart: TIBStoredProc;
    sysenter: TIBQuery;
    toserver: TIBQuery;
    changebagsumm: TIBStoredProc;
    dstariff: TDataSource;
    ttariff: TIBQuery;
    price_tran: TIBTransaction;
    toservertran: TIBTransaction;
    flylist: TIBQuery;
    IBDatabase1: TIBDatabase;
    proc: TIBStoredProc;
    impcl: TIBStoredProc;
    cleardata: TIBStoredProc;
    inspt: TIBStoredProc;
    packtran: TIBTransaction;
    clienparttran: TIBTransaction;
    regions: TIBQuery;
    chpack: TIBStoredProc;
    instar: TIBStoredProc;
    inspacking: TIBStoredProc;
    imppart: TIBStoredProc;
    impfly: TIBStoredProc;
    impcnv: TIBStoredProc;
    add_cnvlist: TIBStoredProc;
    import_fly: TIBStoredProc;
    import_clients: TIBStoredProc;
    import_tariff: TIBStoredProc;
    IMPORT_PTYPE: TIBStoredProc;
    import_part: TIBStoredProc;
    import_pack: TIBStoredProc;
    del_cnv: TIBStoredProc;
    dsflylist: TDataSource;
    sklad: TIBQuery;
    zagtran: TIBTransaction;
    imptrans: TIBStoredProc;
    choper: TIBStoredProc;
    uploadtran: TIBTransaction;
    checkbarcode: TIBQuery;
    skladDIV_ID: TIntegerField;
    skladDIVNAME: TIBStringField;
    skladPREFIX: TIBStringField;
    transtypeTRT_ID: TIntegerField;
    transtypeTNAME: TIBStringField;
    imptrans1: TIBStoredProc;
    countries: TIBQuery;
    neword: TIBStoredProc;
    clients: TIBQuery;
    dscl: TDataSource;
    dsus: TDataSource;
    new_ot: TIBStoredProc;
    import_zag: TIBStoredProc;
    newzaklpos: TIBStoredProc;
    config: TIBQuery;
    users: TIBQuery;
    dsconfig: TDataSource;
    divlist: TIBQuery;
    dsdiv: TDataSource;
    cust: TIBQuery;
    dscust: TDataSource;
    usersUSER_ID: TIntegerField;
    usersUSERNAME: TIBStringField;
    usersUSERPASS: TIBStringField;
    usersUSERLEVELS: TIntegerField;
    usersUSERSTATUS: TSmallintField;
    usersCNF_ID: TIntegerField;
    usersw: TIBQuery;
    IBSQL1: TIBSQL;
    procedure DataModuleCreate(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure dsconfigDataChange(Sender: TObject; Field: TField);
    procedure dsconfigStateChange(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

  procedure InstallBde(path: string);
var
  dm: Tdm;
  access: boolean;
  user_id_global: integer;
  cnf_id_global: integer;
  dataforder,bdeforder: string;
  cur_imp_transport_vol: double;

implementation

uses MainUnit, EnterUnit;




{$R *.dfm}

procedure InstallBde(PATH: string);
const
  Bor: string = 'SOFTWARE\Borland';
var
  a: TRegistry;
  BPath: string;
begin
  BPath:=PATH;
  a := TRegistry.Create;
  with a do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey(Bor + '\Database Engine', True);
    WriteString('CONFIGFILE01', BPath+'\IDAPI32.CFG');
    WriteString('DLLPATH', BPath);
    WriteString('RESOURCE', '0009');
    WriteString('SaveConfig', 'WIN32');
    WriteString('UseCount', '2');
    CloseKey;
    OpenKey(Bor+'\BLW32',True);
    WriteString('BLAPIPATH', BPath);
    //WriteString('LOCALE_LIB3', BPath+'\OTHER.BLL');
    //WriteString('LOCALE_LIB4', BPath+'\CHARSET.BLL');
    CloseKey;
    OpenKey(Bor+'\Database Engine\Settings\SYSTEM\INIT',True);
    WriteString('AUTO ODBC', 'FALSE');
    WriteString('DATA REPOSITORY', '');
    WriteString('DEFAULT DRIVER', 'PARADOX');
    WriteString('LANGDRIVER', 'ancyrr');
    WriteString('LOCAL SHARE', 'FALSE');
    WriteString('LOW MEMORY USAGE LIMIT', '32');
    WriteString('MAXBUFSIZE', '2048');
    WriteString('MAXFILEHANDLES', '48');
    WriteString('MEMSIZE', '16');
    WriteString('MINBUFSIZE', '128');
    WriteString('SHAREDMEMLOCATION', '');
    WriteString('SHAREDMEMSIZE', '2048');
    WriteString('SQLQRYMODE', '');
    WriteString('SYSFLAGS', '0');
    WriteString('VERSION', '1.0');
    CloseKey;
    OpenKey(Bor+'\Database Engine\Settings\SYSTEM\FORMATS\DATE',True);
    WriteString('FOURDIGITYEAR', 'TRUE');
    WriteString('LEADINGZEROD', 'FALSE');
    WriteString('LEADINGZEROM', 'FALSE');
    WriteString('MODE', '1');
    WriteString('SEPARATOR', '.');
    WriteString('YEARBIASED', 'TRUE');
    CloseKey;
    OpenKey(Bor+'\Database Engine\Settings\SYSTEM\FORMATS\NUMBER',True);
    WriteString('DECIMALDIGITS', '2');
    WriteString('DECIMALSEPARATOR', ',');
    WriteString('LEADINGZERON', 'TRUE');
    WriteString('THOUSANDSEPARATOR', ' ');
    CloseKey;
    OpenKey(Bor+'\Database Engine\Settings\SYSTEM\FORMATS\TIME',True);
    WriteString('AMSTRING', 'AM');
    WriteString('MILSECONDS', 'FALSE');
    WriteString('PMSTRING', 'PM');
    WriteString('SECONDS', 'TRUE');
    WriteString('TWELVEHOUR', 'TRUE');
    CloseKey;
    OpenKey(Bor+'\Database Engine\Settings\REPOSITORIES',True);
    CloseKey;
    OpenKey(Bor+'\Database Engine\Settings\DRIVERS\PARADOX\INIT',True);
    WriteString('LANGDRIVER', 'ancyrr');
    WriteString('TYPE', 'FILE');
    WriteString('VERSION', '1.0');
    CloseKey;
    OpenKey(Bor+'\Database Engine\Settings\DRIVERS\DBASE\INIT',True);
    WriteString('LANGDRIVER', 'db866ru0');
    WriteString('TYPE', 'FILE');
    WriteString('VERSION', '4.0');
    CloseKey;
    OpenKey(Bor+'\Database Engine\Settings\DRIVERS\PARADOX\TABLECREATE',True);
    WriteString('BLOCK SIZE', '4096');
    WriteString('FILL FACTOR', '95');
    WriteString('LEVEL', '7');
    WriteString('STRICTINTEGRTY', 'TRUE');
    CloseKey;
    OpenKey(Bor+'\Database Engine\Settings\DRIVERS\DBASE\TABLECREATE',True);
    WriteString('MDX BLOCK SIZE', '1024');
    WriteString('MEMO FILE BLOCK SIZE', '1024');
    WriteString('LEVEL', '7');
    CloseKey;
   end;
  a.Free;
end;



procedure Tdm.DataModuleCreate(Sender: TObject);
var T : TIniFile;
    basename: string;
    user_name: string;
    password:string;
    GoForward: Boolean;
    INI_NAME: string;
begin
 showstartimg;
 ImgStartForm.Label1.Caption:='Подключение к БД...';
 ImgStartForm.Label1.Refresh;

 ibdatabase2.Connected:=False;
 ibTransaction2.Active:=False;
 INI_NAME:=paramstr(1);
 //INI_NAME:='declarant.ini';
 access:=false;
 T:=TIniFile.Create(INI_NAME);
 BaseName:=T.ReadString('StartUp', 'BaseName', 'c:\data\declarant_u.ib');
 User_Name:=T.ReadString('StartUp', 'User', 'SYSDBA');
 Password:=T.ReadString('StartUp', 'Password', 'masterkey');
 //showmessage(basename+'  '+user_name+'  '+password);
 port_printer:=t.ReadString('portsettings','port','1');
 out_dir:=t.ReadString('outdir','out_dir','d:\ibag\blank\');
 temp_dir:=t.ReadString('tempdir','temp_dir','d:\temp\');
 packet_dir:=t.ReadString('packet','packetdir', 'd:\data\');
 dataforder:=t.ReadString('startup','dataforder','d:\temp\');
 bdeforder:=t.ReadString('bde','bdepath','d:\bde');
 T.Free;

 ibdatabase2.DatabaseName:=BaseName;
 ibdatabase1.DatabaseName:=packet_dir;
 ibdatabase2.Params.Clear;
 ibdatabase2.Params.Add('user_name='+User_name);
 ibdatabase2.Params.Add('password='+Password);
 ibdatabase2.Params.Add('lc_ctype=UNICODE_FSS');

 try
  ibdatabase2.Connected:=True;
  //showmessage(basename);
 //ibdatabase1.Connected:=True;
  ibTransaction2.Active:=True;
  clientset.Active:=true;
  towns.active:=true;
  transtype.Active:=true;
  deltypes.Active:=true;
  sysenter.Active:=true;
  custtype.Active:=true;
  config.Active:=true;
  config.First;
  users.Active:=true;
  users.Last;
  cust.Active:=true;
  cust.Last;
  IBSQL1.Prepare;
  IBSQL1.ExecQuery;
  IBTransaction2.CommitRetaining;
//  users.First;
except on E: Exception do begin
  ShowMessage('Проверьте правильность установки имени пользователя и пароля, а также пути к базе данных.');
  GoForward:=False;
  Exit;
  mainform.close;
 end;
end;

 ImgStartForm.Label1.Caption:='Создание среды приложения';
 ImgStartForm.Label1.Refresh;
 ImgStartForm.Label1.Caption:='Регистрация BDE';
 //installBDe(bdeforder);
 ImgStartForm.Label1.Refresh;
 timer.Enabled:=true;
//if  sysenter.FieldByName('transoutdiv').Value<>-1 then
// begin

  GoForward:=True;
  imgstartform.Close;
//  mainform:=Tmainform.Create(self);
//  mainform.Show;
//  end
//  else
//   begin
//    imgstartform.Close;
//   end;



end;


procedure Tdm.timerTimer(Sender: TObject);
begin
 //Hidestartimg;
 //timer.Enabled:=false;
end;

procedure Tdm.dsconfigDataChange(Sender: TObject; Field: TField);
begin
 //dm.users.last;
end;

procedure Tdm.dsconfigStateChange(Sender: TObject);
begin
// dm.users.last;
end;

end.
