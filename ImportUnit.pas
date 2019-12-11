unit ImportUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ztvregister, ztvBase, ztvUnZip,MainUnit,
  DB, IBCustomDataSet, IBQuery, IBDatabase,dmunit, IBStoredProc, ActnList, Excel_TLB,
  ExtCtrls, ztvUnARJ,  Mask,
  DBTables, math,OleCtrls, shellapi,comobj;

type
  Timportform = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    pb1: TProgressBar;
    add_but: TSpeedButton;
    od1: TOpenDialog;
    UnZip: TUnZip;
    tran: TIBTransaction;
    cnvlist: TIBQuery;
    test: TIBQuery;
    flylist: TIBQuery;
    query1: TIBQuery;
    updclients: TIBStoredProc;
    clients: TIBQuery;
    ttariff: TIBQuery;
    updtariff: TIBStoredProc;
    exit_but: TSpeedButton;
    packtypes: TIBQuery;
    updptype: TIBStoredProc;
    updcnv: TIBStoredProc;
    updfly: TIBStoredProc;
    Label1: TLabel;
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
    updpart: TIBStoredProc;
    updzag: TIBStoredProc;
    zagruzka: TIBQuery;
    zagruzkaZAG_ID: TIntegerField;
    zagruzkaCLIENT_ID: TIntegerField;
    zagruzkaBAGGETDATE: TDateTimeField;
    zagruzkaTRT_ID: TIntegerField;
    zagruzkaTRANSNO: TIntegerField;
    zagruzkaTRANS_ID: TIntegerField;
    zagruzkaOPERSTATE: TIntegerField;
    zagruzkaOUTERTRANS_ID: TIntegerField;
    zagruzkaTRANSIT_NUM: TIBStringField;
    zagruzkaBAGNUM: TIBStringField;
    zagruzkaBAGNUM_X: TIBStringField;
    zagruzkaFULLBAGNUM: TIBStringField;
    zagruzkaSHORTBAGNUM: TIntegerField;
    zagruzkaINSIDE_NUM: TIntegerField;
    zagruzkaBTYPE_ID: TIntegerField;
    zagruzkaCUSTTYPE_ID: TIntegerField;
    zagruzkaCLIENT_CODE: TIntegerField;
    zagruzkaXCODE: TIntegerField;
    zagruzkaBARCODE: TIBStringField;
    zagruzkaWEIGHT: TFloatField;
    zagruzkaVOLUME: TFloatField;
    zagruzkaTARIF_TYPE: TIntegerField;
    zagruzkaDELIVER_ID: TIntegerField;
    zagruzkaSUMMDEST: TFloatField;
    zagruzkaSUMM_PACK: TIntegerField;
    zagruzkaSUMM_AGENT: TIntegerField;
    zagruzkaSUMM_EXTRA: TIntegerField;
    zagruzkaSUMM_AIRPORT: TIntegerField;
    zagruzkaSUMM_STRAF: TIntegerField;
    zagruzkaSUMM_AWB: TIntegerField;
    zagruzkaSUMM_ADDTRANS: TIntegerField;
    zagruzkaSUMM_ADD: TIntegerField;
    zagruzkaTOTALSUMM: TFloatField;
    zagruzkaSUMMDEPT: TFloatField;
    zagruzkaSUMMPAIED: TFloatField;
    zagruzkaCNV_ID: TIntegerField;
    zagruzkaSOURCEDIV_ID: TSmallintField;
    zagruzkaDESTDIV_ID: TSmallintField;
    zagruzkaIBTFLY: TIntegerField;
    zagruzkaIBTFLYNO: TIntegerField;
    zagruzkaBAGPOSCOUNT: TIntegerField;
    zagruzkaBAGOUTDATE: TDateTimeField;
    zagruzkaBAGTRANSNO: TIntegerField;
    zagruzkaPART_ID: TIntegerField;
    zagruzkaTARIFF: TFloatField;
    zagruzkaOCENKA: TFloatField;
    zagruzkaSTRAHOVKA: TFloatField;
    zagruzkaBAGNUM1: TIBStringField;
    zagruzkaTRANSPREFIX: TIBStringField;
    zagruzkaCLIENT_NAME: TIBStringField;
    zagruzkaOUTER_ID: TIntegerField;
    zagruzkaSIZE_1: TIntegerField;
    zagruzkaSIZE_2: TIntegerField;
    zagruzkaSIZE_3: TIntegerField;
    zagruzkaPACK_KOL: TIntegerField;
    zagruzkaSCOMMENT: TIBStringField;
    zagruzkaDATECAME: TDateTimeField;
    partlistFLYNO: TIntegerField;
    partlistCLIENT_ID1: TIntegerField;
    zagruzkaCLIENT_ID1: TIntegerField;
    updtrans: TIBStoredProc;
    transport: TIBQuery;
    mdb: TIBDatabase;
    transportTRANS_ID: TIntegerField;
    transportTRANSNO: TIntegerField;
    transportTRANSINFO: TIBStringField;
    transportTRT_ID: TIntegerField;
    transportTDATE: TDateTimeField;
    transportTRANSCAME: TDateTimeField;
    transportTRANSOUT: TDateTimeField;
    transportTRANSSUMM_1: TIntegerField;
    transportTRANSSUMM: TIntegerField;
    transportOPERSTATE: TIntegerField;
    transportPOSCOUNT: TIntegerField;
    transportPOSWEIGHT: TFloatField;
    transportPOSVOLUME: TFloatField;
    transportSCOMMENT: TIBStringField;
    transportSOURCEDIV_ID: TIntegerField;
    transportOUTER_ID: TIntegerField;
    transportGOS_NO: TIBStringField;
    transportGOS_NO1: TIBStringField;
    transportCNV_ID: TIntegerField;
    transportPOSCAME: TIntegerField;
    transportPOSWEIGHTCAME: TFloatField;
    transportPOSVOLUMECAME: TFloatField;
    transportPOSSEND: TIntegerField;
    packing: TIBQuery;
    packingPACK_ID: TIntegerField;
    packingPACKTYPE_ID: TIntegerField;
    packingBAG_ID: TIntegerField;
    packingPACKKOL: TIntegerField;
    packingINSDATE: TDateTimeField;
    packingOPERSTATE: TSmallintField;
    packingCNV_ID: TIntegerField;
    packingBAG_OUTERID: TIntegerField;
    packingPACKSUM: TFloatField;
    packingSCOMMENT: TIBStringField;
    packingOUTER_ID: TIntegerField;
    packingUNITTYPE: TIntegerField;
    packingDIV_ID: TSmallintField;
    packingPACKWEIGHT: TIntegerField;
    packingPACKTYPE_ID1: TIntegerField;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    zagruzkaPARTBARCODE: TIBStringField;
    zagruzkaFLYBARCODE: TIBStringField;
    packtypesPACKTYPE_ID: TIntegerField;
    packtypesPUNIT: TSmallintField;
    packtypesSUNIT: TIBStringField;
    packtypesPTYPE: TSmallintField;
    packtypesOUTERID: TIntegerField;
    packtypesCREATEDATE: TDateTimeField;
    packtypesLUPDATE: TDateTimeField;
    packtypesOEMCODE: TIBStringField;
    packtypesPRNTORDER: TIntegerField;
    packtypesCN_ID: TIntegerField;
    packtypesPACKPRICE: TFloatField;
    packtypesPACKTYPEPRICE1: TFloatField;
    packtypesPACKTYPEPRICE2: TFloatField;
    packtypesMAYSALE: TSmallintField;
    packtypesGROUPID: TIntegerField;
    packtypesGOODK_ID: TIntegerField;
    packtypesFAST_ID: TIntegerField;
    packtypesBARCODE: TIBStringField;
    packtypesPACKTYPENAME: TIBStringField;
    packtypesPTITLE: TIBStringField;
    Panel1: TPanel;
    importfem: TAction;
    Unj: TUnArj;
    StaticText1: TStaticText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    impcnv: TIBStoredProc;
    importptype: TIBStoredProc;
    importclients: TIBStoredProc;
    imppack: TIBStoredProc;
    imptm: TIBStoredProc;
    mtov: TQuery;
    clients_1: TQuery;
    mtoz: TQuery;
    mwin: TQuery;
    Query_1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    imptrans: TIBStoredProc;
    destdiv: TIBQuery;
    dcame: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    dxEdit1: TEdit;
    dxedit2: TEdit;
    dxedit3: TEdit;
    minusW: TEdit;
    impzag: TIBStoredProc;
    Label5: TLabel;
    importfromexls: TAction;
    Button1: TButton;
    importptype1: TIBStoredProc;
    imptm1: TIBStoredProc;
    imppack2: TIBStoredProc;
    refreshtrans: TIBStoredProc;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Import_exls(filename: string);
    procedure FormPaint(Sender: TObject);
    procedure add_butClick(Sender: TObject);
    procedure exit_butClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure importfemExecute(Sender: TObject);
    procedure FlatSpeedButton1Click(Sender: TObject);
    procedure importfromexlsExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  importform: Timportform;

implementation

{$R *.dfm}

procedure Timportform.Import_exls(filename: string);
   var
    ExcelApp : Variant;
    Workbook,WorkSheet, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile,str,transinfo,curbagnum : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount,newtrans_id, new_transno,cnv_id,trt_id : integer;
begin

   if (combobox2.ItemIndex=0) or (combobox1.ItemIndex=0) or (trim(edit1.Text)='') or  (trim(edit2.Text)='')
then ShowMessage('Заполните все параметры')
 else
   begin
   sleep(50);
   //screen.Cursor:=crHourGlass;
   ExcelApp := CreateOleObject('Excel.Application');
   ExcelApp.Application.EnableEvents := false;
   Workbook := ExcelApp.WorkBooks.Add(filename);
   WorkSheet:=Workbook.worksheets.add();
   ExcelApp.DisplayAlerts:=false;


 transinfo:=combobox2.Text+'-'+edit1.Text;
 trt_id:=combobox2.ItemIndex-1;
 memo2.Lines.Add('Перенос информации о транспорте');
 imptrans.ParamByName('trans_id').Value:=0;
 imptrans.ParamByName('transno').Value:=edit1.Text;
 imptrans.ParamByName('transinfo').Value:=transinfo;
 imptrans.ParamByName('trt_id').Value:=trt_id;
 imptrans.ParamByName('tdate').Value:=dcame.Date;
 imptrans.ParamByName('transout').Value:=dcame.Date;
 imptrans.ParamByName('transcame').Value:=dcame.Date;
 imptrans.ParamByName('transsumm').Value:=0;
 imptrans.ParamByName('transsumm_1').Value:=0;
 imptrans.ParamByName('operstate').Value:=0;
 imptrans.ParamByName('poscount').Value:=0;
 imptrans.ParamByName('posweight').Value:=0;
 imptrans.ParamByName('posvolume').Value:=0;
 imptrans.ParamByName('scomment').Value:=od1.FileName;
 imptrans.ParamByName('sourcediv_id').Value:=49;
 imptrans.ParamByName('outer_id').Value:=-1;
 imptrans.ParamByName('gos_no').Value:=edit2.Text;
 imptrans.ParamByName('gos_no1').Value:=edit2.Text;
 imptrans.ParamByName('cnv_id').Value:=0;
 imptrans.ParamByName('poscame').Value:=0;
 imptrans.ParamByName('posweightcame').Value:=0;
 imptrans.ParamByName('posvolumecame').Value:=0;
 imptrans.ParamByName('possend').Value:=0;
 imptrans.ParamByName('cnf_id').Value:=dm.config.fieldbyname('cnf_id').Value;
 imptrans.ParamByName('posweight_fact').Value:=0;
 imptrans.Prepare;
 imptrans.ExecProc;
 newtrans_id:=imptrans.parambyname('new_id').Value;
 new_transno:=imptrans.parambyname('new_transno').Value;

 impcnv.ParamByName('cnv_type').Value:=2;
 impcnv.ParamByName('div_id').Value:=49;
 impcnv.ParamByName('cnvstr').Value:=transinfo+' от '+datetostr(now);
 impcnv.ParamByName('cdata').Value:=now();
 impcnv.ParamByName('trans_id').Value:=newtrans_id;
 impcnv.ParamByName('cnvrc').Value:=0;
 impcnv.ParamByName('transno').Value:=new_transno;
 impcnv.Prepare;
 impcnv.ExecProc;
 cnv_id:=impcnv.parambyname('id').Value;
 dm.IBTransaction2.CommitRetaining;
 memo2.Lines.Add('Перенос транспорта завершен-ОК!');


 memo2.Lines.Add('Перенос справочника товаров');
 str:='%%';
 i:=2;
 while str<>'' do
   begin
   memo2.Lines.Add(inttostr(i));
   importptype1.ParamByName('packtype_id').Value:=0;
   importptype1.ParamByName('punit').Value:=1;
   importptype1.ParamByName('sunit').Value:=1;
   importptype1.ParamByName('ptype').Value:=1;
   importptype1.ParamByName('outerid').Value:=0;
   importptype1.ParamByName('createdate').Value:=now();
   importptype1.ParamByName('lupdate').Value:=now();
   importptype1.ParamByName('oemcode').Value:='0000';
   importptype1.ParamByName('prntorder').Value:=0;
   importptype1.ParamByName('cn_id').Value:=1;
   importptype1.ParamByName('packprice').Value:=0;
   importptype1.ParamByName('packtypeprice1').Value:=0;
   importptype1.ParamByName('packtypeprice2').Value:=0;
   importptype1.ParamByName('maysale').Value:=0;
   importptype1.ParamByName('groupid').Value:=0;
   importptype1.ParamByName('goodk_id').Value:=0;
   importptype1.ParamByName('fast_id').Value:=0;
   importptype1.ParamByName('barcode').Value:='0000';
   importptype1.ParamByName('packtypename').Value:=WorkBook.worksheets[2].cells[i,9].value;
   importptype1.ParamByName('ptitle').Value:=WorkBook.worksheets[2].cells[i,9].value;
   importptype1.Prepare;
   importptype1.ExecProc;
   memo2.Lines.Add(importptype1.ParamByName('id').asstring);
   memo2.Lines.Add(WorkBook.worksheets[2].cells[i,9].value+'--');
   Worksheet.cells[i,9].value:=importptype1.ParamByName('id').Value;
   Worksheet.cells[i,8].value:=WorkBook.worksheets[2].cells[i,8].value;
   dm.IBTransaction2.CommitRetaining;
   inc(i);
   str:=WorkBook.worksheets[2].cells[i,9].value;
  end;
   memo2.Lines.Add('Перенос справочника товаров завершен-ОК!');

  memo2.Lines.Add('Перенос справочника торговых марок');
  i:=2;
  str:='%%';
  while str<>'' do
     begin
   imptm1.ParamByName('tmname').Value:=AnsiUpperCase(WorkBook.worksheets[2].cells[i,11].value);
   imptm1.ParamByName('outer_id').Value:=-1;
   imptm1.Prepare;
   imptm1.ExecProc;
   memo2.Lines.Add(imptm1.ParamByName('id').asstring);
   memo2.Lines.Add(WorkBook.worksheets[2].cells[i,11].value+'--');
   Worksheet.cells[i,11].value:=imptm1.ParamByName('id').Value;
   dm.IBTransaction2.CommitRetaining;
   inc(i);
   str:=WorkBook.worksheets[2].cells[i,11].value;
     end;
   memo2.Lines.Add('Перенос справочника торговых марок завершен-ОК!');


   memo2.Lines.Add('Перенос списка мест');
   i:=2;
   str:='%%';
   curbagnum:='%%';
  while str<>''
   do
    begin
    if vartostr(WorkBook.worksheets[2].cells[i,4].value)<>curbagnum then
          begin
     impzag.ParamByName('zag_id').Value:=0;
     impzag.ParamByName('client_id').Value:=0;
     impzag.ParamByName('baggetdate').Value:=WorkBook.worksheets[2].cells[i,1].value;
     impzag.ParamByName('trt_id').Value:=1;
     impzag.ParamByName('transno').Value:=0;
     impzag.ParamByName('trans_id').Value:=0;
     impzag.ParamByName('operstate').Value:=0;
     impzag.ParamByName('outertrans_id').Value:=newtrans_id;
     impzag.ParamByName('transit_num').Value:=WorkBook.worksheets[2].cells[i,4].value;
     impzag.ParamByName('bagnum').Value:=WorkBook.worksheets[2].cells[i,4].value;
     impzag.ParamByName('bagnum_x').Value:=WorkBook.worksheets[2].cells[i,4].value;
     impzag.ParamByName('fullbagnum').Value:=WorkBook.worksheets[2].cells[i,4].value;
     impzag.ParamByName('bagnum1').Value:=WorkBook.worksheets[2].cells[i,4].value;
     impzag.ParamByName('shortbagnum').Value:=WorkBook.worksheets[2].cells[i,3].value;
     impzag.ParamByName('inside_num').Value:=WorkBook.worksheets[2].cells[i,3].value;
     impzag.ParamByName('btype_id').Value:=0;
     impzag.ParamByName('custtype_id').Value:=0;
     impzag.ParamByName('client_code').Value:=1;
     impzag.ParamByName('xcode').Value:=1;
     impzag.ParamByName('barcode').Value:='000000000000';
     impzag.ParamByName('weight').Value:=WorkBook.worksheets[2].cells[i,5].value;
     impzag.ParamByName('volume').Value:=0;
     impzag.ParamByName('tarif_type').Value:=0;
     impzag.ParamByName('deliver_id').Value:=0;
     impzag.ParamByName('summdest').Value:=0;
     impzag.ParamByName('summ_pack').Value:=0;
     impzag.ParamByName('summ_agent').Value:=0;
     impzag.ParamByName('summ_extra').Value:=0;
     impzag.ParamByName('summ_airport').Value:=0;
     impzag.ParamByName('summ_straf').Value:=0;
     impzag.ParamByName('summ_awb').Value:=0;
     impzag.ParamByName('summ_addtrans').Value:=0;
     impzag.ParamByName('summ_add').Value:=0;
     impzag.ParamByName('totalsumm').Value:=0;
     impzag.ParamByName('summdept').Value:=0;
     impzag.ParamByName('summpaied').Value:=0;
     impzag.ParamByName('cnv_id').Value:=cnv_id;
     impzag.ParamByName('sourcediv_id').Value:=49;
     impzag.ParamByName('destdiv_id').Value:=1;
     impzag.ParamByName('ibtfly').Value:=0;
     impzag.ParamByName('ibtflyno').Value:=0;
     impzag.ParamByName('bagposcount').Value:=1;
     impzag.ParamByName('bagoutdate').Value:=now;
     impzag.ParamByName('bagtransno').Value:=0;
     impzag.ParamByName('part_id').Value:=0;
     impzag.ParamByName('tariff').Value:=0;
     impzag.ParamByName('ocenka').Value:=0;
     impzag.ParamByName('strahovka').Value:=0;
     impzag.ParamByName('transprefix').Value:='CH';
     impzag.ParamByName('client_name').Value:=WorkBook.worksheets[2].cells[i,2].value;
     impzag.ParamByName('outer_id').Value:=0;
     impzag.ParamByName('size_1').Value:=0;
     impzag.ParamByName('size_2').Value:=0;
     impzag.ParamByName('size_3').Value:=0;
     impzag.ParamByName('pack_kol').Value:=0;
     impzag.ParamByName('scomment').Value:='';
     impzag.ParamByName('datecame').Value:=now;
     impzag.ParamByName('partbarcode').Value:='000000000000';
     impzag.ParamByName('flybarcode').Value:='000000000000';
     impzag.ParamByName('weight_fact').value:=WorkBook.worksheets[2].cells[i,5].value;
     impzag.Prepare;
     impzag.ExecProc;
     memo2.Lines.Add(impzag.ParamByName('id').asstring);
     memo2.Lines.Add(WorkBook.worksheets[2].cells[i,4].value+'--');
     dm.IBTransaction2.CommitRetaining;
     curbagnum:=vartostr(WorkBook.worksheets[2].cells[i,4].value);
          end;
    Worksheet.cells[i,4].value:=impzag.ParamByName('id').Value;
    inc(i);
    memo2.Lines.Add(curbagnum);
    str:=WorkBook.worksheets[2].cells[i,4].value;

    end;
    memo2.Lines.Add('Перенос списка мест завершён-ОК!');


    memo2.Lines.Add('Перенос описи вложений');

   i:=2;
   str:='%%';
   while str<>'' do begin
    imppack2.ParamByName('pack_id').Value:=0;
    imppack2.ParamByName('packtype_id').Value:=worksheet.cells[i,9].value;
    imppack2.ParamByName('bag_id').Value:=worksheet.cells[i,4].value;
    imppack2.ParamByName('packkol').Value:=worksheet.cells[i,8].value;
    imppack2.ParamByName('insdate').Value:=now();
    imppack2.ParamByName('operstate').Value:=0;
    imppack2.ParamByName('cnv_id').Value:=cnv_id;
    imppack2.ParamByName('bag_outerid').Value:=0;
    imppack2.ParamByName('packsum').Value:=0;
    imppack2.ParamByName('scomment').Value:='';
    imppack2.ParamByName('outer_id').Value:=0;
    imppack2.ParamByName('unittype').Value:=1;
    imppack2.ParamByName('div_id').Value:=49;
    imppack2.ParamByName('packweight').Value:=0;
    imppack2.ParamByName('fly_no').Value:=0;
    imppack2.ParamByName('xcode').Value:=0;
    imppack2.ParamByName('inside_num').Value:=0;
    imppack2.ParamByName('tm_id').Value:=worksheet.cells[i,11].value;
    imppack2.Prepare;
    imppack2.ExecProc;
    memo2.Lines.Add(imppack2.ParamByName('id').asstring);
    dm.IBTransaction2.CommitRetaining;
    inc(i);
    str:=WorkBook.worksheets[2].cells[i,4].value;
  end;
  memo2.Lines.Add('Перенос описи вложений завершён-ОК!');
  memo2.Lines.Add('ОК!');

  refreshtrans.ParamByName('trans_id').Value:=newtrans_id;
  refreshtrans.Prepare;
  refreshtrans.ExecProc;
  dm.IBTransaction2.CommitRetaining;


  //Worksheet.cells[2,8].value:=WorkBook.worksheets[2].cells[2,8].value;
  // ExcelApp.ActiveWorkBook.SaveAs('c:\234.xls',xlExcel8);
    if VarIsEmpty(ExcelApp) = false then
     begin
      ExcelApp.Quit;
      ExcelApp := 0;
     end;
     Application.MessageBox('Загрузка завершена','Сообщение');
     screen.Cursor:=crDefault;
   end
end;

procedure Timportform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure Timportform.FormPaint(Sender: TObject);
begin
 with canvas do
  begin
   pen.Width:=1;
   pen.Color:=clblack;
   rectangle(add_but.left-1, add_but.Top-1, add_but.left+add_but.Width+1, add_but.Top+add_but.Height+1);
   rectangle(exit_but.left-1, exit_but.Top-1, exit_but.left+exit_but.Width+1, exit_but.Top+exit_but.Height+1);
  end;
end;

procedure Timportform.add_butClick(Sender: TObject);
var
cnv_id,  fly_id, cnvrc: integer;
curcount: integer;
n, i: integer;
importex: boolean;
begin

 n:=0;
 import_cnv:=2;
 importex:=true;
if od1.Execute then
  begin
   if (extractfileext(OD1.FileName)='zpkg') then
     begin
       if import_cnv=2
        then
          actionlist1.Actions[0].Execute;
       if import_cnv=0
        then
          actionlist1.Actions[1].Execute;
     end
   else
    begin  if (ExtractFileExt(od1.FileName)='.FEM') then
     actionlist1.Actions[2].Execute else
     actionlist1.Actions[3].Execute;
    end;
  end;
  //ShowMessage(ExtractFileExt(od1.FileName));
end;

procedure Timportform.Button1Click(Sender: TObject);
begin
 import_exls(od1.filename);
end;

procedure Timportform.Button2Click(Sender: TObject);
begin
 import_exls(od1.filename);
end;

procedure Timportform.exit_butClick(Sender: TObject);
begin
 close;
end;

procedure Timportform.Action1Execute(Sender: TObject);
var
cnv_id,  fly_id, cnvrc: integer;
curcount: integer;
n, i: integer;
importex: boolean;
begin
if import_cnv<>2
 then
 application.MessageBox('Неверный формат пакета', 'Предупреждение', MB_ICONWARNING)
else
 begin
 n:=0;
 importex:=true;
 dm.sysenter.Active:=true;
 curcount:=0;
 pb1.Visible:=true;
 unzip.ArchiveFile:=od1.FileName;
 unzip.FileSpec.add('*.*');
 unzip.ExtractDir:=temp_dir;
 unzip.Extract;
 mdb.DatabaseName:=temp_dir+'packet.gdb';
 mdb.Connected:=true;
  tran.Active:=true;
 cnvlist.Active:=true;
 cnvrc:=cnvlist.fieldbyname('cnvrc').Value;
 test.Active:=false;
 test.ParamByName('cnvstr').Value:=cnvlist.fieldbyname('cnvstr').value;
 test.ParamByName('div_id').Value:=cnvlist.fieldbyname('div_id').value;
 test.Active:=true;
if cnvlist.FieldByName('div_id').Value=dm.sysenter.FieldByName('sourcediv_id').Value
  then
  MessageDlg('Невозможно загрузить!', mtInformation, [mbOK],0)
 else
  begin
 if test.RecordCount>0
  then
  begin
     case application.MessageBox('Данная запись существует. Переписать?','Подтверждение',MB_YESNOCANCEL+MB_ICONQUESTION) of
      IDYES: begin importex:=true end;
      IDNO: importex:=false;
   end;
 memo2.Lines.Add('Есть')
  end;
//  else

 if importex then
   begin

  memo2.Lines.Clear;
  dm.del_cnv.ParamByName('cnv_id').Value:=test.fieldbyname('cnv_id').Value;
  dm.del_cnv.Prepare;
  dm.del_cnv.ExecProc;
  //label1.Caption:=mdb.DatabaseName;

 if cnvlist.fieldbyname('cnv_type').Value=2 then
   begin
 memo2.Lines.Add('Перенос информации о транспорте');
 transport.Active:=false;
 transport.Active:=true;

 for i:=0 to 22 do
  begin
 dm.imptrans1.Params[i].Value:=transport.Fields[i].Value;
  end;
 dm.imptrans1.Prepare;
 dm.imptrans1.ExecProc;
 dm.IBTransaction2.CommitRetaining;
 updtrans.ParamByName('trans_id').Value:=dm.imptrans1.parambyname('new_id').Value;
 updtrans.ParamByName('transno').Value:=dm.imptrans1.parambyname('new_transno').Value;
 updtrans.Prepare;
 updtrans.ExecProc;
 tran.CommitRetaining;
 cnvlist.Active:=false;
 cnvlist.Active:=true;
 memo2.Lines.Add('Завершен');
 memo2.Lines.Add('======================');
   end;


  memo2.Lines.Add('Перенос информации о пакете');
  dm.add_cnvlist.ParamByName('cnv_type').Value:=cnvlist.fieldbyname('cnv_type').Value;
  dm.add_cnvlist.ParamByName('div_id').Value:=cnvlist.fieldbyname('div_id').Value;
  dm.add_cnvlist.ParamByName('cnvstr').Value:=cnvlist.fieldbyname('cnvstr').Value;
  dm.add_cnvlist.ParamByName('cdata').Value:=cnvlist.fieldbyname('cdata').Value;

  if cnvlist.fieldbyname('cnv_type').Value=2 then
   dm.add_cnvlist.ParamByName('trans_id').Value:=dm.imptrans1.parambyname('new_id').Value
 else
   dm.add_cnvlist.ParamByName('trans_id').Value:=0;

  dm.add_cnvlist.ParamByName('cnvrc').Value:=cnvlist.fieldbyname('cnvrc').Value;

  if cnvlist.fieldbyname('cnv_type').Value=2 then
   dm.add_cnvlist.ParamByName('transno').Value:=dm.imptrans1.parambyname('new_transno').Value
  else
   dm.add_cnvlist.ParamByName('transno').Value:=0;

  dm.add_cnvlist.Prepare;
  dm.add_cnvlist.ExecProc;
  updcnv.ParamByName('cnv_id').Value:=dm.add_cnvlist.ParamByname('id').value;
  updcnv.Prepare;
  updcnv.ExecProc;
  tran.CommitRetaining;
  cnv_id:=dm.add_cnvlist.ParamByname('id').value;
 // cnvlist.Active:=false;


if cnvlist.fieldbyname('cnv_type').Value<>2 then begin
  flylist.Active:=true;
  memo2.Lines.Add('Перенос рейса');
  dm.import_fly.ParamByName('trt_id').Value:=flylist.fieldbyname('trt_id').Value;
  dm.import_fly.ParamByName('flyno').Value:=flylist.fieldbyname('flyno').Value;
  dm.import_fly.ParamByName('flypos').Value:=flylist.fieldbyname('flypos').Value;
  dm.import_fly.ParamByName('flyweight').Value:=flylist.fieldbyname('flyweight').Value;
  dm.import_fly.ParamByName('flyvolume').Value:=flylist.fieldbyname('flyvolume').Value;
  dm.import_fly.ParamByName('flycomment').Value:=flylist.fieldbyname('flycomment').Value;
  dm.import_fly.ParamByName('operstate').Value:=flylist.fieldbyname('operstate').Value;
  dm.import_fly.ParamByName('dateopen').Value:=flylist.fieldbyname('dateopen').Value;
  dm.import_fly.ParamByName('dateclose').Value:=flylist.fieldbyname('dateclose').Value;
  dm.import_fly.ParamByName('ibtfly_id').Value:=flylist.fieldbyname('ibtfly_id').Value;
  dm.import_fly.ParamByName('outer_id').Value:=flylist.fieldbyname('outer_id').Value;
  dm.import_fly.ParamByName('div_id').Value:=flylist.fieldbyname('div_id').Value;
  dm.import_fly.ParamByName('cnv_id').Value:=cnv_id;
  dm.import_fly.Prepare;
  dm.import_fly.ExecProc;
  updfly.ParamByName('fly_id').Value:=dm.import_fly.parambyname('id').Value;
  updfly.ParamByName('ibtflyno').Value:=dm.import_fly.parambyname('nflyno').Value;
  updfly.Prepare;
  updfly.ExecProc;
  tran.CommitRetaining;
  memo2.Lines.Add('Перенос рейса завершен');
  memo2.Lines.Add('=======================');
  fly_id:=dm.import_fly.parambyname('id').Value;
  curcount:=curcount+1;
  pb1.Position:=round(pb1.Max/cnvrc*curcount);
  flylist.Active:=false;
end;




 //Перенос клиентов
  clients.Active:=true;
  clients.First;
  memo2.Lines.Add('Перенос справочника клиентов');
  while not clients.Eof
  do begin
   dm.import_clients.ParamByName('client_id').Value:=clients.fieldbyname('client_id').Value;
   dm.import_clients.ParamByName('client_phone').Value:=clients.fieldbyname('client_phone').Value;
   dm.import_clients.ParamByName('cl_address').Value:=clients.fieldbyname('cl_address').Value;
   dm.import_clients.ParamByName('cl_div').Value:=clients.fieldbyname('cl_div').Value;
   dm.import_clients.ParamByName('client_code').Value:=clients.fieldbyname('client_code').Value;
   dm.import_clients.ParamByName('xcode').Value:=clients.fieldbyname('xcode').Value;
   dm.import_clients.ParamByName('passno').Value:=clients.fieldbyname('passno').Value;
   dm.import_clients.ParamByName('email').Value:=clients.fieldbyname('email').Value;
   dm.import_clients.ParamByName('clientnote').Value:=clients.fieldbyname('clientnote').Value;
   dm.import_clients.ParamByName('createdate').Value:=clients.fieldbyname('createdate').Value;
   dm.import_clients.ParamByName('client_name').Value:=clients.fieldbyname('client_name').Value;
   dm.import_clients.ParamByName('creatediv_id').Value:=clients.fieldbyname('creatediv_id').Value;
   dm.import_clients.ParamByName('clout_id').Value:=clients.fieldbyname('clout_id').Value;
   //memo2.Lines.Add(clients.fieldbyname('client_code').asstring);
   dm.import_clients.Prepare;
   dm.import_clients.ExecProc;
   dm.IBTransaction2.CommitRetaining;
   updclients.ParamByName('client_id').Value:=dm.import_clients.parambyname('id').Value;
   updclients.ParamByName('client_id_old').Value:=clients.fieldbyname('client_id').Value;
   updclients.Prepare;
   updclients.ExecProc;
   tran.CommitRetaining;
   inc(curcount);
   pb1.Position:=round(pb1.Max/cnvrc*curcount);
   clients.Next;
  end;
 memo2.Lines.Add('Клиенты: '+inttostr(clients.RecordCount));
 memo2.Lines.Add('Перенос клиентов завершён');
 memo2.Lines.Add('===========================');
 clients.Active:=false;
//перенос тарифов

if cnvlist.fieldbyname('cnv_type').Value<>2 then begin
 ttariff.Active:=true;
 ttariff.First;
 memo2.Lines.Add('Перенос тарифов');
 while not ttariff.Eof
  do begin
   dm.import_tariff.parambyname('tarif_id').Value:=ttariff.fieldbyname('tarif_id').Value;
   dm.import_tariff.parambyname('price').Value:=ttariff.fieldbyname('price').Value;
   dm.import_tariff.parambyname('culctype').Value:=ttariff.fieldbyname('culctype').Value;
   dm.import_tariff.parambyname('tariftitle').Value:=ttariff.fieldbyname('tariftitle').Value;
   dm.import_tariff.parambyname('outer_id').Value:=ttariff.fieldbyname('outer_id').Value;
   dm.import_tariff.parambyname('div_id').Value:=ttariff.fieldbyname('div_id').Value;
   dm.import_tariff.Prepare;
   dm.import_tariff.ExecProc;
   updtariff.ParamByName('tarif_id').Value:=dm.import_tariff.parambyname('id').Value;
   updtariff.ParamByName('tarif_id_old').Value:=ttariff.fieldbyname('tarif_id').Value;
   updtariff.Prepare;
   updtariff.ExecProc;
   tran.CommitRetaining;
   inc(curcount);
   pb1.Position:=round(pb1.Max/cnvrc*curcount);
   ttariff.Next;
  end;
 memo2.Lines.Add('Тарифы: '+inttostr(ttariff.RecordCount));
 memo2.Lines.Add('Перенос тарифов завершён');
 memo2.Lines.Add('=========================');
 end;


 memo2.Lines.Add('Перенос справочника товаров');
 packtypes.Active:=true;
 packtypes.First;
  while not packtypes.Eof do
  begin
   dm.IMPORT_PTYPE.ParamByName('packtype_id').Value:=packtypes.fieldbyname('packtype_id').Value;
   dm.IMPORT_PTYPE.ParamByName('punit').Value:=packtypes.fieldbyname('punit').Value;
   dm.IMPORT_PTYPE.ParamByName('sunit').Value:=1;
   dm.IMPORT_PTYPE.ParamByName('ptype').Value:=packtypes.fieldbyname('ptype').Value;
   dm.IMPORT_PTYPE.ParamByName('outerid').Value:=0;
   dm.IMPORT_PTYPE.ParamByName('createdate').Value:=packtypes.fieldbyname('createdate').Value;
   dm.IMPORT_PTYPE.ParamByName('lupdate').Value:=packtypes.fieldbyname('lupdate').Value;
   dm.IMPORT_PTYPE.ParamByName('oemcode').Value:=packtypes.fieldbyname('oemcode').Value;
   dm.IMPORT_PTYPE.ParamByName('prntorder').Value:=packtypes.fieldbyname('prntorder').Value;
   dm.IMPORT_PTYPE.ParamByName('cn_id').Value:=packtypes.fieldbyname('cn_id').Value;
   dm.IMPORT_PTYPE.ParamByName('packprice').Value:=packtypes.fieldbyname('packprice').Value;
   dm.IMPORT_PTYPE.ParamByName('packtypeprice1').Value:=packtypes.fieldbyname('packtypeprice1').Value;
   dm.IMPORT_PTYPE.ParamByName('packtypeprice2').Value:=packtypes.fieldbyname('packtypeprice2').Value;
   dm.IMPORT_PTYPE.ParamByName('maysale').Value:=packtypes.fieldbyname('maysale').Value;
   dm.IMPORT_PTYPE.ParamByName('groupid').Value:=packtypes.fieldbyname('groupid').Value;
   dm.IMPORT_PTYPE.ParamByName('goodk_id').Value:=packtypes.fieldbyname('goodk_id').Value;
   dm.IMPORT_PTYPE.ParamByName('fast_id').Value:=packtypes.fieldbyname('fast_id').Value;
   dm.IMPORT_PTYPE.ParamByName('barcode').Value:=packtypes.fieldbyname('barcode').Value;
   dm.IMPORT_PTYPE.ParamByName('packtypename').Value:=packtypes.fieldbyname('packtypename').Value;
   dm.IMPORT_PTYPE.ParamByName('ptitle').Value:=packtypes.fieldbyname('ptitle').Value;
   dm.IMPORT_PTYPE.Prepare;
   dm.IMPORT_PTYPE.ExecProc;
   dm.IBTransaction2.CommitRetaining;
   updptype.ParamByName('packtype_id').Value:=dm.IMPORT_PTYPE.parambyname('id').Value;
   updptype.ParamByName('packtype_id_old').Value:=packtypes.fieldbyname('packtype_id').Value;
  // memo2.Lines.Add(dm.IMPORT_PTYPE.parambyname('id').AsString+'   '+packtypes.fieldbyname('packtype_id').AsString);

   updptype.Prepare;
   updptype.ExecProc;
   tran.CommitRetaining;
    inc(curcount);
   pb1.Position:=round(pb1.Max/cnvrc*curcount);
   packtypes.Next;
  end;
    memo2.Lines.Add('Товары: '+inttostr(packtypes.RecordCount));
    memo2.Lines.Add('Перенос товаров завершён');
    memo2.Lines.Add('==========================');
    packtypes.Active:=false;
  tran.CommitRetaining;
  
  memo2.Lines.Add('Перенос багажа');
  { partlist.Active:=true;
   partlist.First;
  while not partlist.Eof
   do begin
   for n:=0 to partlist.FieldCount-2
    do begin
   dm.import_part.Params[n].Value:=partlist.Fields[n].Value;
       end;
   dm.import_part.params[1].Value:=partlist.fields[37].Value;
   dm.import_part.Prepare;
   dm.import_part.ExecProc;
   updpart.ParamByName('part_id').Value:=dm.import_part.parambyname('id').Value;
   updpart.ParamByName('part_id_old').Value:=partlist.fieldbyname('part_id').Value;
   updpart.Prepare;
   updpart.ExecProc;
   tran.CommitRetaining;
   inc(curcount);
   pb1.Position:=round(pb1.Max/cnvrc*curcount);
   partlist.Next;
   end;
    partlist.Active:=false; }

    zagruzka.Active:=true;
    zagruzka.First;
   while not zagruzka.Eof
   do begin
   for n:=0 to zagruzka.FieldCount-2
    do begin
   dm.import_zag.Params[n].Value:=zagruzka.Fields[n].Value;
       end;
   dm.import_zag.Params[1].Value:=zagruzka.fields[59].Value;
  if cnvlist.fieldbyname('cnv_type').Value=2 then
   begin
    dm.import_zag.ParamByName('trans_id').Value:=4;
    dm.import_zag.ParamByName('operstate').Value:=0;
   end
    else
   begin
   dm.import_zag.ParamByName('trans_id').Value:=zagruzka.fieldbyname('trt_id').Value;
   dm.import_zag.ParamByName('operstate').Value:=-1;
   dm.import_zag.ParamByName('transno').Value:=0;
   end;

   dm.import_zag.Prepare;
   dm.import_zag.ExecProc;
   dm.IBTransaction2.CommitRetaining;
   updzag.ParamByName('bag_id').Value:=dm.import_zag.parambyname('id').Value;
   updzag.ParamByName('bag_id_old').Value:=zagruzka.fieldbyname('zag_id').Value;
  // memo2.Lines.Add(dm.import_zag.parambyname('id').AsString+'   '+zagruzka.fieldbyname('zag_id').AsString);

   updzag.Prepare;
   updzag.ExecProc;
   tran.CommitRetaining;
   inc(curcount);
   pb1.Position:=round(pb1.Max/cnvrc*curcount);
   zagruzka.Next;
   end;
    tran.CommitRetaining;
    memo2.Lines.Add('Перенос багажа завершён');
    memo2.Lines.Add('==========================');
    zagruzka.Active:=false;

    memo2.Lines.Add('Перенос описи вложений');
    packing.Active:=false;
    packing.Active:=true;
    packing.First;
    while not packing.Eof
   do begin
   for n:=0 to packing.FieldCount-1
    do begin
   dm.import_pack.Params[n].Value:=packing.Fields[n].Value;
       end;
  // memo2.Lines.Add(packing.fields[14].asstring+'   '+dm.import_pack.parambyname('bag_id').asstring+'  '+packing.fieldbyname('bag_id').AsString);
   dm.import_pack.params[1].Value:=packing.fields[14].Value;

   dm.import_pack.Prepare;
   dm.import_pack.ExecProc;
   dm.IBTransaction2.CommitRetaining;
   inc(curcount);
   pb1.Position:=round(pb1.Max/cnvrc*curcount);
   packing.Next;
   end;
  memo2.Lines.Add('Перенос описи вложений завершён');
  packing.Active:=false;
 dm.IBTransaction2.CommitRetaining;
 memo2.Lines.Add('ГОТОВО!!!!!!!!');


 memo1.Lines.Clear;
 importform.query1.Active:=true;
 importform.query1.First;
  while not importform.query1.Eof
   do begin
   importform.Memo1.Lines.add(importform.query1.Fields[0].asstring);
   importform.query1.Next;
   end;
 importform.query1.Active:=false;
   end;
 mdb.Connected:=false;
 //конец проверки на разрешение импорта
 end;
end;
end;


procedure Timportform.importfemExecute(Sender: TObject);
var Year, Month, Day, Hour, Min, Sec, MSec: Word;
 tablestring,tempstring,tabelstring1,querystring,tablestring2: string;
    volume, totalvolume: double;

 basename,user_name,password,tempdir, barcode, fly_barcode, client_barcode, pos_barcode: string;
 cnv_id, cnt, paramok: integer;
begin
    Panel1.Top:=Memo1.Top;
    Panel1.Left:=Memo1.Left;
    Panel1.Width:=Memo1.Width;
    Panel1.Height:=Memo1.Height;
    panel1.Visible:=true;
    label5.caption:='Брутто секвестр';
    button2.Visible:=false;
    dxEdit1.Visible:=true;
    dxEdit2.Visible:=true;
    dxEdit3.Visible:=true;
    SpeedButton1.Visible:=true;
    minusw.Visible:=true;

    Query_1.Active:=false;
    Query2.Active:=false;
    Query3.Active:=false;

    unj.ArchiveFile:=OD1.FileName;
    unj.FileSpec.add('*.*');
    decodetime(now, Day, Hour, Min, Sec);
    tempdir:=temp_dir+extractfilename(OD1.FileName)+inttostr(hour)+inttostr(min)+inttostr(sec);
    mkdir(tempdir);
    unj.ExtractDir:=tempdir;
    unj.Extract;

    //destdiv.DatabaseName:=dataforder;

    mtoz.DatabaseName:=tempdir;
    mtov.DatabaseName:=tempdir;
    mwin.DatabaseName:=tempdir;
    clients_1.DatabaseName:=tempdir;

    with Query_1 do
     begin
      DatabaseName:=tempdir;
      Active:=true;
      First;
     end;

     with Query2 do
     begin
      DatabaseName:=tempdir;
      Active:=true;
      First;
     end;

     with Query3 do
     begin
      DatabaseName:=tempdir;
      Active:=true;
      First;
     end;

    totalvolume:=0;
    Query_1.First;
     while not query_1.Eof do
      begin
    totalvolume:=totalvolume+    query_1.fieldbyname('siz1').value/100*query_1.fieldbyname('siz2').value/100*query_1.fieldbyname('siz3').value/100;
    query_1.Next;
      end;
    query_1.First;

     Edit1.Text:=Query2.Fields[0].AsString;
     Edit2.Text:=Query2.Fields[2].AsString;
     dxEdit1.Text:='Мест: '+Query3.Fields[1].AsString;
     dxEdit2.Text:='Вес: '+Query3.Fields[0].AsString;
     dxEdit3.Text:='Объём: '+FloatToStr(roundTo(totalvolume,-2));
     cur_imp_transport_vol:=roundTo(totalvolume,-2);

end;

procedure Timportform.importfromexlsExecute(Sender: TObject);
begin
    Panel1.Top:=Memo1.Top;
    Panel1.Left:=Memo1.Left;
    Panel1.Width:=Memo1.Width;
    Panel1.Height:=Memo1.Height;
    panel1.Visible:=true;
    label5.caption:='Выбран файл '+od1.filename;
    button2.Visible:=true;
    dxEdit1.Visible:=false;
    dxEdit2.Visible:=false;
    dxEdit3.Visible:=false;
    SpeedButton1.Visible:=false;
    minusw.Visible:=false;
 //button1.Visible:=true;
end;

procedure Timportform.FlatSpeedButton1Click(Sender: TObject);
var
transtype, commpress :integer;
cnvlist: textfile;
ibag_movement,transport, properties: textfile;
clientfullname: string;
clientstr: string;
packtypestr: string;
barcode: string;
bagnum: string;
phone: string;
ibt_id,trt_id, newtrans_id, new_transno,cnv_id:integer;
recordcount: integer;
volume,strah,koefW: double;
desttrans,transinfo: string;
zipname, cnvrc: string;
sourcediv_id: integer;
importex: boolean;
begin
if (combobox2.ItemIndex=0) or (combobox1.ItemIndex=0)
then ShowMessage('Заполните все параметры')
 else
   begin
 Screen.Cursor:=crHourGlass;
 koefW:=(Query3.fields[0].Value-strtoint(minusW.Text))/Query3.fields[0].Value;
 query2.Active:=true;
 transinfo:=combobox2.Text+'-'+edit1.Text;
 trt_id:=combobox2.ItemIndex-1;
 memo2.Lines.Add('Перенос информации о транспорте');
 imptrans.ParamByName('trans_id').Value:=0;
 imptrans.ParamByName('transno').Value:=strtoint(edit1.text);
 imptrans.ParamByName('transinfo').Value:=transinfo;
 imptrans.ParamByName('trt_id').Value:=trt_id;
 imptrans.ParamByName('tdate').Value:=Query2.fieldbyname('dvan').value;
 imptrans.ParamByName('transout').Value:=Query2.fieldbyname('dvan').value;
 imptrans.ParamByName('transcame').Value:=dcame.Date;
 imptrans.ParamByName('transsumm').Value:=0;
 imptrans.ParamByName('transsumm_1').Value:=0;
 imptrans.ParamByName('operstate').Value:=0;
 imptrans.ParamByName('poscount').Value:=Query3.fields[1].Value;
 imptrans.ParamByName('posweight').Value:=Query3.fields[0].Value*koefW;
 imptrans.ParamByName('posvolume').Value:=cur_imp_transport_vol;
 imptrans.ParamByName('scomment').Value:=Query2.fieldbyname('adin').AsString;
 imptrans.ParamByName('sourcediv_id').Value:=49;
 imptrans.ParamByName('outer_id').Value:=Query2.fieldbyname('nvan').Value;
 imptrans.ParamByName('gos_no').Value:=edit2.Text;
 imptrans.ParamByName('gos_no1').Value:=edit2.Text;
 imptrans.ParamByName('cnv_id').Value:=0;
 imptrans.ParamByName('poscame').Value:=0;
 imptrans.ParamByName('posweightcame').Value:=0;
 imptrans.ParamByName('posvolumecame').Value:=0;
 imptrans.ParamByName('possend').Value:=0;
 imptrans.ParamByName('cnf_id').Value:=dm.config.fieldbyname('cnf_id').Value;
 imptrans.ParamByName('posweight_fact').Value:=Query3.fields[0].Value;
 imptrans.Prepare;
 imptrans.ExecProc;
 newtrans_id:=imptrans.parambyname('new_id').Value;
 new_transno:=imptrans.parambyname('new_transno').Value;

 impcnv.ParamByName('cnv_type').Value:=2;
 impcnv.ParamByName('div_id').Value:=49;
 impcnv.ParamByName('cnvstr').Value:=transinfo+' от '+datetostr(dcame.Date);
 impcnv.ParamByName('cdata').Value:=now();
 impcnv.ParamByName('trans_id').Value:=newtrans_id;
 impcnv.ParamByName('cnvrc').Value:=Query3.fields[1].Value;
 impcnv.ParamByName('transno').Value:=new_transno;
 impcnv.Prepare;
 impcnv.ExecProc;
 cnv_id:=impcnv.parambyname('id').Value;

 dm.IBTransaction2.CommitRetaining;

 memo2.Lines.Add('Перенос транспорта завершен-ОК!');

 memo2.Lines.Add('Перенос справочника товаров');
 mtov.Active:=true;
 mtov.First;

 while not mtov.eof do
   begin
   if (mtov.fieldbyname('ntov').Value<>0)
    then
     begin
   importptype.ParamByName('packtype_id').Value:=0;
   importptype.ParamByName('punit').Value:=1;
   importptype.ParamByName('sunit').Value:=1;
   importptype.ParamByName('ptype').Value:=1;
   importptype.ParamByName('outerid').Value:=mtov.fieldbyname('ntov').Value;
   importptype.ParamByName('createdate').Value:=now();
   importptype.ParamByName('lupdate').Value:=now();
   importptype.ParamByName('oemcode').Value:='0000';
   importptype.ParamByName('prntorder').Value:=0;
   importptype.ParamByName('cn_id').Value:=1;
   importptype.ParamByName('packprice').Value:=0;
   importptype.ParamByName('packtypeprice1').Value:=0;
   importptype.ParamByName('packtypeprice2').Value:=0;
   importptype.ParamByName('maysale').Value:=0;
   importptype.ParamByName('groupid').Value:=0;
   importptype.ParamByName('goodk_id').Value:=0;
   importptype.ParamByName('fast_id').Value:=0;
   importptype.ParamByName('barcode').Value:='0000';
   importptype.ParamByName('packtypename').Value:=mtov.fieldbyname('mtov').AsString;
   importptype.ParamByName('ptitle').Value:=mtov.fieldbyname('mtov').AsString;
   importptype.Prepare;
   importptype.ExecProc;
   dm.IBTransaction2.CommitRetaining;
    end;
  mtov.Next;
  end;
   memo2.Lines.Add('Перенос справочника товаров завершен-ОК!');
   mtov.Active:=false;

   //
 memo2.Lines.Add('Перенос справочника торговых марок');
 mtoz.Active:=true;
 mtoz.First;

  while not mtoz.eof do
     begin
   imptm.ParamByName('tmname').Value:=AnsiUpperCase(mtoz.fieldByname('mtoz').AsString);
   imptm.ParamByName('outer_id').Value:=mtoz.fieldByname('ntoz').AsString;
   imptm.Prepare;
   imptm.ExecProc;
   dm.IBTransaction2.CommitRetaining;
   mtoz.Next;
     end;
   memo2.Lines.Add('Перенос справочника торговых марок завершен-ОК!');
   mtoz.Active:=false;


   //

   memo2.Lines.Add('Перенос справочника клиентов');

   clients_1.Active:=true;
   clients_1.First;

 while not clients_1.Eof do
   begin
    destdiv.Active:=false;
    destdiv.SQL.Clear;
    destdiv.SQL.Add('select town_id as outdiv from towns where stock_id='+clients_1.fieldbyname('ntwn').AsString);
    destdiv.Active:=true;

    importclients.ParamByName('client_id').Value:=0;
    importclients.ParamByName('client_phone').Asstring:=clients_1.fieldbyname('fone').AsString;
    importclients.ParamByName('cl_div').value:=destdiv.fieldbyname('outdiv').Value;
    importclients.ParamByName('client_code').value:=clients_1.fieldbyname('ntrs').value;
    importclients.ParamByName('xcode').value:=clients_1.fieldbyname('ntrs').value;
    importclients.ParamByName('passno').Asstring:=clients_1.fieldbyname('pasp').AsString;
    importclients.ParamByName('email').Asstring:='';
    importclients.ParamByName('clientnote').Asstring:='';
    importclients.ParamByName('createdate').value:=clients_1.fieldbyname('dreg').value;
    importclients.ParamByName('client_name').Asstring:=uppercase(clients_1.fieldbyname('famr').AsString)+' '+uppercase(clients_1.fieldbyname('namr').AsString)+' '+uppercase(clients_1.fieldbyname('otc').AsString)+' ['+uppercase(clients_1.fieldbyname('ntrs').AsString)+']';
    importclients.ParamByName('creatediv_id').value:=49;
    importclients.ParamByName('clout_id').value:=clients_1.fieldbyname('ntrs').value;
    clients_1.Next;
    importclients.Prepare;
    importclients.ExecProc;
    dm.IBTransaction2.CommitRetaining;
  end;
  memo2.Lines.Add('Перенос справочника клиентов завершён-ОК!');

  memo2.Lines.Add('Перенос списка мест');
    Query_1.Active:=true;
    query_1.First;
  while not Query_1.Eof
   do
    begin
     impzag.ParamByName('zag_id').Value:=0;
     impzag.ParamByName('client_id').Value:=0;
     impzag.ParamByName('baggetdate').Value:=Query_1.fieldbyname('dreg').value;

           if query_1.FieldByName('tmov').Value=0 then trt_id:=1;
           if query_1.FieldByName('tmov').Value=null then trt_id:=1;
           if query_1.FieldByName('tmov').Value=1 then trt_id:=2;
           if query_1.FieldByName('tmov').Value=2 then trt_id:=0;
           if query_1.FieldByName('tmov').Value=3 then trt_id:=9;

    impzag.ParamByName('trt_id').Value:=trt_id;
    impzag.ParamByName('transno').Value:=0;
    impzag.ParamByName('trans_id').Value:=0;
    impzag.ParamByName('operstate').Value:=0;
    impzag.ParamByName('outertrans_id').Value:=newtrans_id;
    impzag.ParamByName('transit_num').Value:=query_1.fieldbyname('nfly').AsString;
    impzag.ParamByName('bagnum').Value:=query_1.fieldbyname('ntrs').AsString+'-'+query_1.fieldbyname('nsit').AsString;
    impzag.ParamByName('bagnum_x').Value:=query_1.fieldbyname('ntrs').AsString+'-'+query_1.fieldbyname('nsit').AsString;
    impzag.ParamByName('fullbagnum').Value:=query_1.fieldbyname('nfly').AsString+'-'+query_1.fieldbyname('ntrs').AsString+'-'+query_1.fieldbyname('nsit').AsString;
    impzag.ParamByName('bagnum1').Value:=query_1.fieldbyname('nfly').AsString+'-'+query_1.fieldbyname('ntrs').AsString+'-'+query_1.fieldbyname('nsit').AsString;
    impzag.ParamByName('shortbagnum').Value:=query_1.fieldbyname('nfly').value;
    impzag.ParamByName('inside_num').Value:=query_1.fieldbyname('nsit').value;
    impzag.ParamByName('btype_id').Value:=query_1.fieldbyname('tsit').value;;
    impzag.ParamByName('custtype_id').Value:=0;
    impzag.ParamByName('client_code').Value:=query_1.fieldbyname('ntrs').value;
    impzag.ParamByName('xcode').Value:=query_1.fieldbyname('ntrs').value;
    impzag.ParamByName('barcode').Value:=query_1.fieldbyname('nfly').AsString+query_1.fieldbyname('ntrs').AsString+query_1.fieldbyname('nsit').AsString;
    impzag.ParamByName('weight').Value:=query_1.fieldbyname('wsit').value*koefW;
    impzag.ParamByName('volume').Value:=query_1.fieldbyname('siz1').value/100*query_1.fieldbyname('siz2').value/100*query_1.fieldbyname('siz3').value/100;
    impzag.ParamByName('tarif_type').Value:=0;
    impzag.ParamByName('deliver_id').Value:=0;
    impzag.ParamByName('summdest').Value:=0;
    impzag.ParamByName('summ_pack').Value:=0;
    impzag.ParamByName('summ_agent').Value:=0;
    impzag.ParamByName('summ_extra').Value:=0;
    impzag.ParamByName('summ_airport').Value:=0;
    impzag.ParamByName('summ_straf').Value:=0;
    impzag.ParamByName('summ_awb').Value:=0;
    impzag.ParamByName('summ_addtrans').Value:=0;
    impzag.ParamByName('summ_add').Value:=0;
    impzag.ParamByName('totalsumm').Value:=0;
    impzag.ParamByName('summdept').Value:=0;
    impzag.ParamByName('summpaied').Value:=0;
    impzag.ParamByName('cnv_id').Value:=cnv_id;
    impzag.ParamByName('sourcediv_id').Value:=49;

    destdiv.Active:=false;
    destdiv.SQL.Clear;
    destdiv.SQL.Add('select town_id as outdiv from towns where stock_id='+query_1.fieldbyname('ntwn').AsString);
    destdiv.Active:=true;

    impzag.ParamByName('destdiv_id').Value:=destdiv.fieldbyname('outdiv').Value;
    impzag.ParamByName('ibtfly').Value:=0;
    impzag.ParamByName('ibtflyno').Value:=Query_1.fieldbyname('nfly').Value;
    impzag.ParamByName('bagposcount').Value:=1;
    impzag.ParamByName('bagoutdate').Value:=Query2.fieldbyname('dvan').value;
    impzag.ParamByName('bagtransno').Value:=Query2.fieldbyname('nvan').value;
    impzag.ParamByName('part_id').Value:=0;
    impzag.ParamByName('tariff').Value:=0;
    impzag.ParamByName('ocenka').Value:=0;
    impzag.ParamByName('strahovka').Value:=0;
    impzag.ParamByName('transprefix').Value:='CH';
    impzag.ParamByName('client_name').Value:=uppercase(clients_1.fieldbyname('famr').AsString)+' '+uppercase(query_1.fieldbyname('namr').AsString)+' '+uppercase(query_1.fieldbyname('otc').AsString)+' ['+uppercase(query_1.fieldbyname('ntrs').AsString)+']';;
    impzag.ParamByName('outer_id').Value:=0;
    impzag.ParamByName('size_1').Value:=Query_1.fieldbyname('siz1').Value;
    impzag.ParamByName('size_2').Value:=Query_1.fieldbyname('siz2').Value;
    impzag.ParamByName('size_3').Value:=Query_1.fieldbyname('siz3').Value;
    impzag.ParamByName('pack_kol').Value:=0;
    impzag.ParamByName('scomment').Value:=Query_1.fieldbyname('adin').AsString;
    impzag.ParamByName('datecame').Value:=dcame.Date;
    impzag.ParamByName('partbarcode').Value:=query_1.fieldbyname('nfly').AsString+query_1.fieldbyname('ntrs').AsString+query_1.fieldbyname('nsit').AsString;
    impzag.ParamByName('flybarcode').Value:=query_1.fieldbyname('nfly').AsString+query_1.fieldbyname('ntrs').AsString+query_1.fieldbyname('nsit').AsString;
    impzag.ParamByName('weight_fact').value:=Query_1.fieldbyname('wsit').value;
    //ShowMessage(impzag.ParamByName('weight_fact').AsString);
    Query_1.Next;
    impzag.Prepare;
    impzag.ExecProc;
    dm.IBTransaction2.CommitRetaining;
    end;
   memo2.Lines.Add('Перенос списка мест завершён-ОК!');
   memo2.Lines.Add('Перенос описи вложений');

   mwin.Active:=false;
   mwin.sql.clear;
   mwin.sql.add('select * from mwin');
   mwin.Active:=true;
   mwin.First;

   while not mwin.Eof do begin
    imppack.ParamByName('pack_id').Value:=0;
    imppack.ParamByName('packtype_id').Value:=mwin.fieldbyname('ntov').Value;
    imppack.ParamByName('bag_id').Value:=0;
    imppack.ParamByName('packkol').Value:=mwin.fieldbyname('numb').Value;
    imppack.ParamByName('insdate').Value:=now();
    imppack.ParamByName('operstate').Value:=0;
    imppack.ParamByName('cnv_id').Value:=cnv_id;
    imppack.ParamByName('bag_outerid').Value:=0;
    imppack.ParamByName('packsum').Value:=0;
    imppack.ParamByName('scomment').Value:='';
    imppack.ParamByName('outer_id').Value:=0;
    imppack.ParamByName('unittype').Value:=1;
    imppack.ParamByName('div_id').Value:=49;
    imppack.ParamByName('packweight').Value:=0;
    imppack.ParamByName('fly_no').Value:=mwin.fieldbyname('nfly').Value;
    imppack.ParamByName('xcode').Value:=mwin.fieldbyname('ntrs').Value;
    imppack.ParamByName('inside_num').Value:=mwin.fieldbyname('nsit').Value;
    imppack.ParamByName('tm_id').Value:=mwin.fieldbyname('ntoz').Value;
    mwin.Next;
    imppack.Prepare;
    imppack.ExecProc;
    dm.IBTransaction2.CommitRetaining;
  end;
  memo2.Lines.Add('Перенос описи вложений завершён-ОК!');
  memo2.Lines.Add('ОК!');
  screen.Cursor:=crDefault;
  Application.MessageBox('Загрузка завершена','Сообщение');
 end;
end;

end.
