unit packetform_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls, ExtCtrls, ztvregister, ztvBase,
  ztvZip, DB, IBCustomDataSet, IBQuery, IBDatabase, IBStoredProc, ActnList,
  XPStyleActnCtrls, ActnMan, Grids, DBGrids, DBTables, ztvUnARJ,ztvGbls,ztvConsts;

type
  Tpacketform = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    Bevel2: TBevel;
    Memo1: TMemo;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Zip1: TZip;
    transinfo: TIBQuery;
    tran: TIBTransaction;
    flyinfo: TIBQuery;
    clientlist: TIBQuery;
    bags: TIBQuery;
    clientlistCLIENT_ID: TIntegerField;
    clientlistCLIENT_ID1: TIntegerField;
    clientlistCLIENT_PHONE: TIBStringField;
    clientlistCL_ADDRESS: TIBStringField;
    clientlistCL_DIV: TIntegerField;
    clientlistCLIENT_CODE: TIntegerField;
    clientlistXCODE: TIntegerField;
    clientlistPASSNO: TIBStringField;
    clientlistEMAIL: TIBStringField;
    clientlistCLIENTNOTE: TIBStringField;
    clientlistCREATEDATE: TDateTimeField;
    clientlistCLIENT_NAME: TIBStringField;
    clientlistCREATEDIV_ID: TIntegerField;
    clientlistCLOUT_ID: TIntegerField;
    StaticText1: TStaticText;
    packpt: TIBQuery;
    packptPACKTYPE_ID: TIntegerField;
    packptPACKTYPE_ID1: TIntegerField;
    packptPACKTYPENAME: TIBStringField;
    packptPUNIT: TSmallintField;
    packptSUNIT: TIBStringField;
    packptPTYPE: TSmallintField;
    packptOUTERID: TIntegerField;
    packptCREATEDATE: TDateTimeField;
    packptLUPDATE: TDateTimeField;
    packptOEMCODE: TIBStringField;
    packptPTITLE: TIBStringField;
    packptPRNTORDER: TIntegerField;
    packptCN_ID: TIntegerField;
    packptPACKPRICE: TFloatField;
    packptPACKTYPEPRICE1: TFloatField;
    packptPACKTYPEPRICE2: TFloatField;
    packptMAYSALE: TSmallintField;
    packptGROUPID: TIntegerField;
    packptGOODK_ID: TIntegerField;
    packptFAST_ID: TIntegerField;
    packptBARCODE: TIBStringField;
    ttariff: TIBQuery;
    p_packing: TIBQuery;
    partlist: TIBQuery;
    partlistPART_ID: TIntegerField;
    partlistCLIENT_ID: TIntegerField;
    partlistTRT_ID: TIntegerField;
    partlistFLY_ID: TIntegerField;
    partlistTOTALSUMM: TFloatField;
    partlistSUMMPAIED: TFloatField;
    partlistSUMMDEPT: TFloatField;
    partlistOCENKA: TFloatField;
    partlistSTRAHOVKA: TFloatField;
    partlistSUMMPACK: TFloatField;
    partlistSUMMADD1: TFloatField;
    partlistSUMMADD2: TFloatField;
    partlistSUMMADD3: TFloatField;
    partlistSUMMADD4: TFloatField;
    partlistSUMMADD5: TFloatField;
    partlistSUMMADD6: TFloatField;
    partlistSUMMADD7: TFloatField;
    partlistSUMMADD8: TFloatField;
    partlistSUMMADD9: TFloatField;
    partlistSUMMSKIDKA: TFloatField;
    partlistCREATEDATE: TDateTimeField;
    partlistTARIF_ID: TIntegerField;
    partlistTARRIFF: TFloatField;
    partlistTOWN_ID: TIntegerField;
    partlistCUST_TYPE: TIntegerField;
    partlistDEL_TYPE: TIntegerField;
    partlistAWB: TIBStringField;
    partlistXCODE: TIntegerField;
    partlistPARTPOSCOUNT: TIntegerField;
    partlistPARTWEIGHT: TFloatField;
    partlistPARTVOLUME: TFloatField;
    partlistDIV_ID: TIntegerField;
    partlistOUTER_ID: TIntegerField;
    partlistCNV_ID: TIntegerField;
    partlistTOWN_CODE: TIBStringField;
    partlistSCOMMENT: TIBStringField;
    flyinfoTRT_ID: TIntegerField;
    flyinfoFLYNO: TIntegerField;
    flyinfoFLYPOS: TIntegerField;
    flyinfoFLYWEIGHT: TFloatField;
    flyinfoFLYVOLUME: TFloatField;
    flyinfoFLYCOMMENT: TIBStringField;
    flyinfoOPERSTATE: TIntegerField;
    flyinfoDATEOPEN: TDateTimeField;
    flyinfoDATECLOSE: TDateTimeField;
    flyinfoIBTFLY_ID: TIntegerField;
    flyinfoOUTER_ID: TIntegerField;
    flyinfoDIV_ID: TIntegerField;
    flyinfoCNV_ID: TIntegerField;
    flyinfoTNAME: TIBStringField;
    partlistFLYNO: TIntegerField;
    ActionManager1: TActionManager;
    maketranspacket: TAction;
    zagruzka: TIBQuery;
    packtypes: TIBQuery;
    clients: TIBQuery;
    packing: TIBQuery;
    ActionList1: TActionList;
    intcar: TAction;
    townlist: TIBQuery;
    Server_report: TAction;
    transinfoTRANS_ID: TIntegerField;
    transinfoTRANSNO: TIntegerField;
    transinfoTRANSINFO: TIBStringField;
    transinfoTRT_ID: TIntegerField;
    transinfoTDATE: TDateTimeField;
    transinfoTRANSCAME: TDateTimeField;
    transinfoTRANSOUT: TDateTimeField;
    transinfoTRANSSUMM_1: TIntegerField;
    transinfoTRANSSUMM: TIntegerField;
    transinfoOPERSTATE: TIntegerField;
    transinfoPOSCOUNT: TIntegerField;
    transinfoPOSWEIGHT: TFloatField;
    transinfoPOSVOLUME: TFloatField;
    transinfoSCOMMENT: TIBStringField;
    transinfoSOURCEDIV_ID: TIntegerField;
    transinfoOUTER_ID: TIntegerField;
    transinfoGOS_NO: TIBStringField;
    transinfoGOS_NO1: TIBStringField;
    transinfoCNV_ID: TIntegerField;
    transinfoPOSCAME: TIntegerField;
    transinfoPOSWEIGHTCAME: TFloatField;
    transinfoPOSVOLUMECAME: TFloatField;
    transinfoPOSSEND: TIntegerField;
    transinfoDESTDIV: TIntegerField;
    export_price: TAction;
    sync_clients: TAction;
    clients1: TQuery;
    destdiv: TQuery;
    unj: TUnArj;
    importclients: TIBStoredProc;
    OD: TOpenDialog;
    Action1: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure priceAction1Execute(Sender: TObject);
    procedure export_priceExecute(Sender: TObject);
    procedure sync_clientsExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  packetform: Tpacketform;

implementation

uses dmunit,MainUnit, BagPosUnit;

{$R *.dfm}

procedure Tpacketform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.sysenter.active:=false;
end;

procedure Tpacketform.SpeedButton1Click(Sender: TObject);
 var
  n, count, frcount: integer;

  cnvstr,s: string;
  zipname: string;
  cnvlist: textfile;
  flylist: textfile;
  clients: textfile;
  packtypes: textfile;
  ibag_transit: textfile;
  ibag_movements: textfile;
  properties: textfile;
  packing: textfile;
  transport: textfile;
  compress: integer;
  f: file;
  Sf, T: TFileStream;

 begin
//dm.toservertran.Active:=false;
//dm.toservertran.Active:=true;
 if cnv_type=1
   then
    begin

   end;

 if cnv_type=7
   then
    begin
    end;

 if cnv_type=8
 then
  begin
 frcount:=0;
 s:=extractfilepath(packet_dir);

  If FileExists(s+'packet\packet.gdb') Then
   begin
     ztvGbls._EraseFile(s+'packet\packet.gdb', doAllowUndo );
     Rmdir(s+'packet');
   end;

 mkDir(s+'packet');
 Sf := TFileStream.Create( packet_dir, fmOpenRead );
 try
  T := TFileStream.Create( s+'packet\packet.gdb', fmOpenWrite or fmCreate );
  try
  T.CopyFrom(Sf, Sf.Size ) ;
 finally
  T.Free;
 end;
 finally
  Sf.Free;
 end;
  dm.IBDatabase1.DatabaseName:=s+'packet\packet.gdb';
  dm.IBDatabase1.Connected:=true;
  dm.packtran.Active:=true;
screen.Cursor:=crHourGlass;
memo1.Lines.Add('ФОРМИРОВАНИЕ ПАКЕТА');

flyinfo.Active:=true;
 n:=1;
 flyinfo.First;
 count:=0;
memo1.Lines.Add('Перенос информации о рейсе');
 while not flyinfo.Eof do
  begin
for n:=1 to flyinfo.FieldCount-1
     do
   begin
    dm.impfly.Params[n-1].Value:=flyinfo.Fields[n-1].Value;
   end;
  dm.impfly.Prepare;
  dm.impfly.ExecProc;
//  dm.IBTransaction2.CommitRetaining;
  inc(count);
  flyinfo.Next;
  statictext1.Caption:=inttostr(count);
 end;
memo1.Lines.Add('Рейсы количество записей: '+inttostr(count));
memo1.Lines.Add('Перенос информации о рейсе завершен');
memo1.Lines.Add('=============================');

  frcount:=frcount+count;

 partlist.Active:=true;
 n:=1;
 partlist.First;
 count:=0;
memo1.Lines.Add('Перенос квитанций');
 while not partlist.Eof do
  begin
for n:=1 to partlist.FieldCount
     do
   begin
    dm.imppart.Params[n-1].Value:=partlist.Fields[n-1].Value;
   end;
  dm.imppart.Parambyname('flyno').Value:=partlist.Fieldbyname('flyno').Value;
  dm.imppart.Prepare;
  dm.imppart.ExecProc;
//  dm.IBTransaction2.CommitRetaining;
  inc(count);
  partlist.Next;
  statictext1.Caption:=inttostr(count);
 end;
partlist.Active:=false;
memo1.Lines.Add('Квитанция количество записей: '+inttostr(count));
memo1.Lines.Add('Перенос квитанций завершен');
memo1.Lines.Add('=============================');
frcount:=frcount+count;


 bags.Active:=true;
 n:=1;
 bags.First;
 count:=0;
memo1.Lines.Add('Перенос багажа');
 while not bags.Eof do
  begin
for n:=1 to bags.FieldCount
     do
   begin
    dm.proc.Params[n-1].Value:=bags.Fields[n-1].Value;
   end;
  dm.proc.Prepare;
  dm.proc.ExecProc;
//  dm.IBTransaction2.CommitRetaining;
  inc(count);
  bags.Next;
  statictext1.Caption:=inttostr(count);
 end;
bags.Active:=false;
memo1.Lines.Add('Багаж количество записей: '+inttostr(count));
memo1.Lines.Add('Перенос багажа завершен');
memo1.Lines.Add('=============================');
frcount:=frcount+count;

memo1.Lines.Add('Перенос справочника клиентов');
clientlist.Active:=true;
clientlist.first;
n:=1;
count:=0;
statictext1.Caption:=inttostr(clientlist.RecordCount);
 while not clientlist.Eof do
   begin
 for n:=1 to clientlist.FieldCount-1
     do
   begin
     dm.impcl.Params[n-1].Value:=clientlist.Fields[n].Value;
   end;
  dm.impcl.Prepare;
  dm.impcl.ExecProc;
//  dm.IBTransaction2.CommitRetaining;
 clientlist.Next;
 inc(count);
 statictext1.Caption:=inttostr(count);
  end;
memo1.Lines.Add('Клиенты количество записей: '+inttostr(count));
memo1.Lines.Add('Перенос справочника клиентов завершен');
memo1.Lines.Add('======================================');
frcount:=frcount+count;

clientlist.Active:=false;
memo1.Lines.Add('Перенос справочника товаров');
packpt.Active:=true;
packpt.first;
n:=1;
count:=0;
statictext1.Caption:=inttostr(clientlist.RecordCount);
 while not packpt.Eof do
   begin
 for n:=1 to packpt.FieldCount-1
     do
   begin
     dm.inspt.Params[n-1].Value:=packpt.Fields[n].Value;
   end;
  dm.inspt.Prepare;
  dm.inspt.ExecProc;
//  dm.IBTransaction2.CommitRetaining;
 packpt.Next;
 inc(count);
 statictext1.Caption:=inttostr(count);
  end;
memo1.Lines.Add('Товары количество записей: '+inttostr(count));
memo1.Lines.Add('Перенос справочника товаров завершен');
memo1.Lines.Add('======================================');
packpt.Active:=false;
frcount:=frcount+count;

memo1.Lines.Add('Перенос списка тарифов');
ttariff.Active:=true;
ttariff.first;
n:=1;
count:=0;
statictext1.Caption:=inttostr(clientlist.RecordCount);
 while not ttariff.Eof do
   begin
 for n:=1 to ttariff.FieldCount-1
     do
   begin
     dm.instar.Params[n-1].Value:=ttariff.Fields[n].Value;
   end;
  dm.instar.Prepare;
  dm.instar.ExecProc;
//  dm.IBTransaction2.CommitRetaining;
 ttariff.Next;
 inc(count);
 statictext1.Caption:=inttostr(count);
  end;
memo1.Lines.Add('Тарифы количество записей: '+inttostr(count));
memo1.Lines.Add('Перенос справочника тарифов завершен');
memo1.Lines.Add('======================================');
ttariff.Active:=false;
frcount:=frcount+count;

count:=0;
p_packing.Active:=true;
memo1.Lines.Add('Перенос описи вложений');
 while not p_packing.Eof do
  begin
for n:=1 to p_packing.FieldCount
     do
   begin
    dm.inspacking.Params[n-1].Value:=p_packing.Fields[n-1].Value;
   end;
  dm.inspacking.Prepare;
  dm.inspacking.ExecProc;
//  dm.IBTransaction2.CommitRetaining;
  inc(count);
 p_packing.Next;
  statictext1.Caption:=inttostr(count);
 end;
p_packing.Active:=false;
memo1.Lines.Add('Опись количество записей: '+inttostr(count));
memo1.Lines.Add('Перенос описи вложений завершен');
memo1.Lines.Add('=============================');
frcount:=frcount+count;

memo1.Lines.Add('Перенос информации о пакете');
  dm.impcnv.Params[0].Value:=1;
  dm.impcnv.Params[1].Value:=dm.sysenter.fieldbyname('sourcediv_id').Value;
  dm.impcnv.Params[2].Value:='Регистрация '+ansiuppercase(flyinfo.fieldbyname('tname').Value)+' №'+inttostr(flyinfo.fieldbyname('flyno').Value)+' от '+datetostr(flyinfo.fieldbyname('dateopen').Value);
  dm.impcnv.Params[3].Value:=now();
  dm.impcnv.Params[4].Value:=0;
  dm.impcnv.Params[5].Value:=frcount;
  dm.impcnv.Params[6].Value:=0;
  dm.impcnv.Prepare;
  dm.impcnv.ExecProc;

memo1.Lines.Add('ГОТОВО!');
dm.packtran.CommitRetaining;
dm.packtran.Active:=false;
dm.IBDatabase1.Connected:=false;

 zipname:=temp_dir+'IFAX-'+flyinfo.fieldbyname('tname').AsString+'-'+flyinfo.fieldbyname('flyno').AsString+'_'+dm.sysenter.fieldbyname('filial').AsString+'.zpkg';
       If FileExists( zipname ) Then
         ztvGbls._EraseFile( zipname, doAllowUndo ); // EraseFile is in ztvBase.pas

   Zip1.ArchiveFile :=zipname;      // archive filename
   Zip1.FileSpec.Clear( );
   Zip1.FileSpec.Add(dm.IBDatabase1.DatabaseName);
   Compress := Zip1.Compress( );
   memo1.Lines.Add('Создан пакет: '+zipname);
   label1.Caption:='Создан пакет: '+zipname;

 clientlist.Active:=false;
 bags.Active:=false;
 screen.Cursor:=crDefault;
  end;

  if cnv_type=9
 then begin
 actionlist1.Actions[0].Execute;
 end;
 if cnv_type=3
 then begin
 actionlist1.Actions[1].Execute;
 end;
  if cnv_type=10
 then begin
 actionlist1.Actions[2].Execute;
 end;
   if cnv_type=11
 then begin
 actionlist1.Actions[3].Execute;
 end;
if cnv_type=12
 then begin
 actionlist1.Actions[4].Execute;
 end;

end;

procedure Tpacketform.priceAction1Execute(Sender: TObject);
begin
formaddpackexecute(3);
end;

procedure Tpacketform.export_priceExecute(Sender: TObject);
var
 frcount: integer;
 count: integer;
 n: integer;
 s: string;
   f: file;
  Sf, T: TFileStream;
  zipname: string;
  compress: integer;
begin
  frcount:=0;
 s:=extractfilepath(packet_dir);

  If FileExists(s+'packet\packet.gdb') Then
   begin
     ztvGbls._EraseFile(s+'packet\packet.gdb', doAllowUndo );
     Rmdir(s+'packet');
   end;

 mkDir(s+'packet');
 Sf := TFileStream.Create( packet_dir, fmOpenRead );
 try
  T := TFileStream.Create( s+'packet\packet.gdb', fmOpenWrite or fmCreate );
  try
  T.CopyFrom(Sf, Sf.Size ) ;
 finally
  T.Free;
 end;
 finally
  Sf.Free;
 end;
  dm.IBDatabase1.DatabaseName:=s+'packet\packet.gdb';
  dm.IBDatabase1.Connected:=true;
  dm.packtran.Active:=true;
screen.Cursor:=crHourGlass;
memo1.Lines.Add('ФОРМИРОВАНИЕ ПАКЕТА');
packtypes.SQL.Clear;
packtypes.SQL.Add('select * from packtypes where ptype=0');
packtypes.Active:=true;


memo1.Lines.Add('Перенос справочника товаров');
packtypes.first;
n:=1;
count:=0;
statictext1.Caption:=inttostr(packtypes.RecordCount);
 while not packtypes.Eof do
   begin
 for n:=0 to packtypes.FieldCount-1
     do
   begin
     dm.inspt.Params[n].Value:=packtypes.Fields[n].Value;
   end;
  dm.inspt.Prepare;
  dm.inspt.ExecProc;
//  dm.IBTransaction2.CommitRetaining;
 packtypes.Next;
 inc(count);
 statictext1.Caption:=inttostr(count);
  end;
memo1.Lines.Add('Товары количество записей: '+inttostr(count));
memo1.Lines.Add('Перенос справочника товаров завершен');
memo1.Lines.Add('======================================');
packtypes.Active:=false;
frcount:=frcount+count;

memo1.Lines.Add('Перенос информации о пакете');
  dm.impcnv.Params[0].Value:=11;
  dm.impcnv.Params[1].Value:=dm.sysenter.fieldbyname('sourcediv_id').Value;
  dm.impcnv.Params[2].Value:='Справочник товаров от  '+datetostr(now);
  dm.impcnv.Params[3].Value:=now();
  dm.impcnv.Params[4].Value:=0;
  dm.impcnv.Params[5].Value:=frcount;
  dm.impcnv.Params[6].Value:=0;
  dm.impcnv.Prepare;
  dm.impcnv.ExecProc;

memo1.Lines.Add('ГОТОВО!');
dm.packtran.CommitRetaining;
dm.packtran.Active:=false;
dm.IBDatabase1.Connected:=false;

 zipname:=temp_dir+'PRICE'+'.zpkg';
       If FileExists( zipname ) Then
         ztvGbls._EraseFile( zipname, doAllowUndo ); // EraseFile is in ztvBase.pas

   Zip1.ArchiveFile :=zipname;      // archive filename
   Zip1.FileSpec.Clear( );
   Zip1.FileSpec.Add(dm.IBDatabase1.DatabaseName);
   Compress := Zip1.Compress( );
   memo1.Lines.Add('Создан пакет: '+zipname);
   label1.Caption:='Создан пакет: '+zipname;
 screen.Cursor:=crDefault;


end;

procedure Tpacketform.sync_clientsExecute(Sender: TObject);
var Year, Month, Day, Hour, Min, Sec, MSec: Word;
      count: integer;
begin
  if od.Execute
   then
    begin
    unj.ArchiveFile:=od.FileName;
    unj.FileSpec.add('*.*');
    decodetime(now, Day, Hour, Min, Sec);
    temp_dir:=dataforder+extractfilename(paramstr(1))+inttostr(hour)+inttostr(min)+inttostr(sec);
    mkdir(temp_dir);
    unj.ExtractDir:=temp_dir;
    unj.Extract;
    clients1.DatabaseName:=temp_dir;
    destdiv.DatabaseName:=dataforder;
    clients1.Active:=true;
    clients1.First;
    count:=0;
  memo1.Lines.Add('Прогресс');
 // label1.Caption:='Обновление....';
 while not clients1.Eof do
   begin

    if clients1.fieldbyname('famr').AsString<>''
     then
      begin
    destdiv.Active:=false;
    destdiv.SQL.Clear;
    destdiv.SQL.Add('select outdiv from destdiv where ntwn='+clients1.fieldbyname('ntwn').AsString);
    destdiv.Active:=true;
    importclients.ParamByName('client_id').Value:=0;
    importclients.ParamByName('client_phone').Asstring:=clients1.fieldbyname('fone').AsString;
    importclients.ParamByName('cl_div').value:=destdiv.fieldbyname('outdiv').Value;
    importclients.ParamByName('client_code').value:=clients1.fieldbyname('ntrs').value;
    importclients.ParamByName('xcode').value:=clients1.fieldbyname('ntrs').value;
    importclients.ParamByName('passno').Asstring:=clients1.fieldbyname('pasp').AsString;
    importclients.ParamByName('email').Asstring:='';
    importclients.ParamByName('clientnote').Asstring:=clients1.fieldbyname('mark').AsString;;
    importclients.ParamByName('createdate').value:=clients1.fieldbyname('dbrn').value;
    importclients.ParamByName('client_name').Asstring:=uppercase(clients1.fieldbyname('famr').AsString)+' '+uppercase(clients1.fieldbyname('namr').AsString)+' '+uppercase(clients1.fieldbyname('otc').AsString)+' ['+uppercase(clients1.fieldbyname('ntrs').AsString)+']';

    if clients1.fieldbyname('ntrs').value<20000
     then
    importclients.ParamByName('creatediv_id').value:=49;
    if (clients1.fieldbyname('ntrs').value>=20000) and (clients1.fieldbyname('ntrs').value<30000)
     then
     importclients.ParamByName('creatediv_id').value:=82;
    if (clients1.fieldbyname('ntrs').value>=30000)
     then
     importclients.ParamByName('creatediv_id').value:=84;
    //На время
    importclients.ParamByName('creatediv_id').value:=49;
            

    importclients.ParamByName('clout_id').value:=clients1.fieldbyname('ntrs').value;
    importclients.Prepare;
    importclients.ExecProc;
    tran.CommitRetaining;
   end;
    clients1.Next;
    inc(count);
//    statictext1.Caption:=inttostr(count);
    memo1.Lines[1]:=inttostr(count);
  end;
  label1.Caption:='ГОТОВО!';
  memo1.Lines.Add('Обновление справочника клиентов завершёно-ОК!');
  end;
end;

end.
