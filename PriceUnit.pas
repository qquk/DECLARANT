unit PriceUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnMan, ActnCtrls, ToolWin, ComCtrls,
  XPStyleActnCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB,
  IBCustomDataSet, IBQuery, Menus, IBDatabase, IBStoredProc,
  IBSQL,Math,comobj, AxCtrls, OleCtrls, shellapi,
  Buttons, IBUpdateSQL;

type
  Tprice = class(TForm)
    ActionManager1: TActionManager;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    refresh: TAction;
    new: TAction;
    exit: TAction;
    CoolBar2: TCoolBar;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Bevel1: TBevel;
    LabeledEdit1: TLabeledEdit;
    packtypes: TIBQuery;
    DataSource1: TDataSource;
    Action1: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    pricetran: TIBTransaction;
    chpack: TIBStoredProc;
    newpack: TIBStoredProc;
    Panel2: TPanel;
    Panel3: TPanel;
    StaticText1: TStaticText;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    IBQuery1: TIBQuery;
    IBStoredProc1: TIBStoredProc;
    DataSource2: TDataSource;
    IBSQL1: TIBSQL;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    delbufer: TIBStoredProc;
    delpos: TIBSQL;
    bufprop: TIBQuery;
    cust_com: TComboBox;
    load: TAction;
    load1: TAction;
    load2: TAction;
    od: TOpenDialog;
    loadp: TIBStoredProc;
    Action2: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    updsql: TIBUpdateSQL;
    Bevel2: TBevel;
    tract: TAction;
    delprices: TIBStoredProc;
    packtypesOEMCODE: TIBStringField;
    packtypesPACKTYPENAME: TIBStringField;
    packtypesPTITLE: TIBStringField;
    packtypesTITLE_CH: TIBStringField;
    packtypesPACKPRICE: TFloatField;
    packtypesCLIENT_NAME: TIBStringField;
    packtypesPACKTYPE_ID: TIntegerField;
    packtypesCLIENT_ID: TIntegerField;
    packtypesPTP_ID: TIntegerField;
    packtypesCUST_ID: TIntegerField;
    ins: TAction;
    N2: TMenuItem;
    delprice: TIBStoredProc;
    split: TSplitter;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    pg1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    packtypes1: TIBQuery;
    DataSource3: TDataSource;
    packtypes1OEMCODE: TIBStringField;
    packtypes1PACKTYPENAME: TIBStringField;
    packtypes1PTITLE: TIBStringField;
    packtypes1TITLE_CH: TIBStringField;
    packtypes1PACKPRICE: TFloatField;
    packtypes1CLIENT_NAME: TIBStringField;
    packtypes1PACKTYPE_ID: TIntegerField;
    packtypes1CLIENT_ID: TIntegerField;
    packtypes1PTP_ID: TIntegerField;
    packtypes1CUST_ID: TIntegerField;
    Panel7: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    packtypesUNITTITLE: TIBStringField;
    packtypesUNITTYPE_ID: TSmallintField;
    packinglist: TIBQuery;
    delpacking: TIBSQL;
    packtypesSERT: TSmallintField;
    packtypes1SERT: TSmallintField;
    updsql1: TIBUpdateSQL;
    CheckBox2: TCheckBox;
    packtypesLOAD: TFloatField;
    packtypesDUTY: TFloatField;
    packtypesPACKPRICE_WEIGHT: TFloatField;
    IBQuery1ID: TIntegerField;
    IBQuery1PACKTYPE_ID: TIntegerField;
    IBQuery1POSCOUNT: TFloatField;
    IBQuery1POSWEIGHT: TFloatField;
    IBQuery1POSPRICE: TFloatField;
    IBQuery1TOTALSUMM: TFloatField;
    IBQuery1ORD_ID: TIntegerField;
    IBQuery1PACKTYPENAME: TIBStringField;
    IBQuery1BAGPOS: TIntegerField;
    IBQuery1UNITTYPE: TSmallintField;
    IBQuery1POSPRICE_WEIGHT: TFloatField;
    IBQuery1PTP_ID: TIntegerField;
    IBQuery1TOTALSUMMCUST: TFloatField;
    IBQuery1OEMCODE: TIBStringField;
    IBQuery1UNITTITLE: TIBStringField;
    packtypesPACKTYPENAME_LONG: TIBStringField;
    IBQuery1PRICE_INV: TFloatField;
    IBQuery1nweight: TFloatField;
    CheckBox3: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    label3: TLabel;
    SpeedButton4: TSpeedButton;
    CheckBox1: TCheckBox;
    printlistact: TAction;
    printHistoryAct: TAction;
    helper: TIBQuery;
    packtypesPACKPRICE_CUST: TFloatField;
    procedure exitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure openExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure refreshExecute(Sender: TObject);
    procedure newExecute(Sender: TObject);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tton1Click(Sender: TObject);
    procedure delbuffer(ord_id: integer);
    procedure FlatSpeedButton2Click(Sender: TObject);
    procedure FlatSpeedButton3Click(Sender: TObject);
    procedure setfilter;
    procedure cust_comChange(Sender: TObject);
    procedure loadExecute(Sender: TObject);
    procedure load1Execute(Sender: TObject);
    procedure load2Execute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure tractExecute(Sender: TObject);
    procedure insExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure pg1Change(Sender: TObject);
    procedure openPriceForm;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox2Click(Sender: TObject);
    procedure LabeledEdit1Enter(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure printlistactExecute(Sender: TObject);
    procedure printHistoryActExecute(Sender: TObject);


  private

    { Private declarations }
  public
    cust_id: integer;
    procedure load_from_exl(filename: string);
    { Public declarations }
  end;

var
  price: Tprice;
  chaddflag: integer;
  showtr: boolean;
  packprice:  double;
  bmark: TBookmark;
  cur_packtype_id: integer;
 implementation

uses PricePosUnit, dmunit,BagPosUnit, MainUnit, FlyListUnit, AddPackingUnit, NewZaklUnit, ImgStartUnit, LoadUnit,
  selectperiodunit;

{$R *.dfm}
procedure TPrice.openPriceForm();
     var

 bmark: TBookMark;
 bmark1: TBookMark;
 totalpos: double;
 totalweight, totalnweight: double;
 totalprice: double;
 totalbagpos: double;
 n: integer;
 strlog: string;
begin

 if opener_price_type=2 then begin
    flyform.newitem.ParamByName('ptp_id').Value:=cur_ptp_id;

    flyform.newitem.ParamByName('packtypename').Value:=packtypes.fieldbyname('packtypename').Value;
    flyform.newitem.ParamByName('price').Value:=packtypes.fieldbyname('packprice').Value;
    flyform.newitem.ParamByName('totalprice').Value:=packtypes.fieldbyname('packprice').Value*flyform.newitem.parambyname('packkol').Value;
    flyform.newitem.ParamByName('packtype_id').Value:=packtypes.fieldbyname('packtype_id').Value;
    flyform.newitem.ParamByName('ptp_id').Value:=cur_ptp_id;
    flyform.newitem.ParamByName('lupdate').Value:=now();

    addpackingform:=taddpackingform.Create(application);
    {addpackingform.Edit1.Text:='0';
    addpackingform.Edit4.Text:=packtypes.fieldbyname('packprice').AsString;
    addpackingform.Edit3.Text:='0';
    addpackingform.Edit2.Text:=floattostr(packtypes.fieldbyname('packprice').value*flyform.fly_pos.fieldbyname('poscount').Value); }
    addpackingform.bagpos.Text:='0';

    dm.unittypes.Active:=true;
    dm.unittypes.First;
    while not dm.unittypes.Eof do begin
     addpackingform.unitcom.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
     dm.unittypes.Next;
    end;

    addpackingform.unitcom.ItemIndex:=0;
    addpackingform.packtypes.ParamByName('ptp_id').Value:=price.packtypes.fieldbyname('ptp_id').Value;
    addpackingform.packtypes.Active:=true;
    close;

   addpackingform.ShowModal;

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);

 end;

   if (opener_price_type=6) then begin

    if Opener_price_type=6 then begin

     strlog:=flyform.fly_pos.fieldbyname('packtypename').asstring+' '
             +flyform.fly_pos.fieldbyname('poscount').asstring
           +'/'+flyform.fly_pos.fieldbyname('posweight').asstring
           +'/'+flyform.fly_pos.fieldbyname('posprice').asstring
           +'/'+flyform.fly_pos.fieldbyname('bagpos').asstring
           +' --> '+
           packtypes.fieldbyname('packtypename').asstring+' '
               +flyform.fly_pos.fieldbyname('poscount').asstring
           +'/'+flyform.fly_pos.fieldbyname('posweight').asstring
           +'/'+packtypes.fieldbyname('packprice').asstring
           +'/'+flyform.fly_pos.fieldbyname('bagpos').asstring;

   flyform.newlog.ParamByName('log_type').Value:=opener_price_type;
   flyform.newlog.ParamByName('logdate').Value:=now();
   flyform.newlog.ParamByName('logcontent').AsString:='';
   flyform.newlog.ParamByName('user_id').Value:=dm.users.fieldbyname('user_id').Value;
   flyform.newlog.ParamByName('ord_id').Value:=current_fly;
                      end;

     flyform.newitem.ParamByName('packtypename').Value:=packtypes.fieldbyname('packtypename').Value;
    // flyform.newitem.ParamByName('price').Value:=packtypes.fieldbyname('packprice').Value;
    // flyform.newitem.ParamByName('totalprice').Value:=packtypes.fieldbyname('packprice').Value*flyform.newitem.parambyname('packkol').Value;
     flyform.newitem.ParamByName('packtype_id').Value:=packtypes.fieldbyname('packtype_id').Value;
     flyform.newitem.ParamByName('ptp_id').Value:=cur_ptp_id;
     flyform.newitem.ParamByName('lupdate').Value:=now();


    addpackingform:=taddpackingform.Create(application);
    addpackingform.packtypes.ParamByName('ptp_id').Value:=price.packtypes.fieldbyname('ptp_id').Value;
    addpackingform.packtypes.Active:=true;
    addpackingform.Edit1.Text:=floattostr(flyform.fly_pos.fieldbyname('poscount').Value);
    addpackingform.Edit4.Text:=packtypes.fieldbyname('packprice').AsString;
    addpackingform.posprice_weight.Text:=packtypes.fieldbyname('packprice_weight').AsString;
    addpackingform.Edit3.Text:=flyform.fly_pos.fieldbyname('posweight').AsString;
    addpackingform.Edit2.Text:=floattostr(packtypes.fieldbyname('packprice').value*flyform.fly_pos.fieldbyname('poscount').Value);
    addpackingform.nweight.Text:=flyform.fly_pos.fieldbyname('nweight').AsString;
    addpackingform.bagpos.Text:=flyform.fly_pos.fieldbyname('bagpos').AsString;
    addpackingform.custsumm.Text:=flyform.fly_pos.fieldbyname('totalsummcust').AsString;

    addpackingform.Edit1.ReadOnly:=true;
    addpackingform.Edit4.ReadOnly:=true;
    addpackingform.Edit3.ReadOnly:=true;
    addpackingform.bagpos.ReadOnly:=true;

    dm.unittypes.Active:=true;
    dm.unittypes.First;
    while not dm.unittypes.Eof do begin
     addpackingform.unitcom.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
     dm.unittypes.Next;
    end;
    addpackingform.unitcom.ItemIndex:=addpackingform.unitcom.Items.IndexOfObject(pointer(integer(packtypes.FieldByName('unittype_id').Value)));


    close;

   addpackingform.ShowModal;

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
  end;

 if opener_price_type=5
  then
   begin
   totalpos:=0;
   totalweight:=0;
   totalprice:=0;
   totalbagpos:=0;
   totalnweight:=0;

    strlog:='';
  for n:=0 to flyform.fly_pos_grid.SelectedRows.Count-1 do
   begin
    flyform.fly_pos.GotoBookmark(pointer(flyform.fly_pos_grid.SelectedRows[n]));
    totalpos:=totalpos+flyform.fly_pos.fieldbyname('poscount').Value;
    totalweight:=totalweight+flyform.fly_pos.fieldbyname('posweight').Value;
    totalbagpos:=totalbagpos+flyform.fly_pos.fieldbyname('bagpos').Value;
    totalnweight:=totalnweight+flyform.fly_pos.fieldbyname('nweight').Value;
    strlog:=strlog+flyform.fly_pos.fieldbyname('packtypename').asstring+' '
             +flyform.fly_pos.fieldbyname('poscount').asstring
           +'/'+flyform.fly_pos.fieldbyname('posweight').asstring
           +'/'+flyform.fly_pos.fieldbyname('posprice').asstring
           +'/'+flyform.fly_pos.fieldbyname('bagpos').asstring
           +' + ';

   end;

    totalprice:=totalpos*packtypes.fieldbyname('packprice').Value;


    flyform.newitem.ParamByName('packtypename').Value:=packtypes.fieldbyname('packtypename').Value;
    flyform.newitem.ParamByName('price').Value:=packtypes.fieldbyname('packprice').Value;
    flyform.newitem.ParamByName('totalprice').Value:=totalprice;
    flyform.newitem.ParamByName('packtype_id').Value:=packtypes.fieldbyname('packtype_id').Value;
    flyform.newitem.ParamByName('ptp_id').Value:=cur_ptp_id;
    flyform.newitem.ParamByName('packweight').Value:=totalweight;
    flyform.newitem.ParamByName('packkol').Value:=totalpos;
    flyform.newitem.ParamByName('opertype').Value:=1;
    flyform.newitem.ParamByName('id').Value:=0;
    flyform.newitem.ParamByName('id').Value:=current_fly;
    flyform.newitem.ParamByName('bagpos').Value:=totalbagpos;
    flyform.newitem.ParamByName('lupdate').Value:=now();

    addpackingform:=taddpackingform.Create(application);
    addpackingform.packtypes.ParamByName('ptp_id').Value:=price.packtypes.fieldbyname('ptp_id').Value;
    addpackingform.packtypes.Active:=true;
    addpackingform.Edit1.Text:=floattostr(totalpos);
    addpackingform.Edit4.Text:=packtypes.fieldbyname('packprice').AsString;
    addpackingform.posprice_weight.Text:=packtypes.fieldbyname('packprice_weight').AsString;
    addpackingform.Edit3.Text:=floattostr(totalweight);
    addpackingform.Edit2.Text:=floattostr(totalprice);
    addpackingform.bagpos.Text:=floattostr(totalbagpos);
    addpackingform.nweight.Text:=floattostr(totalnweight);
    addpackingform.CulcSumm;
    addpackingform.Edit1.ReadOnly:=true;
    addpackingform.Edit4.ReadOnly:=true;
    addpackingform.Edit3.ReadOnly:=true;
    addpackingform.bagpos.ReadOnly:=true;
    dm.unittypes.Active:=true;
    dm.unittypes.First;
    while not dm.unittypes.Eof do begin
     addpackingform.unitcom.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
     dm.unittypes.Next;
    end;
    addpackingform.unitcom.ItemIndex:=addpackingform.unitcom.Items.IndexOfObject(pointer(integer(packtypes.FieldByName('unittype_id').Value)));


    strlog:=strlog+' --> '+packtypes.fieldbyname('packtypename').asstring+' '
             +floattostr(totalpos)
           +'/'+floattostr(totalweight)
           +'/'+packtypes.fieldbyname('packprice').asstring
           +'/'+floattostr(totalbagpos);

   flyform.newlog.ParamByName('log_type').Value:=opener_price_type;
   flyform.newlog.ParamByName('logdate').Value:=now();
   flyform.newlog.ParamByName('logcontent').AsString:='';
   flyform.newlog.ParamByName('user_id').Value:=dm.users.fieldbyname('user_id').Value;
   flyform.newlog.ParamByName('ord_id').Value:=current_fly;
   close;
   addpackingform.ShowModal;
  end;

if (opener_price_type=4) or (opener_price_type=3)
then
 begin
   addpackingform:=taddpackingform.create(application);
   //ShowMessage(addpackingform.Edit1.Text);
   addpackingform.Caption:='Добавление в буфер';
   //addpackingform.packtypes.Parambyname('packtype_id').Value:=price.packtypes.fieldbyname('packtype_id').Value;
   addpackingform.Edit4.Text:=price.packtypes.fieldbyname('packprice').asstring;

   dm.unittypes.Active:=true;
    dm.unittypes.First;
    while not dm.unittypes.Eof do begin
     addpackingform.unitcom.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
     dm.unittypes.Next;
    end;
    addpackingform.unitcom.ItemIndex:=addpackingform.unitcom.Items.IndexOfObject(pointer(integer(packtypes.FieldByName('unittype_id').Value)));

  if ibquery1.RecordCount=0 then begin
    addpackingform.bagpos.Text:=flyform.fly_pos.fieldbyname('bagpos').asstring;
    addpackingform.Edit1.Text:=flyform.fly_pos.fieldbyname('poscount').asstring;
    //ShowMessage(addpackingform.Edit1.Text);
    addpackingform.posprice_weight.Text:=price.packtypes.fieldbyname('packprice_weight').asstring;
    addpackingform.Edit3.Text:=flyform.fly_pos.fieldbyname('posweight').asstring;
    addpackingform.nweight.Text:=flyform.fly_pos.fieldbyname('nweight').asstring;

    addpackingform.custsumm.Text:=flyform.fly_pos.fieldbyname('totalsummcust').AsString;
   end
    else
    begin
    addpackingform.bagpos.Text:=inttostr(flyform.fly_pos.fieldbyname('bagpos').value-price.bufprop.Fields[2].Value);
    addpackingform.Edit1.Text:=floattostr(flyform.fly_pos.fieldbyname('poscount').value-price.bufprop.Fields[0].Value);
    addpackingform.Edit3.Text:=inttostr(flyform.fly_pos.fieldbyname('posweight').value-price.bufprop.Fields[1].Value);
    addpackingform.Edit2.Text:=(flyform.fly_pos.fieldbyname('poscount').value-price.bufprop.Fields[0].Value)*price.packtypes.fieldbyname('packprice').value;
    addpackingform.posprice_weight.Text:=price.packtypes.fieldbyname('packprice_weight').asstring;
   end;

 if opener_price_type=4 then
   begin
   addpackingform.Edit1.Enabled:=false;
   addpackingform.Edit4.Enabled:=false;
   addpackingform.Edit3.Enabled:=false;
   addpackingform.Edit2.Enabled:=false;
   addpackingform.bagpos.Enabled:=false;
   addpackingform.SpeedButton1.Caption:='Добавить';
   end;


    addpackingform.packtypes.ParamByName('ptp_id').Value:=price.packtypes.fieldbyname('ptp_id').Value;
    addpackingform.packtypes.Active:=true;
    //addpackingform.CulcSumm;
    addpackingform.showmodal;
 end;
end;

procedure tprice.load_from_exl(filename: string);
  var
    ExcelApp : Variant;
    Workbook,WorkSheet, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile,str : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;

 begin
   sleep(50);
   screen.Cursor:=crHourGlass;
   ExcelApp := CreateOleObject('Excel.Application');
   ExcelApp.Application.EnableEvents := false;
   Workbook := ExcelApp.WorkBooks.Add(filename);
   RowCount:=WorkBook.worksheets[1].UsedRange.Rows.Count;
  //ShowMessage(inttostr(RowCount));

   delprices.Params.Clear;
   delprices.ParamByName('send_id').Value:=integer(integer(cust_com.Items.Objects[cust_com.ItemIndex]));;
   delprices.Prepare;
   delprices.ExecProc;
   pricetran.CommitRetaining;

   str:='%%';
   i:=2;
     while str<>'' do
      begin
      loadp.ParamByName('packtype_id').Value:=0;
      loadp.ParamByName('punit').Value:=0;
      loadp.ParamByName('sunit').Value:=0;

       if pg1.ActivePageIndex=0 then
          loadp.ParamByName('ptype').Value:=0
        else
         loadp.ParamByName('ptype').Value:=5;

      loadp.ParamByName('outerid').Value:=0;
      loadp.ParamByName('createdate').Value:=datetostr(now);
      loadp.ParamByName('lupdate').Value:=datetostr(now);
      loadp.ParamByName('oemcode').Asstring:=WorkBook.worksheets[1].cells[i,3].value;
      loadp.ParamByName('prntorder').Value:=0;
      loadp.ParamByName('cn_id').Value:=49;

//      ShowMessage(WorkBook.worksheets[1].cells[i,6].value);
      if pg1.ActivePageIndex=0 then
       begin
        if trim(WorkBook.worksheets[1].cells[i,6].value)='' then
         loadp.ParamByName('packprice').value:=0 else
         loadp.ParamByName('packprice').value:=WorkBook.worksheets[1].cells[i,6].value;
        if trim(WorkBook.worksheets[1].cells[i,5].value)='' then
         loadp.ParamByName('packprice_weight').value:=0 else
         loadp.ParamByName('packprice_weight').value:=WorkBook.worksheets[1].cells[i,5].value;
        if trim(WorkBook.worksheets[1].cells[i,7].value)='' then
         loadp.ParamByName('duty').value:=0 else
         loadp.ParamByName('duty').value:=WorkBook.worksheets[1].cells[i,7].value;
        if trim(WorkBook.worksheets[1].cells[i,8].value)='' then
         loadp.ParamByName('load').value:=0 else
         loadp.ParamByName('load').value:=WorkBook.worksheets[1].cells[i,8].value;
        if trim(WorkBook.worksheets[1].cells[i,4].value)='' then
         loadp.ParamByName('sert').value:=0 else
         loadp.ParamByName('sert').value:=WorkBook.worksheets[1].cells[i,4].value;
       if trim(WorkBook.worksheets[1].cells[i,10].value)='' then
         loadp.ParamByName('packprice_cust').value:=0 else
         loadp.ParamByName('packprice_cust').value:=WorkBook.worksheets[1].cells[i,10].value;
       end
      else
       begin
       loadp.ParamByName('packprice').Value:=0;
       loadp.ParamByName('packprice_weight').Value:=0;
       loadp.ParamByName('duty').Value:=0;
       loadp.ParamByName('load').Value:=0;
       end;

      loadp.ParamByName('packtypeprice1').Value:=0;
      loadp.ParamByName('packtypeprice2').Value:=0;
      loadp.ParamByName('maysale').Value:=0;
      loadp.ParamByName('groupid').Value:=0;
      loadp.ParamByName('goodk_id').Value:=0;
      loadp.ParamByName('fast_id').Value:=0;
      loadp.ParamByName('barcode').Value:='0000';
      loadp.ParamByName('packtypename').Value:=trim(WorkBook.worksheets[1].cells[i,1].value);
      loadp.ParamByName('packtypename_long').Value:=trim(WorkBook.worksheets[1].cells[i,2].value);

      if WorkBook.worksheets[1].cells[i,9].value=''
       then
      loadp.ParamByName('ptitle').Value:='' else
      loadp.ParamByName('ptitle').Value:=WorkBook.worksheets[1].cells[i,9].value;

      if pg1.ActivePageIndex=0 then
       loadp.ParamByName('cust_id').Value:=integer(integer(cust_com.Items.Objects[cust_com.ItemIndex]))
      else
       loadp.ParamByName('cust_id').Value:=-1;

      if pg1.ActivePageIndex=0 then
       loadp.ParamByName('cnf_id').Value:=dm.config.fieldByname('cnf_id').Value
      else
       loadp.ParamByName('cnf_id').Value:=-1;

      showform.StaticText2.Caption:='Загружено записей: '+inttostr(i)+' из '+inttostr(RowCount);
      showform.StaticText2.refresh;
      loadp.Prepare;
      loadp.ExecProc;
      pricetran.CommitRetaining;
      str:=WorkBook.worksheets[1].cells[i+1,1].value;

      inc(i);

      end;

    price.packtypes.Active:=false;
    price.packtypes.Active:=true;
 end;

procedure tprice.setfilter();
 var
  first_let,str,str1: string;
 begin
   packtypes.Active:=false;
   packtypes.sql.Clear;
   packtypes.SQL.Add(' select pc.sert,pc.load,pc.duty,pc.packprice_weight,pc.packprice_cust, pc.packtypename_long, pc.packtype_id ,pc.oemcode ,p.packtypename,pc.packtypename_eng as ptitle,pc.packtypename_ch as title_ch, pc.packprice, c.client_name, c.client_id, pc.ptp_id, ');
   packtypes.SQL.Add(' pc.send_id as cust_id, u.unittitle, p.unittype_id from PACKTYPES  p, packtype_price pc, clients c, unittypes u where p.packtype_id=pc.packtype_id and pc.delflag=0 and pc.send_id=c.client_id and p.unittype_id=u.unttype and  c.status=1 ');

   if pg1.ActivePageIndex=0 then
     packtypes.SQL.Add(' and ptype=0')
    else
     packtypes.SQL.Add(' and ptype=5');  //расширенный

   if trim(labelededit1.Text)<>''
    then
    begin
     str:=labelededit1.Text;
     str1:=labelededit1.Text;
     first_let:=ansiuppercase(copy(str,1,1));
     str:=copy(str,2,length(str)-1);
     str:=first_let+str;
     packtypes.SQL.ADD(' and  ((p.packtypename like "'+str+'%")');
     packtypes.SQL.ADD(' or (p.packtypename like "%'+str1+'%") or (pc.oemcode like "'+labelededit1.Text+'%"))');
    end;

   if pg1.ActivePageIndex=0 then
     begin
   if (cust_com.ItemIndex<>0) and  (opener_price_type=1)
    then
     packtypes.SQL.Add(' and c.client_id='+inttostr(integer(integer(cust_com.Items.Objects[cust_com.ItemIndex]))));
    if (opener_price_type<>1)
     then
       packtypes.SQL.Add(' and c.client_id='+inttostr(cust_id));
     end;

   if checkbox2.Checked then
    packtypes.SQL.Add(' and pc.sert=1');

   if CheckBox3.Checked then
     packtypes.SQL.Add(' and pc.createdate>="'+datetostr(DateTimePicker1.Date)+'" and pc.createdate<="'+datetostr(DateTimePicker2.date+1)+'"');

   packtypes.SQL.Add(' and pc.cnf_id='+dm.config.fieldbyname('cnf_id').AsString+' order by packtypename, pc.oemcode');
   screen.Cursor:=crHourGlass;
   packtypes.Active:=true;
   screen.Cursor:=crDefault;
   dbgrid1.SetFocus;

end;

procedure Tprice.SpeedButton4Click(Sender: TObject);
begin
 setfilter;
end;

procedure tprice.delbuffer(ord_id: integer);
 begin
  delbufer.ParamByName('ord_id').Value:=flyform.fly_pos.fieldbyname('id').Value;
  delbufer.Prepare;
  delbufer.ExecProc;
  dm.IBTransaction2.CommitRetaining;
 end;
procedure Tprice.exitExecute(Sender: TObject);
begin
 if DBGrid3.Visible then begin
   DBGrid3.Visible:=false;
   split.Visible:=false;
   //DBGrid1.Columns.Items[5].Visible:=true;
   DBGrid1.Columns.Items[2].Width:=500;
   DBGrid3.Width:=0;
   DBGrid1.Enabled:=true;
   DBGrid1.SetFocus;
 end
  else begin
     price.Close;
  end;
end;

procedure Tprice.FormClose(Sender: TObject; var Action: TCloseAction);
 var
 strlog: string;
 totalpackkol: double;
begin
cust_id:=0;
if ibquery1.RecordCount<>0 then
 begin
if (opener_price_type<>1)
 then
  begin
  if MessageDlg('Разбить позицию?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin
    ibquery1.First;
    totalpackkol:=flyform.fly_pos.fieldbyname('poscount').Value;

    flyform.newlog.ParamByName('log_type').Value:=opener_price_type;
    flyform.newlog.ParamByName('logdate').Value:=now();
    flyform.newlog.ParamByName('logcontent').AsString:='';
    flyform.newlog.ParamByName('user_id').Value:=dm.users.fieldbyname('user_id').Value;
    flyform.newlog.ParamByName('ord_id').Value:=current_fly;
    flyform.newlog.Prepare;
    flyform.newlog.ExecProc;

    flyform.newlogit.ParamByName('log_id').Value:=flyform.newlog.ParamByName('n_id').Value;
    flyform.newlogit.ParamByName('logcontent').Value:=flyform.fly_pos.fieldbyname('packtypename').Value;
    flyform.newlogit.ParamByName('poscount').Value:=flyform.fly_pos.fieldbyname('poscount').Value;
    flyform.newlogit.ParamByName('posweight').Value:=flyform.fly_pos.fieldbyname('posweight').Value;
    flyform.newlogit.ParamByName('posprice').Value:=flyform.fly_pos.fieldbyname('posprice').Value;
    flyform.newlogit.ParamByName('bagpos').Value:=flyform.fly_pos.fieldbyname('bagpos').Value;
    flyform.newlogit.ParamByName('liorder').Value:=1;
    flyform.newlogit.Prepare;
    flyform.newlogit.ExecProc;

    while not ibquery1.Eof do
          begin
             flyform.newitem.ParamByName('id').Value:=0;
             flyform.newitem.ParamByName('ord_id').Value:=current_fly;
             flyform.newitem.ParamByName('packtype_id').Value:=ibquery1.fieldbyname('packtype_id').Value;
             flyform.newitem.ParamByName('packkol').Value:=ibquery1.fieldbyname('poscount').Value;
             flyform.newitem.ParamByName('packweight').Value:=ibquery1.fieldbyname('posweight').Value;
             flyform.newitem.ParamByName('price').Value:=ibquery1.fieldbyname('posprice').Value;
             flyform.newitem.ParamByName('totalprice').Value:=ibquery1.fieldbyname('totalsumm').Value;
             flyform.newitem.ParamByName('opertype').Value:=1;
             flyform.newitem.ParamByName('packtypename').Value:=ibquery1.fieldbyname('packtypename').Value;
             flyform.newitem.ParamByName('bagpos').Value:=ibquery1.fieldbyname('bagpos').Value;
             flyform.newitem.ParamByName('ptp_id').Value:=ibquery1.fieldbyname('ptp_id').Value;
             flyform.newitem.ParamByName('lupdate').Value:=now();
             flyform.newitem.ParamByName('poskol').Value:=0;
             flyform.newitem.ParamByName('unittype_id').Value:=IBQuery1.FieldByName('unittype').Value;
             flyform.newitem.ParamByName('price_weight').Value:=IBQuery1.FieldByName('posprice_weight').Value;
             flyform.newitem.ParamByName('price_inv').Value:=IBQuery1.FieldByName('price_inv').Value;
             flyform.newitem.ParamByName('nweight').Value:=IBQuery1.FieldByName('nweight').Value;

            flyform.newlogit.ParamByName('log_id').Value:=flyform.newlog.ParamByName('n_id').Value;
            flyform.newlogit.ParamByName('logcontent').Value:=ibquery1.fieldbyname('packtypename').Value;
            flyform.newlogit.ParamByName('poscount').Value:=ibquery1.fieldbyname('poscount').Value;
            flyform.newlogit.ParamByName('posweight').Value:=ibquery1.fieldbyname('posweight').Value;
            flyform.newlogit.ParamByName('posprice').Value:=ibquery1.fieldbyname('posprice').Value;
            flyform.newlogit.ParamByName('bagpos').Value:=ibquery1.fieldbyname('bagpos').Value;
            flyform.newlogit.ParamByName('liorder').Value:=2;
            flyform.newlogit.Prepare;
            flyform.newlogit.ExecProc;

            flyform.newitem.Prepare;
            flyform.newitem.ExecProc;


          flyform.inspacking.Active:=true;
          flyform.inspacking.First;


          //ShowMessage(inttostr(flyform.flylist.FieldByName('trans_id').Value));
          //ShowMessage(floattostr(flyform.inspacking.FieldByName('packkol').Value*(ibquery1.fieldbyname('poscount').Value / flyform.fly_pos.FieldByName('poscount').Value)));
          //ShowMessage(inttostr(flyform.inspacking.FieldByName('tm_id').Value));

          while (not flyform.inspacking.Eof) do
           begin
            // ShowMessage(inttostr(flyform.inspacking.FieldByName('tm_id').Value));
             flyform.newpacking.ParamByName('pt_id').Value:=ibquery1.FieldByName('packtype_id').Value;
             flyform.newpacking.ParamByName('ptname').Asstring:='asd';
             flyform.newpacking.ParamByName('tmname').Asstring:='tme';
             flyform.newpacking.ParamByName('oper').Value:=4;
             flyform.newpacking.ParamByName('packkol').Value:=flyform.inspacking.FieldByName('packkol').Value*(ibquery1.fieldbyname('poscount').Value / flyform.fly_pos.FieldByName('poscount').Value);
             flyform.newpacking.ParamByName('bag_id').Value:=flyform.inspacking.FieldByName('bag_id').Value;
             flyform.newpacking.ParamByName('cnv_id').Value:=flyform.inspacking.FieldByName('cnv_id').Value;
             flyform.newpacking.ParamByName('pack_id').Value:=-1;
             flyform.newpacking.ParamByName('tm_id').Value:=flyform.inspacking.FieldByName('tm_id').Value;
             flyform.newpacking.ParamByName('ot_id').Value:=flyform.fly_pos.FieldByName('id').Value;
             flyform.newpacking.Prepare;
             flyform.newpacking.ExecProc;
             flyform.inspacking.Next;
           end;


          flyform.helper.Active:=true;
          flyform.helper.First;

        while (not flyform.helper.Eof) do
         begin
          flyform.newtm.ParamByName('orditem_id').Value:=flyform.newitem.parambyname('new_id').Value;
          flyform.newtm.ParamByName('tm_id').Value:=flyform.helper.fields[1].value;
          flyform.newtm.ParamByName('packkol').Value:=ibquery1.fieldbyname('poscount').Value/totalpackkol*flyform.helper.fields[0].value;
          //ShowMessage(floattostr(flyform.newtm.ParamByName('packkol').Value));
          flyform.newtm.Prepare;
          flyform.newtm.ExecProc;
          flyform.helper.Next;
         end;

        flyform.recalctm.ParamByName('orditem_id').Value:=flyform.newitem.parambyname('new_id').Value;
        flyform.recalctm.Prepare;
        flyform.recalctm.ExecProc;
        flyform.helper.Active:=false;
        ibquery1.Next;
     end;


         flyform.delorditems.ParamByName('id').Value:=flyform.fly_pos.fieldbyname('id').Value;
         flyform.delorditems.ParamByName('ord_id').Value:=flyform.fly_pos.fieldbyname('ord_id').Value;
         flyform.delorditems.ParamByName('packtype_id').Value:=flyform.fly_pos.fieldbyname('packtype_id').Value;
         flyform.delorditems.ParamByName('trans_id').Value:=flyform.flylist.fieldbyname('trans_id').Value;
         flyform.delorditems.ParamByName('oper').Value:=2;
         flyform.delorditems.Prepare;
         flyform.delorditems.ExecProc;


         flyform.delorditems.ParamByName('id').Value:=flyform.fly_pos.fieldbyname('id').Value;
         flyform.delorditems.ParamByName('ord_id').Value:=flyform.fly_pos.fieldbyname('ord_id').Value;
         flyform.delorditems.Prepare;
         flyform.delorditems.ExecProc;

         flyform.upd_fly.ParamByName('ord_id').Value:=current_fly;
         flyform.upd_fly.prepare;
         flyform.upd_fly.execproc;

          flyform.flytran.CommitRetaining;
          flyform.fly_pos.Active:=false;
          flyform.fly_pos.Active:=true;
          flyform.setfilter(current_fly);

         if flyform.tmgrid.Visible then
           flyform.tmquery.Active:=true;

           flyform.fly_pos.Locate('id',inttostr(flyform.newitem.parambyname('new_id').Value), [loCaseInsensitive ,loPartialKey]);
           action:=cafree;
           end
             else
              begin
                flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
                flyform.fly_pos.Locate('id',inttostr(flyform.fly_pos.fieldbyname('id').Value), [loCaseInsensitive ,loPartialKey]);
                delbuffer(flyform.fly_pos.fieldbyname('id').value);
                action:=cafree;
              end;
        end
        else
          begin
    if opener_price_type<>1 then
       delbuffer(flyform.fly_pos.fieldbyname('id').value);
          end;
flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
action:=cafree;
 end
else
 begin
  if packtypes.CachedUpdates then
   packtypes.ApplyUpdates;

  action:=cafree;
 end;
end;

procedure Tprice.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 IF  gdSelected   IN State
	Then Begin

  //if (trim(packtypes.FieldByName('ptitle').AsString)='') or (trim(packtypes.FieldByName('title_ch').AsString)='') then
  //   TDBGrid(Sender).Canvas.Brush.Color:=rgb(255,220,220)
  ///    else
     TDBGrid(Sender).Canvas.Brush.Color:= clwhite;

	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   //TDBGrid(Sender).Canvas.Font.Size:=10;

///if (trim(packtypes.FieldByName('ptitle').AsString)='') or (trim(packtypes.FieldByName('title_ch').AsString)='') then
///   TDBGrid(Sender).Canvas.pen.Color:=clmaroon
///    else
 TDBGrid(Sender).Canvas.pen.Color:=RGB(160,160,255);

   TDBGrid(Sender).Canvas.pen.Style:=pssolid;
   TDBGrid(Sender).Canvas.pen.Width:=2;
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top+1);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Top+1);
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom-1);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom-1);

   TDBGrid(Sender).Canvas.pen.Width:=1;
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top+3);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Top+3);
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom-4);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom-4);
  End
   else
    begin
  /// if (trim(packtypes.FieldByName('ptitle').AsString)='') or (trim(packtypes.FieldByName('title_ch').AsString)='') then
   ///  TDBGrid(Sender).Canvas.Brush.Color:=rgb(255,220,220)
   //   else
     TDBGrid(Sender).Canvas.Brush.Color:= clwhite;
   	 TDBGrid(Sender).Canvas.Font.Color := clblack;
     TDBGrid(Sender).Canvas.FillRect(rect);
    end;
	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Tprice.FormCreate(Sender: TObject);
 var
  y,m,d:word;
begin
packtypes.Params[0].Value:=dm.config.fieldbyname('cnf_id').Value;
packtypes.Active:=true;
chaddflag:=0;

  decodeDate(now,y,m,d);
  DateTimePicker1.Date:=strtodate('01.01.'+inttostr(y));
  DateTimePicker2.Date:=now;

showtr:=true;
end;

procedure Tprice.openExecute(Sender: TObject);
begin
packpos:=tpackpos.create(application);
packpos.showmodal;
end;

procedure Tprice.pg1Change(Sender: TObject);
begin
 if pg1.ActivePageIndex=1 then
     begin
  //dbgrid1.Options:=[dgrowselect,dgtitles,dgcolumnresize,dgcollines,dgrowlines,dgtabs,dgconfirmdelete,dgcancelonexit];
   packtypes.Active:=false;
   packtypes.sql.Clear;
   packtypes.SQL.Add(' select pc.sert, pc.load, pc.duty, pc.packtype_id ,pc.oemcode ,p.packtypename, p.ptitle, p.title_ch, pc.packprice, c.client_name, c.client_id, pc.ptp_id, ');
   packtypes.SQL.Add(' pc.send_id as cust_id, u.unittitle, p.unittype_id from PACKTYPES  p, packtype_price pc, clients c, unittypes u where p.packtype_id=pc.packtype_id and ptype=5 and pc.delflag=0 and pc.send_id=c.client_id ');
   packtypes.SQL.Add(' and pc.cnf_id=-1 and p.unittype_id=u.unttype order by packtypename');
   screen.Cursor:=crHourGlass;
   packtypes.Active:=true;
   screen.Cursor:=crDefault;
   dbgrid1.SetFocus;
   //LabeledEdit1.Visible:=false;
   cust_com.Visible:=false;
   //Bevel2.Visible:=false;
   //CheckBox1.Visible:=false;

   DBGrid1.Columns.Items[2].Width:=DBGrid1.Columns.Items[2].Width+DBGrid1.Columns.Items[7].Width;
   DBGrid1.Columns.Items[7].Visible:=false;
   DBGrid1.Columns.Items[3].Visible:=false;
   DBGrid1.Columns.Items[8].Visible:=true;
     end
   else
    begin
   cust_com.Visible:=true;
   Bevel2.Visible:=true;
   //CheckBox1.Visible:=true;

  // if CheckBox1.Checked then
  //  dbgrid1.Options:=[dgediting,dgtitles,dgcolumnresize,dgcollines,dgrowlines,dgtabs,dgconfirmdelete,dgcancelonexit];

   DBGrid1.Columns.Items[7].Visible:=true;
   DBGrid1.Columns.Items[8].Visible:=true;
   DBGrid1.Columns.Items[3].Visible:=true;
   DBGrid1.Columns.Items[2].Width:=DBGrid1.Columns.Items[2].Width-DBGrid1.Columns.Items[7].Width;

   LabeledEdit1.Text:='';
   cust_com.ItemIndex:=0;
   setfilter();
   end;

  end;

procedure Tprice.printHistoryActExecute(Sender: TObject);
begin
 selectperiod:=tselectperiod.create(application);
 selectPeriod.Visible:=false;
 selectperiod.showmodal;    {}
end;

procedure Tprice.printlistactExecute(Sender: TObject);
 var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    avgweight: double;
    avgtotal: double;
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;

    begin
   ExcelApp := CreateOleObject('Excel.Application');
   ExcelApp.Application.EnableEvents := false;
   Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');

   Screen.Cursor:=crHourGlass;
   n:=2;
     packtypes.First;
      while not packtypes.Eof do begin
        WorkBook.WorkSheets[1].Cells[N,1].value:=packtypes.fieldbyname('packtypename').AsString;
        WorkBook.WorkSheets[1].Cells[N,2].value:=packtypes.fieldbyname('packtypename_long').AsString;
        //WorkBook.WorkSheets[1].Cells[N,2].value:=packtypes.fieldbyname('oemcode').AsString;
        WorkBook.WorkSheets[1].Cells[N,3].value:=packtypes.fieldbyname('oemcode').asstring;
        WorkBook.WorkSheets[1].Cells[N,4].value:=packtypes.fieldbyname('sert').value;
        WorkBook.WorkSheets[1].Cells[N,5].value:=packtypes.fieldbyname('packprice_weight').value;
        WorkBook.WorkSheets[1].Cells[N,6].value:=packtypes.fieldbyname('packprice').value;
        WorkBook.WorkSheets[1].Cells[N,7].value:=packtypes.fieldbyname('duty').value;
        WorkBook.WorkSheets[1].Cells[N,8].value:=packtypes.fieldbyname('load').value;
        WorkBook.WorkSheets[1].Cells[N,9].value:=packtypes.fieldbyname('ptitle').AsString;
        WorkBook.WorkSheets[1].Cells[N,10].value:=packtypes.fieldbyname('packprice_cust').AsString;
        inc(n);
        packtypes.Next;
     end;
 packtypes.First;
 ExcelApp.Visible:=true;
 Screen.Cursor:=crDefault;

end;

procedure Tprice.DBGrid1DblClick(Sender: TObject);
 begin

 if opener_price_type=1 then begin
  packpos:=tpackpos.create(application);
  packpos.IBQuery1.Params[0].Value:=packtypes.fieldbyname('packtype_id').Value;
  packpos.IBQuery1.Params[1].Value:=packtypes.fieldbyname('client_id').Value;
  packpos.oemcode.Text:=packtypes.fieldbyname('oemcode').AsString;
  packpos.packname.Text:=packtypes.fieldbyname('packtypename').AsString;
  packpos.packtypename_long.Text:=packtypes.fieldbyname('packtypename_long').AsString;
  packpos.ptitle.Text:=packtypes.fieldbyname('ptitle').AsString;
  packpos.title_ch.Text:=packtypes.fieldbyname('title_ch').AsString;
  packpos.packprice.Text:=packtypes.fieldbyname('packprice').AsString;
  packpos.duty.Text:=packtypes.fieldbyname('duty').AsString;
  packpos.load.Text:=packtypes.fieldbyname('load').AsString;
  packpos.packprice_weight.Text:=packtypes.fieldbyname('packprice_weight').AsString;
  packpos.custsumm.Text:=packtypes.fieldbyname('packprice_cust').AsString;

  if length(packtypes.FieldByName('oemcode').AsString)<6 then begin
   packpos.sertcom.Enabled:=false;
  end;

  dm.chpack.Params[0].Value:=packtypes.fieldbyname('packtype_id').Value;

  dm.clients.Active:=true;
  dm.clients.First;

  while not dm.clients.Eof do
   begin
     packpos.cust_com.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));
     dm.clients.Next;
   end;

 dm.unittypes.Active:=true;
 dm.unittypes.First;
 while not dm.unittypes.Eof do begin
     packpos.unitcom.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
     dm.unittypes.Next;
   end;

 if packtypes.FieldByName('sert').Value=1 then
  packpos.sertcom.ItemIndex:=0;

 packpos.unitcom.ItemIndex:=packpos.unitcom.Items.IndexOfObject(pointer(integer(packtypes.FieldByName('unittype_id').Value)));
 packpos.cust_com.ItemIndex:=packpos.cust_com.Items.IndexOfObject(pointer(integer(packtypes.FieldByName('cust_id').Value)));
 packpos.cust_com.Enabled:=false;
 packpos.Label6.Caption:='change';
 packpos.IBQuery1.Active:=true;

 if pg1.ActivePageIndex=1 then
  begin
   //packpos.Label7.Visible:=false;
    packpos.Label8.Visible:=false;
    packpos.cust_com.Visible:=false;
    //packpos.packprice.Visible:=false;
  end;

 packpos.showmodal;
  end;


end;


procedure Tprice.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
   position: integer;
   searchpos,searchpos1,searchstr: string;
begin



if key=vk_return then
 begin
   if (Opener_price_type=1) and (CheckBox1.Checked) then
   packtypes.Next
  else
  begin
  cur_packtype_id:=packtypes.FieldByName('ptp_id').Value;
  cur_ptp_id:=packtypes.FieldByName('ptp_id').Value;
   //ShowMessage(inttostr(cur_ptp_id));
if (opener_price_type=1) then begin
  if ssAlt in Shift then
    begin
searchpos:=copy(packtypes.FieldByName('oemcode').AsString,0,4)+ '%" and p.packtypename like "'+copy(packtypes.FieldByName('packtypename').AsString,1,pos(' ',packtypes.FieldByName('packtypename').AsString)-1);
searchpos1:=copy(packtypes.FieldByName('oemcode').AsString,0,4)+ '%" and p.packtypename like "'+copy(packtypes.FieldByName('packtypename').AsString,1,pos(',',packtypes.FieldByName('packtypename').AsString)-1);

if length(searchpos)<length(searchpos1) then
   searchstr:=searchpos;
if length(searchpos1)<length(searchpos) then
   searchstr:=searchpos1;
if length(searchpos)=length(searchpos1) then
   searchstr:=searchpos;


   Screen.Cursor:=crHourGlass;
   DBGrid3.Visible:=true;
   split.Visible:=true;
   DBGrid1.Columns.Items[5].Visible:=false;
   DBGrid1.Columns.Items[2].Width:=220;
   DBGrid3.Width:=420;
   packtypes1.Active:=false;
   packtypes1.sql.Clear;
   packtypes1.SQL.Add(' select pc.sert, pc.packtype_id ,pc.oemcode ,p.packtypename, p.ptitle, p.title_ch, pc.packprice, c.client_name, c.client_id, pc.ptp_id, ');
   packtypes1.SQL.Add(' pc.send_id as cust_id from PACKTYPES  p, packtype_price pc, clients c where p.packtype_id=pc.packtype_id and ptype=5 and pc.delflag=0 and pc.send_id=c.client_id ');
   packtypes1.SQL.Add(' and pc.cnf_id=-1 and pc.oemcode like "'+searchstr+'%" order by packtypename');
   packprice:=packtypes.FieldByName('packprice').Value;
   //position:=pos(packtypes.FieldByName('packtypename').AsString,'');
   //ShowMessage(copy(packtypes.FieldByName('packtypename').AsString,1,pos(' ',packtypes.FieldByName('packtypename').AsString)-1));
   screen.Cursor:=crHourGlass;
   packtypes1.Active:=true;
   screen.Cursor:=crDefault;
   dbgrid1.Enabled:=false;
   dbgrid3.SetFocus;
 end;

 if price.actiontoolbar1.ActionControls[2].Visible=true
  then
   begin
price.Close;
formaddpackexecute(1);
   end;

 end
  else
  begin

 if (Length(packtypes.FieldByName('oemcode').AsString)<6) or (ssAlt in Shift) then
     begin

   searchpos:=copy(packtypes.FieldByName('oemcode').AsString,0,4)+ '%" and p.packtypename like "'+copy(packtypes.FieldByName('packtypename').AsString,1,pos(' ',packtypes.FieldByName('packtypename').AsString)-1);
   searchpos1:=copy(packtypes.FieldByName('oemcode').AsString,0,4)+ '%" and p.packtypename like "'+copy(packtypes.FieldByName('packtypename').AsString,1,pos(',',packtypes.FieldByName('packtypename').AsString)-1);

if length(searchpos)<length(searchpos1) then
   searchstr:=searchpos;
if length(searchpos1)<length(searchpos) then
   searchstr:=searchpos1;
if length(searchpos)=length(searchpos1) then
   searchstr:=searchpos;


   Screen.Cursor:=crHourGlass;
   DBGrid3.Visible:=true;
   split.Visible:=true;
   DBGrid1.Columns.Items[5].Visible:=false;
   DBGrid1.Columns.Items[2].Width:=220;
   DBGrid3.Width:=420;
   packtypes1.Active:=false;
   packtypes1.sql.Clear;
   packtypes1.SQL.Add(' select pc.sert, pc.packtype_id ,pc.oemcode ,p.packtypename, p.ptitle, p.title_ch, pc.packprice, c.client_name, c.client_id, pc.ptp_id, ');
   packtypes1.SQL.Add(' pc.send_id as cust_id from PACKTYPES  p, packtype_price pc, clients c where p.packtype_id=pc.packtype_id and ptype=5 and pc.delflag=0 and pc.send_id=c.client_id ');
   packtypes1.SQL.Add(' and pc.cnf_id=-1 and pc.oemcode like "'+searchstr+'%" order by packtypename');
   packprice:=packtypes.FieldByName('packprice').Value;
   //position:=pos(packtypes.FieldByName('packtypename').AsString,'');
   //ShowMessage(copy(packtypes.FieldByName('packtypename').AsString,1,pos(' ',packtypes.FieldByName('packtypename').AsString)-1));
   screen.Cursor:=crHourGlass;
   packtypes1.Active:=true;
   screen.Cursor:=crDefault;
   //bmark:=packtypes.DataSource.DataSet.GetBookmark;
   //packtypes.DataSource.DataSet.DisableControls;
   dbgrid1.Enabled:=false;
   dbgrid3.SetFocus;
      end
     else
  openPriceForm;
  end;
 end;
 end;


 end;

procedure Tprice.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if CheckBox1.Checked then
begin
 if (length(packtypes.FieldByName('oemcode').AsString)<6)  and (DBGrid1.SelectedField.Index=12) and (CheckBox1.Checked) then
begin
  key:=#0;
end
 else begin
 if not (key in ['0'..'9',',','.']) then
  begin
  if ord(key)<>vk_back then
    begin
     key:=#0;
    end;

  end;
 if key='.' then key:=',';
end;
end;
end;

procedure Tprice.refreshExecute(Sender: TObject);
 var
 dkmark: tbookmark;
begin
 dkmark:=packtypes.GetBookmark;
 dm.price_tran.Active:=true;
 dm.price_tran.Active:=false;
 packtypes.Active:=false;
 packtypes.Active:=true;
 packtypes.GotoBookmark(dkmark);
 packtypes.FreeBookmark(dkmark);
end;

procedure Tprice.newExecute(Sender: TObject);
begin
packpos:=tpackpos.create(application);
dm.clients.Active:=true;
    dm.clients.First;
  while not dm.clients.Eof do begin
     packpos.cust_com.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));
     dm.clients.Next;
   end;

 dm.unittypes.Active:=false;
 dm.unittypes.Active:=true;
 dm.unittypes.First;
 while not dm.unittypes.Eof do begin
     packpos.unitcom.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
     dm.unittypes.Next;
   end;
packpos.unitcom.ItemIndex:=0;

 if (packtypes.RecordCount=0) then
  packpos.cust_com.ItemIndex:=0
 else
  packpos.cust_com.ItemIndex:=packpos.cust_com.Items.IndexOfObject(pointer(integer(packtypes.FieldByName('cust_id').Value)));

  packpos.showmodal;
end;

procedure Tprice.LabeledEdit1Enter(Sender: TObject);
begin
 ActivateKeyboardLayout(LoadKeyboardLayout('00000419',0),0);
end;

procedure Tprice.LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
 then
   begin
    setfilter;
   end;
 end;

procedure Tprice.Action1Execute(Sender: TObject);
begin
 price.Close;
 formaddpackexecute(3);
{}
end;

procedure Tprice.N1Click(Sender: TObject);
begin
 if MessageDlg('Удалить позицию из справочника?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
  delpos.SQL.Clear;
  delpos.SQL.Add('update packtypes set ptype=2 where packtype_id='+packtypes.fieldbyname('packtype_id').AsString);
  delpos.Prepare;
  delpos.ExecQuery;
  pricetran.CommitRetaining;

  delpos.SQL.Clear;
  delpos.SQL.Add('update packtype_price set delflag=1 where packtype_id='+packtypes.fieldbyname('packtype_id').AsString);
  delpos.Prepare;
  delpos.ExecQuery;
  pricetran.CommitRetaining;

  pricetran.Active:=false;
  pricetran.Active:=true;
  packtypes.Active:=false;
  packtypes.active:=true;
     end;
 end;

procedure Tprice.N2Click(Sender: TObject);
begin
if MessageDlg('Удалить позицию из справочника?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
 delprice.Params.Clear;
 delprice.ParamByName('packtype_id').Value:=packtypes.FieldByName('packtype_id').Value;
 delprice.ParamByName('ptp_id').Value:=packtypes.FieldByName('ptp_id').Value;
 delprice.Prepare;
 delprice.ExecProc;
 dm.IBTransaction2.CommitRetaining;
 packtypes.Active:=false;
 packtypes.Active:=true;
    end;
end;

procedure Tprice.FormShow(Sender: TObject);
begin

  LabeledEdit1.SetFocus;
  ActivateKeyboardLayout(LoadKeyboardLayout('00000419',0),0);
end;



procedure Tprice.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 IF  gdSelected   IN State
	Then Begin
   TDBGrid(Sender).Canvas.Brush.Color:= RGB(198,212,239);
	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   TDBGrid(Sender).Canvas.pen.Color:=RGB(100,100,255);
   TDBGrid(Sender).Canvas.pen.Style:=pssolid;
   TDBGrid(Sender).Canvas.pen.Width:=1;
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Top);
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom-1);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom-1);
 	End;
 TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Tprice.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 IF  gdSelected   IN State
	Then Begin
   TDBGrid(Sender).Canvas.Brush.Color:= RGB(198,212,239);
	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   //TDBGrid(Sender).Canvas.Font.Size:=10;

   TDBGrid(Sender).Canvas.pen.Color:=RGB(100,100,255);
   TDBGrid(Sender).Canvas.pen.Style:=pssolid;
   TDBGrid(Sender).Canvas.pen.Width:=1;
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Top);
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom-1);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom-1);

		End;
	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Tprice.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 begin
 if (key=vk_return) and (packtypes1.RecordCount<>0) then
 begin
 cur_ptp_id:=packtypes1.FieldByName('ptp_id').Value;
 //ShowMessage(inttostr(cur_ptp_id));
 if Opener_price_type<>1 then
  begin

   {ibsql1.SQL.Clear;
   ibsql1.SQL.Add('update packtypes set oemcode='+packtypes1.FieldByName('oemcode').AsString+' where packtype_id='+packtypes.FieldByName('packtype_id').AsString);
   IBSQL1.Prepare;
   IBSQL1.ExecQuery;
   dm.IBTransaction2.CommitRetaining;
   ibsql1.SQL.Clear;
   ibsql1.SQL.Add('update packtype_price set oemcode='+packtypes1.FieldByName('oemcode').AsString+' where ptp_id='+packtypes.FieldByName('ptp_id').AsString);
   IBSQL1.Prepare;
   IBSQL1.ExecQuery;
   dm.IBTransaction2.CommitRetaining;}


   DBGrid1.Enabled:=true;
   packtypes.Active:=false;
   packtypes.Active:=true;
   //packtypes.DataSource.DataSet.GotoBookmark(bmark);
   //packtypes.DataSource.DataSet.FreeBookmark(bmark);
   //packtypes.DataSource.DataSet.EnableControls;
   packtypes.Locate('ptp_id', inttostr(cur_packtype_id), [loCaseInsensitive ,loPartialKey]);
   DBGrid1.Enabled:=false;
   openPriceForm;
  end;
 end;
end;

procedure Tprice.tractExecute(Sender: TObject);
begin
if showtr then
  begin
    dbgrid1.Columns[4].Visible:=true;
    dbgrid1.Columns[4].Width:=217;
    dbgrid1.Columns[5].Visible:=true;
    dbgrid1.Columns[5].Width:=217;
    showtr:=false;
  end
  else begin
    dbgrid1.Columns[4].Visible:=false;
    dbgrid1.Columns[5].Visible:=false;
    showtr:=true;
  end;
end;

procedure Tprice.tton1Click(Sender: TObject);
begin
 ibsql1.SQL.clear;
 ibsql1.SQL.Add('delete from bufer where id='+ibquery1.fieldbyname('id').AsString);
 ibsql1.Prepare;
 ibsql1.ExecQuery;
 dm.IBTransaction2.CommitRetaining;
 ibquery1.Active:=false;
 ibquery1.Active:=true;
 bufprop.Active:=false;
 bufprop.active:=true;

 price.StaticText1.Caption:=price.StaticText1.Caption+'   '+'Кол-во: '+price.bufprop.Fields[0].AsString+' Вес: '+price.bufprop.Fields[1].AsString+' Мест: '+price.bufprop.Fields[2].AsString+
     '    Остаток: Кол-во: '+floattostr(flyform.fly_pos.fieldbyname('poscount').Value-price.bufprop.Fields[0].value)+
      '  Вес: '+inttostr(flyform.fly_pos.fieldbyname('posweight').Value-price.bufprop.Fields[1].value)+
      '  Мест: '+inttostr(flyform.fly_pos.fieldbyname('bagpos').Value-price.bufprop.Fields[2].value);

end;

procedure Tprice.FlatSpeedButton2Click(Sender: TObject);
begin
  DBGrid1DblClick(dbgrid1);
end;

procedure Tprice.FlatSpeedButton3Click(Sender: TObject);
begin
 actionmanager1.Actions[2].Execute;
end;

procedure Tprice.cust_comChange(Sender: TObject);
begin
 setfilter;
end;

procedure Tprice.loadExecute(Sender: TObject);
begin
 {}
end;

procedure Tprice.load1Execute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile,str : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;

begin
  if (cust_com.ItemIndex=0)
    then
    showmessage('Выберите сначала отправителя')
  else
   begin

   if od.Execute
    then
     begin
   sleep(150);
   screen.Cursor:=crHourGlass;

   delpos.SQL.Clear;
   delpos.SQL.Add('update packtypes set ptype=2 where cust_id='+inttostr(integer(integer(cust_com.Items.Objects[cust_com.ItemIndex]))));
   delpos.Prepare;
   delpos.ExecQuery;
   pricetran.CommitRetaining;

   ExcelApp := CreateOleObject('Excel.Application');
   ExcelApp.Application.EnableEvents := false;
   Workbook := ExcelApp.WorkBooks.Add(od.filename);
   str:='%%';
   i:=1;
     while str<>'' do
      begin
      loadp.ParamByName('packtype_id').Value:=0;
      loadp.ParamByName('punit').Value:=0;
      loadp.ParamByName('sunit').Value:=0;

      if pg1.ActivePageIndex=0 then
       loadp.ParamByName('ptype').Value:=0
       else
       loadp.ParamByName('ptype').Value:=5;

      loadp.ParamByName('outerid').Value:=0;
      loadp.ParamByName('createdate').Value:=datetostr(now);
      loadp.ParamByName('lupdate').Value:=datetostr(now);
      loadp.ParamByName('oemcode').Value:=WorkBook.worksheets[1].cells[i,2].value;
      loadp.ParamByName('prntorder').Value:=0;
      loadp.ParamByName('cn_id').Value:=49;

      if pg1.ActivePageIndex=0 then
       loadp.ParamByName('packprice').Value:=WorkBook.worksheets[1].cells[i,3].value
       else
       loadp.ParamByName('packprice').Value:=0;

      loadp.ParamByName('packtypeprice1').Value:=0;
      loadp.ParamByName('packtypeprice2').Value:=0;
      loadp.ParamByName('maysale').Value:=0;
      loadp.ParamByName('groupid').Value:=0;
      loadp.ParamByName('goodk_id').Value:=0;
      loadp.ParamByName('fast_id').Value:=0;
      loadp.ParamByName('barcode').Value:='0000';
      loadp.ParamByName('packtypename').Value:=WorkBook.worksheets[1].cells[i,1].value;


    if WorkBook.worksheets[1].cells[i,4].value=''
       then
      loadp.ParamByName('ptitle').Value:=''
       else
      loadp.ParamByName('ptitle').Value:=WorkBook.worksheets[1].cells[i,4].value;

      if pg1.ActivePageIndex=0 then
      loadp.ParamByName('cust_id').Value:=integer(integer(cust_com.Items.Objects[cust_com.ItemIndex]))
      else
      loadp.ParamByName('cust_id').Value:=-1;

      if pg1.ActivePageIndex=0 then
       loadp.ParamByName('cnf_id').Value:=dm.config.fieldByname('cnf_id').Value
      else
       loadp.ParamByName('cnf_id').Value:=-1;


      loadp.Prepare;
      loadp.ExecProc;
      pricetran.CommitRetaining;
      str:=WorkBook.worksheets[1].cells[i+1,1].value;
       //showform.Label2.Caption:=inttostr(i);
       //showform.Label2.Refresh;
      inc(i);
      end;
     end;
    packtypes.Active:=false;
    packtypes.Active:=true;
   end;
   {}
   screen.Cursor:=crDefault;
{}
end;

procedure Tprice.load2Execute(Sender: TObject);
 var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile,str : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;

begin
  if (cust_com.ItemIndex=0) and (pg1.ActivePageIndex=0)
    then
    showmessage('Выберите сначала отправителя')
  else
   begin

   if od.Execute
    then
     begin
       //load_from_exl(od.FileName);
       showform:=tshowform.create(application);
       showform.show;
       showform.Refresh;
       showform.StaticText2.caption:='Загрузка справочника цен';
       showform.Refresh;
       screen.Cursor:=crHourGlass;
       load_from_exl(od.FileName);
       screen.Cursor:=crDefault;
       showform.Close;
     end;
   end;
   {}
   screen.Cursor:=crDefault;
end;

procedure Tprice.Button1Click(Sender: TObject);
begin
 pg1.ActivePageIndex:=1;
end;

procedure Tprice.insExecute(Sender: TObject);
begin
{}
if DBGrid3.Focused then
         dbgrid1.SetFocus
    else
      begin
  LabeledEdit1.SetFocus;
  LabeledEdit1.SelectAll;
      end;
end;

procedure Tprice.CheckBox1Click(Sender: TObject);
begin
 if (checkbox1.Checked)
  then
   begin
 dbgrid1.Options:=[dgediting,dgtitles,dgcolumnresize,dgcollines,dgrowlines,dgtabs,dgconfirmdelete,dgcancelonexit];

   end
  else
   begin
    dbgrid1.Options:=[dgrowselect,dgtitles,dgcolumnresize,dgcollines,dgrowlines,dgtabs,dgconfirmdelete,dgcancelonexit,dgmultiselect];

   end;

 dbgrid1.SetFocus();
end;

procedure Tprice.CheckBox2Click(Sender: TObject);
begin
 setfilter;
end;

procedure Tprice.CheckBox3Click(Sender: TObject);
begin
 label2.Visible:=CheckBox3.Checked;
 label3.Visible:=CheckBox3.Checked;
 DateTimePicker1.Visible:=CheckBox3.Checked;
 DateTimePicker2.Visible:=CheckBox3.Checked;
 SpeedButton4.Visible:=CheckBox3.Checked;

end;

end.
