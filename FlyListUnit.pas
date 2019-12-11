unit FlyListUnit;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnMan, ActnCtrls, XPStyleActnCtrls,
  ActnList, ToolWin, ComCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery,
  DBCtrls, IBSQL, Buttons, Mask, 
  Menus, shellapi, ExcelXP, AxCtrls, OleCtrls, 
  IBDatabase, IBStoredProc, math,comobj, IBUpdateSQL, ImgList;

type
  Tflyform = class(TForm)
    CoolBar1: TCoolBar;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    CoolBar2: TCoolBar;
    Panel2: TPanel;
    CoolBar3: TCoolBar;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    openfly: TAction;
    refresh: TAction;
    exit: TAction;
    fly_grid: TDBGrid;
    flylist: TIBQuery;
    fly_pos: TIBQuery;
    new: TAction;
    DBNavigator1: TDBNavigator;
    Bevel1: TBevel;
    CheckBox1: TCheckBox;
    Bevel4: TBevel;
    Bevel5: TBevel;
    newpos: TAction;
    dsfly: TDataSource;
    choperstate2: TAction;
    IBSQL1: TIBSQL;
    choperstate1: TAction;
    SpeedButton1: TSpeedButton;
    setcomment: TIBSQL;
    dsflypos: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    filterprop: TIBQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    Bevel3: TBevel;
    report: TAction;
    flytran: TIBTransaction;
    DataSource1: TDataSource;
    Label13: TLabel;
    Label14: TLabel;
    delpart: TIBStoredProc;
    packing: TIBQuery;
    packing_all: TIBQuery;
    Action5: TAction;
    Action2: TAction;
    poslist: TIBQuery;
    comment: TDBEdit;
    IBUpdateSQL1: TIBUpdateSQL;
    proc1: TIBStoredProc;
    updatefly: TIBSQL;
    ImageList1: TImageList;
    IBQuery1: TIBQuery;
    upd_fly: TIBStoredProc;
    flylistORD_ID: TIntegerField;
    flylistORDNUMBER: TIntegerField;
    flylistOUTNUM: TIBStringField;
    flylistPOSITIONS: TIntegerField;
    flylistPOSWEIGHT: TIntegerField;
    flylistPOSSUMM: TFloatField;
    flylistCOMMENT: TIBStringField;
    flylistCUST_ID: TIntegerField;
    flylistCREATEDATE: TDateTimeField;
    flylistOPERSTATE: TIntegerField;
    newitem: TIBStoredProc;
    flylistCLIENT_NAME: TIBStringField;
    flylistTOFLYNAME: TIBStringField;
    fly_posID: TIntegerField;
    fly_posPACKTYPE_ID: TIntegerField;
    fly_posPOSPRICE: TFloatField;
    fly_posTOTALSUMM: TFloatField;
    fly_posORD_ID: TIntegerField;
    fly_posPACKTYPENAME: TIBStringField;
    fly_posOEMCODE: TIBStringField;
    Label6: TLabel;
    delord: TIBStoredProc;
    delorditems: TIBStoredProc;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    flylistCL_ADDRESS: TIBStringField;
    invoice: TAction;
    fly_posBAGPOS: TIntegerField;
    fly_posPACKTYPENAME1: TIBStringField;
    IBUpdateSQL2: TIBUpdateSQL;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    newpack: TIBStoredProc;
    pricetran: TIBTransaction;
    fly_posPOSCOUNT: TFloatField;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    IBStoredProc1: TIBStoredProc;
    CheckBox2: TCheckBox;
    Bevel2: TBevel;
    transitems: TIBQuery;
    originload: TAction;
    fly_posPTYPE: TSmallintField;
    pospack: TIBQuery;
    DataSource5: TDataSource;
    packing1: TIBQuery;
    bagpack: TAction;
    flylistTRANS_ID: TIntegerField;
    flylistUSER_ID: TIntegerField;
    Label7: TLabel;
    DBText4: TDBText;
    Label10: TLabel;
    DBText5: TDBText;
    fly_posLUPDATE: TDateTimeField;
    fly_posPOSWEIGHT: TFloatField;
    spez: TAction;
    newlog: TIBStoredProc;
    flylistBAGPOS: TIntegerField;
    flylistUSERNAME: TIBStringField;
    history: TAction;
    histor: TIBQuery;
    N8: TMenuItem;
    N9: TMenuItem;
    Bevel7: TBevel;
    Label11: TLabel;
    Edit1: TEdit;
    town_com1: TComboBox;
    Label12: TLabel;
    setfilter_off: TAction;
    usercom: TComboBox;
    Label15: TLabel;
    Label5: TLabel;
    Bevel8: TBevel;
    N10: TMenuItem;
    N11: TMenuItem;
    packlistvagon: TAction;
    SpeedButton5: TSpeedButton;
    loadord: TIBStoredProc;
    od1: TOpenDialog;
    loadzakl: TIBStoredProc;
    fly_posZAKL_ID: TIntegerField;
    fly_posOEMCODE_LONG: TIBStringField;
    fly_posZAKL_NAME: TIBStringField;
    fly_posZAKL_DOG: TIBStringField;
    fly_posZAKL_DATE: TDateTimeField;
    fly_posUNITTITLE: TIBStringField;
    fly_posUNITTYPE: TSmallintField;
    fly_posPACKTYPEPRICE1: TFloatField;
    fly_posPACKTYPENAME2: TIBStringField;
    view: TAction;
    view1: TAction;
    view2: TAction;
    view3: TAction;
    N12: TMenuItem;
    updzakl_id: TIBStoredProc;
    choose: TAction;
    print_all: TAction;
    ImageList2: TImageList;
    fly_posTOTALSUMM_DEC: TFloatField;
    fly_posPOSCOUNT_DEC: TFloatField;
    fly_posPOSPRICE_DEC: TFloatField;
    CheckBox3: TCheckBox;
    helper: TIBQuery;
    newtm: TIBStoredProc;
    fly_posPTITLE: TIBStringField;
    fly_posTITLE_CH: TIBStringField;
    flylistCNF_ID: TIntegerField;
    flylistSEND_ID: TIntegerField;
    flylistSENDERS: TIBStringField;
    fly_posPTP_ID: TIntegerField;
    InvoiceEng: TAction;
    InvoiceCh: TAction;
    PackListEng: TAction;
    PacklistCh: TAction;
    flylistNWEIGHT: TFloatField;
    fly_posNWEIGHT: TFloatField;
    historLOG_ID: TIntegerField;
    historLOGTYPE: TSmallintField;
    historLOGCONTENT: TIBStringField;
    historLOGDATE: TDateTimeField;
    historORD_ID: TIntegerField;
    historID: TIntegerField;
    historUSER_ID: TIntegerField;
    historUSERNAME: TIBStringField;
    historLOGNAME: TIBStringField;
    newlogit: TIBStoredProc;
    Bevel9: TBevel;
    Action1: TAction;
    Action3: TAction;
    Action4: TAction;
    dshistor: TDataSource;
    logitems: TIBQuery;
    grpanel: TPanel;
    fly_pos_grid: TDBGrid;
    dstm: TDataSource;
    split: TSplitter;
    tmgrid: TDBGrid;
    tmquery: TIBQuery;
    SpeedButton6: TSpeedButton;
    recalctm: TIBStoredProc;
    fly_posPOSKOL: TFloatField;
    fly_posORDNUM: TIntegerField;
    updatetransportpos: TIBSQL;
    CheckBox4: TCheckBox;
    N13: TMenuItem;
    inspacking: TIBQuery;
    newpacking: TIBStoredProc;
    inspackingPACK_ID: TIntegerField;
    inspackingBAG_ID: TIntegerField;
    inspackingCNV_ID: TIntegerField;
    inspackingPACKKOL: TIntegerField;
    inspackingTM_ID: TIntegerField;
    upd: TIBSQL;
    Bevel6: TBevel;
    Action6: TAction;
    exportbuh: TIBQuery;
    fly_posPOSPRICE_WEIGHT: TFloatField;
    fly_posBAGPOSPRESS: TIntegerField;
    fly_posPOSCOUNTPRESS: TFloatField;
    fly_posOPERSTATE: TSmallintField;
    fly_posSERT: TSmallintField;
    ComboBox1: TComboBox;
    Action7: TAction;
    Action8: TAction;
    send_com: TComboBox;
    SpeedButton7: TSpeedButton;
    fly_posTOTALSUMMCUST: TFloatField;
    flylistCURS: TFloatField;
    flylistNDS: TFloatField;
    flylistCULCTYPE: TSmallintField;
    fly_posPRICE_INV: TFloatField;
    fly_posPACKTYPENAME_LONG: TIBStringField;
    fly_posdeltaw: TFloatField;
    flylistDELTAW: TFloatField;
    Label16: TLabel;
    DBText6: TDBText;
    fly_posbagweight: TFloatField;
    fly_posunitweight: TFloatField;
    fly_posGK_ID: TSmallintField;
    fly_posPOSCOUNT2: TFloatField;
    fly_posPOSWEIGHT2: TFloatField;
    fly_posNWEIGHT2: TFloatField;
    fly_posgk: TStringField;
    reculc_ord_summ: TIBQuery;
    Edit2: TEdit;
    CheckBox5: TCheckBox;
    SpeedButton8: TSpeedButton;
    transfer_weight: TIBStoredProc;
    fly_posbagweight2: TFloatField;
    fly_posunitweight2: TFloatField;
    pack_list_transfer: TAction;
    pack_list_transferENG: TAction;
    pack_list_transferCH: TAction;
    pack_list_transferSERT: TAction;
    fly_posPRICE_INV2: TFloatField;
    fly_posTOTALSUMM2: TFloatField;
    flylistPOSWEIGHT2: TFloatField;
    flylistNWEIGHT2: TFloatField;
    flylistDIFFERW: TIntegerField;
    flylistTRANSFERW: TIntegerField;
    Label17: TLabel;
    DBText7: TDBText;
    Label18: TLabel;
    DBText8: TDBText;
    changeitem: TIBStoredProc;
    spec_transfer: TAction;
    invoice_transfer: TAction;
    invoice_transferENG: TAction;
    invoice_transferCH: TAction;
    invoice_transferSERT: TAction;
    reculc_gk: TAction;
    reculcgk: TIBStoredProc;
    fly_pospack2: TFloatField;
    Action9: TAction;
    fly_posTRANSFER_FLAG: TIBStringField;
    fly_posORIGIN_WEIGHT: TFloatField;
    fly_posDELTAW1: TFloatField;
    CheckBox6: TCheckBox;
    Action10: TAction;
    Action11: TAction;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure openflyExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fly_gridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure fly_gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure fly_pos_gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure newExecute(Sender: TObject);
    procedure newposExecute(Sender: TObject);
    procedure choperstate2Execute(Sender: TObject);
    procedure choperstate1Execute(Sender: TObject);
    procedure refreshExecute(Sender: TObject);
    procedure fly_gridDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure fly_pos_gridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure setfilter(fly_id: integer);
    procedure trt_comChange(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2Click(Sender: TObject);
    procedure town_comChange(Sender: TObject);
    procedure fly_pos_gridDblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure reportExecute(Sender: TObject);
    procedure reportxlsExecute(Sender: TObject);
    procedure serverreportExecute(Sender: TObject);
    procedure delivercomChange(Sender: TObject);
    procedure CustcomChange(Sender: TObject);
    procedure towncomChange(Sender: TObject);
    procedure invoiceExecute(Sender: TObject);
    procedure Action22Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Panel4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Action2Execute(Sender: TObject);
    procedure AWBExecute(Sender: TObject);
    procedure MANIFESTExecute(Sender: TObject);
    procedure loadposExecute(Sender: TObject);
    procedure commentChange(Sender: TObject);
    procedure load_townExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure dsflyposDataChange(Sender: TObject; Field: TField);
    procedure originloadExecute(Sender: TObject);
    procedure bagpackExecute(Sender: TObject);
    procedure spezExecute(Sender: TObject);
    procedure historyExecute(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure setfilter_fly();
    procedure town_com1Change(Sender: TObject);
    procedure setfilter_offExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure packlistvagonExecute(Sender: TObject);
    procedure viewExecute(Sender: TObject);
    procedure view1Execute(Sender: TObject);
    procedure view2Execute(Sender: TObject);
    procedure view3Execute(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure chooseExecute(Sender: TObject);
    procedure print_allExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure InvoiceEngExecute(Sender: TObject);
    procedure InvoiceChExecute(Sender: TObject);
    procedure PackListEngExecute(Sender: TObject);
    procedure PacklistChExecute(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure tmgridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N13Click(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure send_comChange(Sender: TObject);
    procedure fly_posCalcFields(DataSet: TDataSet);
    procedure CheckBox5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure invoice_transferExecute(Sender: TObject);
    procedure pack_list_transferExecute(Sender: TObject);
    procedure pack_list_transferENGExecute(Sender: TObject);
    procedure pack_list_transferCHExecute(Sender: TObject);
    procedure pack_list_transferSERTExecute(Sender: TObject);
    procedure spec_transferExecute(Sender: TObject);
    procedure invoice_transferENGExecute(Sender: TObject);
    procedure invoice_transferCHExecute(Sender: TObject);
    procedure invoice_transferSERTExecute(Sender: TObject);
    procedure reculc_gkExecute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure fly_pos_gridKeyPress(Sender: TObject; var Key: Char);
    procedure Action10Execute(Sender: TObject);
    procedure Action11Execute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  flyform: Tflyform;
  pageindex: integer;
  exitblock: integer;
  sqlmain: tstrings;
  fly_id: integer;
  move: boolean;
  X0, Y0: integer;
  modiffly: boolean;
implementation

uses MainUnit, dmunit,  NewFlyUnit,  PriceUnit,funcUnit,
  AddPackingUnit, CnvUnit, AddZaklUnit, ShowColumnUnit, oemcodevokb;



{$R *.dfm}
procedure tflyform.setfilter_fly();
 var
 y,m,d: word;
 dateopen:string;
 begin
  {}
  screen.Cursor:=crHourGlass;
  flylist.Active:=false;
  flylist.SQL.Clear;
  flylist.SQL.Add('select o.*, c.client_name, t.toflyname, c.cl_address,c.client_name as clname, u.username as username, c1.client_name as senders');
  flylist.SQL.Add(' from orders o, clients c, toperstate t, users u, clients c1 where c.client_id=o.cust_id and c1.client_id=o.send_id and t.to_id=o.operstate and u.user_id=o.user_id ');


   if checkbox1.Checked=false then
    flylist.SQL.Add(' and operstate<>3');



   if edit1.Text<>''
    then
    flylist.SQL.Add(' and ordnumber='+edit1.Text);

  if town_com1.ItemIndex<>0 then begin
   flylist.SQL.Add(' and o.send_id='+inttostr(integer(integer(town_com1.Items.Objects[town_com1.ItemIndex]))));
   end;

 if usercom.ItemIndex<>0 then
   flylist.SQL.Add(' and o.user_id='+inttostr(integer(integer(usercom.Items.Objects[usercom.ItemIndex]))));

  if checkbox3.Checked=true then
    begin
     decodeDate(now,y,m,d);
     dateopen:='"01.01.'+inttostr(y)+'"';
     flylist.SQL.Add(' and o.createdate>='+dateopen);
    end;



    flylist.SQL.Add(' and o.cnf_id='+dm.config.fieldbyname('cnf_id').AsString+' order by ord_id desc');
    flylist.Active:=true;
    screen.Cursor:=crdefault;




 end;


procedure tflyform.setfilter(fly_id: integer);
var
sql, sql1: string;
begin
screen.cursor:=crHourglass;

//flylist.Active:=false;
//flylist.Active:=true;
fly_pos.active:=true;
 if tmgrid.Visible then
  tmquery.Active:=true;
filterprop.Active:=true;
reculc_ord_summ.Active:=false;
reculc_ord_summ.Params[0].Value:=current_fly;
reculc_ord_summ.Active:=true;
statusbar1.Panels[1].Text:='';
statusbar1.Panels[1].Text:='Позиций: '+filterprop.Fields[0].AsString+'    Вес: '+filterprop.Fields[1].AsString+'    Сумма: '+filterprop.Fields[2].AsString;
StatusBar1.Panels[2].Text:='Вес (ХОЗ):  '+reculc_ord_summ.fieldbyname('sumhoz1').AsString+'      '+'Вес (ОО):  '+reculc_ord_summ.fieldbyname('sumoo1').AsString+'        '+'Общий вес: '+reculc_ord_summ.fieldbyname('totalw').AsString;
StatusBar1.Panels[3].Text:='Добавлено:  '+reculc_ord_summ.fieldbyname('plussumm').AsString+'      '+'Снято:  '+reculc_ord_summ.fieldbyname('minussumm').AsString;
screen.cursor:=crDefault;
 end;





procedure Tflyform.Button1Click(Sender: TObject);
begin

fly_pos_grid.Font.Size:=10;
end;

procedure Tflyform.CheckBox1Click(Sender: TObject);
begin
 setfilter_fly;
// checkbox3.Caption:=inttostr(user_id_global)
end;

procedure Tflyform.openflyExecute(Sender: TObject);
begin
 if (pageindex=2) then begin
   label13.Caption:=inttostr(flylist.fieldbyname('ordnumber').Value);
   label14.Caption:=datetostr(flylist.fieldbyname('createdate').Value);
   label6.Caption:=flylist.fieldbyname('outnum').Value;

   fly_pos.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
   fly_pos.ParamByName('oper').Value:=1;
   filterprop.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
   current_fly:=flylist.fieldbyname('ord_id').Value;
   current_trans:=flylist.fieldbyname('trans_id').Value;
   CheckBox4.Checked:=false;
   CheckBox4.Caption:='Удаленные';

   coolbar2.Visible:= not coolbar2.Visible;
   coolbar3.Visible:= not coolbar3.Visible;
   fly_pos_grid.Visible:= not fly_pos_grid.Visible;
   grpanel.Visible:= not grpanel.Visible;
   fly_grid.Visible:= not fly_grid.Visible;
   flyform.Caption:='Инвойс № '+inttostr(flylist.fieldbyname('ordnumber').Value)+'->'+flylist.fieldbyname('senders').AsString;
   send_com.ItemIndex:=send_com.Items.IndexOfObject(pointer(integer(flylist.FieldByName('cust_id').Value)));

   //label16.Caption:=flylist.fieldbyname('senders').AsString;
   actionmanager1.ActionBars[0].Items[0].Caption:='Назад';
   actionmanager1.ActionBars[0].Items[1].Visible:= not actionmanager1.ActionBars[0].Items[1].Visible;
   //actionmanager1.ActionBars[0].Items[2].Visible:= not actionmanager1.ActionBars[0].Items[2].Visible;
   actionmanager1.ActionBars[0].Items[3].Visible:= not actionmanager1.ActionBars[0].Items[3].Visible;
   actionmanager1.ActionBars[0].Items[4].Visible:= not actionmanager1.ActionBars[0].Items[4].Visible;
   actionmanager1.ActionBars[0].Items[5].Visible:= not actionmanager1.ActionBars[0].Items[5].Visible;
   actionmanager1.ActionBars[0].Items[6].Visible:= not actionmanager1.ActionBars[0].Items[6].Visible;
   actionmanager1.ActionBars[0].Items[7].Visible:= not actionmanager1.ActionBars[0].Items[7].Visible;
   grpanel.Align:=alclient;
   fly_pos_grid.SetFocus;
   pageindex:=1;
   setfilter(current_fly);
 end
 else
 begin
 if fly_pos.CachedUpdates then
   fly_pos.ApplyUpdates;
   fly_pos.Active:= not fly_pos.Active;
   filterprop.Active:= not filterprop.Active;
   flylist.Active:=true;

   statusbar1.Panels[1].Text:='';
   statusbar1.Panels[2].Text:='';
   statusbar1.Panels[3].Text:='';
   coolbar2.Visible:= not coolbar2.Visible;
   coolbar3.Visible:= not coolbar3.Visible;
   fly_pos_grid.Visible:= not fly_pos_grid.Visible;
   fly_grid.Visible:= not fly_grid.Visible;
   grpanel.Visible:= not grpanel.Visible;
   actionmanager1.ActionBars[0].Items[0].Caption:='Открыть';
   actionmanager1.ActionBars[0].Items[1].Visible:= not actionmanager1.ActionBars[0].Items[1].Visible;
  // actionmanager1.ActionBars[0].Items[2].Visible:= not actionmanager1.ActionBars[0].Items[2].Visible;
   actionmanager1.ActionBars[0].Items[3].Visible:= not actionmanager1.ActionBars[0].Items[3].Visible;
   actionmanager1.ActionBars[0].Items[4].Visible:= not actionmanager1.ActionBars[0].Items[4].Visible;
   actionmanager1.ActionBars[0].Items[5].Visible:= not actionmanager1.ActionBars[0].Items[5].Visible;
   actionmanager1.ActionBars[0].Items[6].Visible:= not actionmanager1.ActionBars[0].Items[6].Visible;
   actionmanager1.ActionBars[0].Items[7].Visible:= not actionmanager1.ActionBars[0].Items[7].Visible;
   flyform.Caption:='Список документов';
   fly_grid.Align:=alclient;
   fly_grid.SetFocus;
   pageindex:=2;
 end;
end;

procedure Tflyform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if flylist.CachedUpdates and modiffly
  then

   case application.MessageBox('Сохранить изменения?','Подтверждение',MB_YESNOCANCEL+MB_ICONQUESTION) of
      IDYES: flylist.ApplyUpdates;
      IDNO: flylist.CancelUpdates;
   end;
 action:=cafree;
//mainform.ibfly.Enabled:=true;

end;

procedure Tflyform.exitExecute(Sender: TObject);
begin
 close;
end;

procedure Tflyform.FormCreate(Sender: TObject);
begin
modiffly:=false;
//label5.Caption:=dm.users.fieldbyname('user_id').AsString;
pageindex:=2;
exitblock:=0;
    dm.clients.Active:=true;
    dm.clients.First;
  while not dm.clients.Eof do begin
     town_com1.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));

     dm.clients.Next;
   end;
    town_com1.ItemIndex:=0;

    dm.cust.Active:=true;
    dm.cust.First;
  while not dm.cust.Eof do begin
    send_com.Items.AddObject(dm.cust.fieldbyname('client_name').Value ,pointer(integer(dm.cust.FieldByName('client_id').Value)));
    dm.cust.Next;
   end;
    dm.cust.First;





    dm.usersw.Active:=false;
    dm.usersw.Active:=true;
    dm.usersw.First;
  while not dm.usersw.Eof do begin
     usercom.Items.AddObject(dm.usersw.fieldbyname('username').Value ,pointer(integer(dm.usersw.FieldByName('user_id').Value)));
     dm.usersw.Next;
   end;
   usercom.ItemIndex:=0;

end;

procedure Tflyform.fly_gridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
IF  gdSelected   IN State
	Then Begin
     if (flylist.FieldByName('operstate').Value=1) then
   TDBGrid(Sender).Canvas.Brush.Color:= clwhite
    else
    TDBGrid(Sender).Canvas.Brush.Color:=rgb(160,160,255) ;


	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   //TDBGrid(Sender).Canvas.Font.Size:=10;
   if (flylist.FieldByName('operstate').Value=1) then
   TDBGrid(Sender).Canvas.pen.Color:=RGB(255,160,160)
    else    TDBGrid(Sender).Canvas.pen.Color:=clnavy;
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
     if (flylist.FieldByName('operstate').Value=1)then
   TDBGrid(Sender).Canvas.Brush.Color:= clwhite
   else  TDBGrid(Sender).Canvas.Brush.Color:= RGB(220,220,255);
   TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
    end;
	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);

{}

end;

procedure Tflyform.fly_gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if key=vk_return then
  begin
    actionmanager1.Actions[1].Execute;
    exitblock:=1;
  end;


end;

procedure Tflyform.FormShow(Sender: TObject);
begin
 fly_grid.SetFocus;
end;

procedure Tflyform.fly_pos_gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{ if key=vk_return then
  begin
    newitem.ParamByName('opertype').Value:=2;
    newitem.ParamByName('ord_id').Value:=fly_pos.fieldbyname('ord_id').Value;
    newitem.ParamByName('id').Value:=fly_pos.fieldbyname('id').Value;
    formaddpackexecute(2);
   end; }
 {if key=vk_return then  begin
   fly_pos_grid.Options:=[dgediting,dgtitles,dgcolumnresize,dgcollines,dgrowlines,dgtabs,dgconfirmdelete,dgcancelonexit,dgmultiselect];
   fly_pos_grid.SelectedIndex:=1;
   end;  }
 if key=vk_return then
 begin
   if (CheckBox2.Checked) then
    fly_pos.Next
 end;

end;

procedure Tflyform.fly_pos_gridKeyPress(Sender: TObject; var Key: Char);
begin
if (CheckBox2.Checked) and (fly_pos_grid.SelectedField.Index=52) then
 begin
  if not (key in ['+','-']) then
  begin
  if ord(key)<>vk_back then
    begin
     key:=#0;
    end;
   end;
 end;
end;

procedure Tflyform.newExecute(Sender: TObject);
begin
 newfly:=tnewfly.create(application);
 newfly.color:=rgb(148,162,183);
 newordoper:=1;
 newfly.showmodal;
end;

procedure Tflyform.newposExecute(Sender: TObject);
begin
   SpeedButton2Click(SpeedButton2);
end;

procedure Tflyform.choperstate2Execute(Sender: TObject);
begin
{}

ibsql1.ParamByName('operstate').Value:=3;
ibsql1.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
fly_grid.Repaint;
ibsql1.ExecQuery;
flytran.CommitRetaining;
flylist.Active:=false;
flylist.Active:=true;
end;

procedure Tflyform.ComboBox1Change(Sender: TObject);
begin
 fly_pos.Active:=false;
  if ComboBox1.ItemIndex=1 then
   fly_pos.SQL.Strings[5]:=' and pc.sert=0';
  if ComboBox1.ItemIndex=2 then
   fly_pos.SQL.Strings[5]:=' and pc.sert=1';
  if ComboBox1.ItemIndex=0 then
   fly_pos.SQL.Strings[5]:='';

  fly_pos.Active:=true;
end;

procedure Tflyform.choperstate1Execute(Sender: TObject);
begin

ibsql1.ParamByName('operstate').Value:=1;
ibsql1.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
fly_grid.Repaint;
ibsql1.ExecQuery;
flytran.CommitRetaining;
flylist.Active:=false;
flylist.Active:=true;
end;

procedure Tflyform.reculc_gkExecute(Sender: TObject);
begin
 reculcgk.ParamByName('ord_id').Value:=current_fly;
 reculcgk.Prepare;
 reculcgk.ExecProc;
 flytran.CommitRetaining;
 setfilter(current_fly);
 fly_pos.Active:=false;
 fly_pos.Active:=true;
end;

procedure Tflyform.refreshExecute(Sender: TObject);
 var
 bmark: TBookMark;
 bmark1: TBookMark;
 ord_id: integer;
begin

  screen.Cursor:=crHourGlass;
 if flylist.RecordCount<>0
  then
    begin


 if fly_pos.CachedUpdates and fly_pos.Active then
    fly_pos.ApplyUpdates;
    flytran.CommitRetaining;
    Bmark:=fly_grid.DataSource.DataSet.GetBookmark;
    fly_grid.DataSource.DataSet.DisableControls;
    Bmark1:=fly_pos_grid.DataSource.DataSet.GetBookmark;
    fly_pos_grid.DataSource.DataSet.DisableControls;

 if fly_grid.Visible=true then
  begin
	 ord_id:=flylist.fieldbyname('ord_id').Value;
	 flytran.Active:=false;
	 flytran.Active:=true;
	 upd_fly.Parambyname('ord_id').Value:=ord_id;
   upd_fly.Prepare;
   upd_fly.ExecProc;
   flytran.CommitRetaining;
   flytran.Active:=false;
   flytran.Active:=true;
   flylist.Active:=false;
   flylist.Active:=true;
  end
 else
  begin
		ord_id:=flylist.fieldbyname('ord_id').Value;
		flytran.Active:=false;
		flytran.Active:=true;
		upd_fly.Parambyname('ord_id').Value:=ord_id;
		upd_fly.Prepare;
		upd_fly.ExecProc;
		flytran.CommitRetaining;
		flytran.Active:=false;
		flytran.Active:=true;
    flylist.Active:=false;
  	flylist.Active:=true;
    setfilter(ord_id);
 end;

 with  fly_grid.DataSource.DataSet
    do begin
     GotoBookmark(BMark);
     FreeBookmark(BMark);
     EnableControls;
   end;
  with  fly_Pos_grid.DataSource.DataSet
   do begin
     GotoBookmark(BMark1);
     FreeBookmark(BMark1);
     EnableControls;
   end;

  end;
screen.Cursor:=crDefault;

 end;

procedure Tflyform.fly_gridDblClick(Sender: TObject);
begin
 actionmanager1.Actions[1].Execute;
 exitblock:=1;
end;

procedure Tflyform.SpeedButton1Click(Sender: TObject);
begin
  setcomment.ParamByName('ordcomment').Value:=comment.Text;
  setcomment.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
  setcomment.ExecQuery;
  flytran.CommitRetaining;
  modiffly:=false;
end;

procedure Tflyform.fly_pos_gridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
 marked: boolean;
 index: integer;
begin

 {IF  gdSelected   IN State
	Then Begin
   TDBGrid(Sender).Canvas.Brush.Color:= clwhite;
	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   //TDBGrid(Sender).Canvas.Font.Size:=10;

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
 	End;
	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);}

  IF  gdSelected   IN State
	Then Begin


   TDBGrid(Sender).Canvas.Brush.Color:=RGB(148,162,181);
	 TDBGrid(Sender).Canvas.Font.Color := clwhite;


   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   TDBGrid(Sender).Canvas.pen.Color:=clblack;

   TDBGrid(Sender).Canvas.pen.Style:=pssolid;
   TDBGrid(Sender).Canvas.pen.Width:=1;
  { TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Top);
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom);}
   		End
   else
     begin

   if fly_pos.FieldByName('ptype').value=1
    then
    begin
      TDBGrid(Sender).Canvas.Brush.Color:=rgb(255,220,220) ;
	    TDBGrid(Sender).Canvas.Font.Color := clblack;
    end
    else
     begin
      TDBGrid(Sender).Canvas.Brush.Color:=clwhite;
     end;







    if (Column.Index=17)
     then
     TDBGrid(Sender).Canvas.Brush.Color:=rgb(233,233,233);

    if (Column.Index=13)
     then
    TDBGrid(Sender).Canvas.pen.Color:=clmaroon
     else
    TDBGrid(Sender).Canvas.pen.Color:=clblack;

    if Column.Index=2 then
     begin
       if fly_pos.FieldByName('transfer_flag').Value='+' then
         TDBGrid(Sender).Canvas.Font.Color := clred
         else
        TDBGrid(Sender).Canvas.Font.Color := clnavy;
     end;


    if fly_pos.FieldByName('poscount').value<>fly_pos.FieldByName('poskol').value
    then
     begin
      TDBGrid(Sender).Canvas.Brush.Color:=rgb(255,189,114) ;
	    TDBGrid(Sender).Canvas.Font.Color := clblack;
     end;

     if (fly_pos.FieldByName('totalsumm').value=0) and  (fly_pos.FieldByName('ptype').value<>1)
    then
     begin
      TDBGrid(Sender).Canvas.Brush.Color:=clred ;
	    TDBGrid(Sender).Canvas.Font.Color := clblack;
     end;

     if (fly_pos.FieldByName('deltaw').Value>15) and (Column.Index=19) then
      begin
       TDBGrid(Sender).Canvas.Font.Color := clred;
       TDBGrid(Sender).Canvas.Font.Style := [fsbold];
      end;

      if (fly_pos.FieldByName('pack2').Value>15) and (Column.Index=33) then
      begin
       TDBGrid(Sender).Canvas.Font.Color := clred;
       TDBGrid(Sender).Canvas.Font.Style := [fsbold];
      end;

    Marked := TDBGrid(Sender).SelectedRows.Find(TDBGrid(Sender).Datasource.Dataset.Bookmark, index);
      if Marked then
        begin
     TDBGrid(Sender).Canvas.Brush.Color:=RGB(148,162,181);
     TDBGrid(Sender).Canvas.Font.Color :=clblack;
       end;
      end;
	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure Tflyform.trt_comChange(Sender: TObject);
begin
//setfilter;
  fly_pos_grid.SetFocus;
end;

procedure Tflyform.CheckBox4Click(Sender: TObject);
begin
 if CheckBox4.Checked then
  begin
    fly_pos.Active:=false;
    fly_pos.ParamByName('oper').Value:=0;
    fly_pos.Active:=true;
  end
   else
  begin
    fly_pos.Active:=false;
    fly_pos.ParamByName('oper').Value:=1;
    fly_pos.Active:=true;
  end;
//setfilter;
fly_pos_grid.SetFocus;
end;

procedure Tflyform.CheckBox5Click(Sender: TObject);
begin
 if checkbox5.Checked then
     begin
     SpeedButton8.Visible:=true;
     with edit2 do
     begin
      Visible:=true;
      Text:=flylist.FieldByName('transferw').AsString;
      SetFocus;
      SelectAll;
     end;
    end else   begin
    edit2.visible:=false;
    SpeedButton8.Visible:=false;
    end;
end;

procedure Tflyform.CheckBox3Click(Sender: TObject);
begin
//setfilter;
 setfilter_fly;
end;

procedure Tflyform.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return
  then begin
  setfilter_fly();
   end;
end;

procedure Tflyform.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9'])
  then begin key:=#0;

  end;
end;

procedure Tflyform.CheckBox2Click(Sender: TObject);
begin
//setfilter;
 if checkbox2.Checked
  then
   fly_pos_grid.Options:=[dgediting,dgtitles,dgcolumnresize,dgcollines,dgrowlines,dgtabs,dgconfirmdelete,dgcancelonexit,dgmultiselect]
  else
    fly_pos_grid.Options:=[dgrowselect,dgtitles,dgcolumnresize,dgcollines,dgrowlines,dgtabs,dgconfirmdelete,dgcancelonexit,dgmultiselect]
end;

procedure Tflyform.town_comChange(Sender: TObject);
begin
//setfilter;
  fly_pos_grid.SetFocus;
end;

procedure Tflyform.fly_posCalcFields(DataSet: TDataSet);
begin
 if fly_pos.FieldByName('posweight').Value<>0 then
   fly_posdeltaw.Value:=roundto((fly_pos.FieldByName('posweight').Value-fly_pos.FieldByName('nweight').Value)/fly_pos.FieldByName('posweight').Value*100,-1)
  else
  fly_posdeltaw.Value:=0;

  if fly_pos.FieldByName('posweight2').Value<>0 then
   fly_pospack2.Value:=roundto((fly_pos.FieldByName('posweight2').Value-fly_pos.FieldByName('nweight2').Value)/fly_pos.FieldByName('posweight2').Value*100,-1)
  else
  fly_pospack2.Value:=0;

 if fly_pos.FieldByName('bagpos').Value<>0 then
    fly_posbagweight.Value:=roundto(fly_pos.FieldByName('posweight').Value/fly_pos.FieldByName('bagpos').Value,-1)
   else fly_posbagweight.Value:=0;

   if fly_pos.FieldByName('poscount').Value<>0 then
    fly_posunitweight.Value:=roundto(fly_pos.FieldByName('nweight').Value/fly_pos.FieldByName('poscount').Value,-3)
   else fly_posunitweight.Value:=0;


    if fly_pos.FieldByName('bagpos').Value<>0 then
    fly_posbagweight2.Value:=roundto(fly_pos.FieldByName('posweight2').Value/fly_pos.FieldByName('bagpos').Value,-1)
   else fly_posbagweight2.Value:=0;

   if fly_pos.FieldByName('poscount2').Value<>0 then
    fly_posunitweight2.Value:=roundto(fly_pos.FieldByName('nweight2').Value/fly_pos.FieldByName('poscount2').Value,-3)
   else fly_posunitweight2.Value:=0;

   case fly_pos.FieldByName('gk_id').Value of
    0: fly_posgk.Value:='ND';
    1: fly_posgk.Value:='ОО';
    2: fly_posgk.Value:='ООИ';
    3: fly_posgk.Value:='ХОЗ';
    4: fly_posgk.Value:='НП';
   end ;

  end;

procedure Tflyform.fly_pos_gridDblClick(Sender: TObject);
begin
//if  fly_pos_grid.SelectedIndex=0 then begin
   opener_price_type:=7;  // изменение
   changeitem.ParamByName('opertype').Value:=2;
   changeitem.ParamByName('ord_id').Value:=fly_pos.fieldbyname('ord_id').Value;
   changeitem.ParamByName('id').Value:=fly_pos.fieldbyname('id').Value;
   changeitem.ParamByName('lupdate').Value:=now();
   changeitem.ParamByName('ptp_id').Value:=fly_pos.fieldbyname('ptp_id').Value;
   formaddpackexecute(2);
// end;
end;

procedure Tflyform.N1Click(Sender: TObject);
begin
    if MessageDlg('Удалить документ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin
delord.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
delord.Prepare;
delord.ExecProc;
{if delord.ParamByName('flok').Value=1
  then begin}
flytran.CommitRetaining;
flytran.Active:=false;
flytran.Active:=true;
flylist.Active:=false;
flylist.Active:=true;
{ end
   else
 MessageDlg('Удалите сначала позиции из документа', mtInformation, [mbOK],0);}
  end;
 end;

procedure Tflyform.reportExecute(Sender: TObject);
  begin
 {}
end;

procedure Tflyform.reportxlsExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
begin
 {}
end;

procedure Tflyform.send_comChange(Sender: TObject);
begin
 SpeedButton7.Enabled:=true;
end;

procedure Tflyform.serverreportExecute(Sender: TObject);
begin
  showpacketform(7,flylist.fieldbyname('ibtfly_id').Value);
end;

procedure Tflyform.delivercomChange(Sender: TObject);
begin
flyform.setfilter(filterprop.Params[0].value);
fly_pos_grid.SetFocus;
end;

procedure Tflyform.CustcomChange(Sender: TObject);
begin
flyform.setfilter(filterprop.Params[0].value);
fly_pos_grid.SetFocus;
end;

procedure Tflyform.tmgridDrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure Tflyform.towncomChange(Sender: TObject);
begin
flyform.setfilter(filterprop.Params[0].value);
fly_pos_grid.SetFocus;
end;

procedure Tflyform.invoiceExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalsumm: double;
    stroka: string;
begin
 od1.InitialDir:=out_dir;
  if od1.Execute
   then
    begin
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalsumm:=0;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);

  WorkBook.WorkSheets[1].Cells[9,6].value:= flylist.fieldbyname('ordnumber').AsString;
  WorkBook.WorkSheets[1].Cells[10,6].value:= flylist.fieldbyname('createdate').AsString;

  fly_pos.First;
  i:=15;
  j:=1;

  while not fly_pos.Eof do begin
    ExcelApp.WorkSheets[1].Rows[i].Insert;
    WorkBook.WorkSheets[1].Cells[i-1,2].value:=j;
    WorkBook.WorkSheets[1].Cells[i-1,3].value:=fly_pos.fieldbyname('packtypename').asstring;
    WorkBook.WorkSheets[1].Cells[i-1,3].WrapText:=true;
    WorkBook.WorkSheets[1].Cells[i-1,4].value:=fly_pos.fieldbyname('poscount').value;
    WorkBook.WorkSheets[1].Cells[i-1,5].value:=fly_pos.fieldbyname('price_inv').value;
    WorkBook.WorkSheets[1].Cells[i-1,6].value:=fly_pos.fieldbyname('totalsumm').value;
    WorkBook.WorkSheets[1].Cells[i-1,7].value:=fly_pos.fieldbyname('bagpos').value;
    totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm').value;
    inc(i);
    inc(j);
    fly_pos.Next;
  end;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[i+6,2].value + flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[i+7,2].value:=WorkBook.WorkSheets[1].Cells[i+7,2].value + filterprop.fieldbyname('posweight').AsString;
  WorkBook.WorkSheets[1].Cells[i+8,2].value:=WorkBook.WorkSheets[1].Cells[i+8,2].value + filterprop.fieldbyname('bagpos').AsString;
  {stroka:=WorkBook.WorkSheets[1].Cells[17,2].value; */
     WorkBook.WorkSheets[1].Cells[17,2].value:='';
   while not fly_pos.Eof do begin
   WorkBook.WorkSheets[1].Cells[i,2].value:=j;
   // showmessage('1');
   WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('packtypename').asstring;
   WorkBook.WorkSheets[1].Cells[i,3].WrapText:=true;
  //  showmessage('2');
   WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  //  showmessage('3');
   WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('price_inv').value;
  //  showmessage('4');
   WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('totalsumm').value;
  //  showmessage('5');
   WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('bagpos').value;
  //  showmessage('6');
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  //  showmessage('7');
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  //  showmessage('8');
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].linestyle:=0;
  //  showmessage('9');
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].weight:=2;
  //  showmessage('10');
   WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  //  showmessage('11');
   WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  //  showmessage('12');
   WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  //  showmessage('13');
   WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;
  //  showmessage('14');
   inc(i);
   inc(j);

   totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm').value;
   fly_pos.Next;
   end;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
 // range.HorizontalAlignment:=3;
  range.font.size:=9;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  //range.HorizontalAlignment:=1;

  cell1:=WorkBook.WorkSheets[1].Cells[17,5];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.NumberFormat:='0,00';


  WorkBook.WorkSheets[1].Cells[12,2].value:=WorkBook.WorkSheets[1].Cells[12,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,4].value:=' №'+flylist.fieldbyname('ordnumber').AsString+' from   '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[10,2].value:=WorkBook.WorkSheets[1].Cells[10,2].value+' '+flylist.fieldbyname('client_name').value+' '+flylist.fieldbyname('cl_address').value;

  if i<=60 then begin
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
   WorkBook.WorkSheets[1].Cells[64,3].value:=WorkBook.WorkSheets[1].Cells[17,9].value;
   for j:=i to 66
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
      end;
  WorkBook.WorkSheets[1].Cells[66,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[66,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[66,6].font.size:=10;
  WorkBook.WorkSheets[1].Cells[66,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[66,2].HorizontalAlignment:=1;
     for j:=2 to 6 do begin
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].weight:=2;
   end;

    end
   else
    begin

     for j:=2 to 6 do
          begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].weight:=2;
          end;

  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[17,9].value;

  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=10;
 // WorkBook.WorkSheets[1].Cells[i+6,2].align:=alleft;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
     for j:=i  to i+7
   do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
   end;

    end;

  WorkBook.WorkSheets[1].Cells[11,10].value:='';}
  ExcelApp.Visible := true;
  end;
end;

procedure Tflyform.invoice_transferCHExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalsumm: double;

    stroka: string;
begin
 od1.InitialDir:=out_dir;
  if od1.Execute
   then
    begin
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalsumm:=0;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=16;
  j:=1;

  stroka:=WorkBook.WorkSheets[1].Cells[16,2].value;
     WorkBook.WorkSheets[1].Cells[16,2].value:='';
   while not fly_pos.Eof do begin
   WorkBook.WorkSheets[1].Cells[i,2].value:=j;

   WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('title_ch').asstring+'                                                                   '+fly_pos.fieldbyname('packtypename').asstring;
   //WorkBook.WorkSheets[1].Cells[i,3].WrapText:=true;
   //WorkBook.WorkSheets[1].Cells[i,3].Rowheight:=24;

   WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount2').value;
   WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('price_inv2').value;
   WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('totalsumm2').value;
   WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('bagpos').value;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;
   inc(i);
   inc(j);
   totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm2').value;
   fly_pos.Next;
   end;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,7];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
 // range.HorizontalAlignment:=3;
  range.font.size:=9;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  //range.HorizontalAlignment:=1;

  cell1:=WorkBook.WorkSheets[1].Cells[16,5];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.NumberFormat:='0,00';


  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,4].value:=' '+flylist.fieldbyname('ordnumber').AsString+' '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').value+' '+flylist.fieldbyname('cl_address').value;

  if i<=60 then begin

   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
   for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
      end;
  WorkBook.WorkSheets[1].Cells[65,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;
  WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;
     for j:=2 to 6 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

    end
   else
    begin

     for j:=2 to 6 do
          begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].weight:=2;
          end;

  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;

  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=10;
 // WorkBook.WorkSheets[1].Cells[i+6,2].align:=alleft;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
     for j:=i  to i+7
   do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
   end;

    end;

  WorkBook.WorkSheets[1].Cells[10,10].value:='';
  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.invoice_transferENGExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalsumm: double;
    stroka: string;
begin
 od1.InitialDir:=out_dir;
  if od1.Execute
   then
    begin
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalsumm:=0;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=16;
  j:=1;

  stroka:=WorkBook.WorkSheets[1].Cells[16,2].value;
     WorkBook.WorkSheets[1].Cells[16,2].value:='';
   while not fly_pos.Eof do begin
   WorkBook.WorkSheets[1].Cells[i,2].value:=j;

   WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('ptitle').asstring+'                                                                   '+fly_pos.fieldbyname('packtypename').asstring;
   //WorkBook.WorkSheets[1].Cells[i,3].WrapText:=true;
   //WorkBook.WorkSheets[1].Cells[i,3].Rowheight:=24;

   WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount2').value;
   WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('price_inv2').value;
   WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('totalsumm2').value;
   WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('bagpos').value;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;
   inc(i);
   inc(j);
   totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm2').value;
   fly_pos.Next;
   end;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,7];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
 // range.HorizontalAlignment:=3;
  range.font.size:=9;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  //range.HorizontalAlignment:=1;

  cell1:=WorkBook.WorkSheets[1].Cells[16,5];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.NumberFormat:='0,00';


  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,4].value:=' '+flylist.fieldbyname('ordnumber').AsString+' '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').value+' '+flylist.fieldbyname('cl_address').value;

  if i<=60 then begin

   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
   for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
      end;
  WorkBook.WorkSheets[1].Cells[65,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;
  WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;
     for j:=2 to 6 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

    end
   else
    begin

     for j:=2 to 6 do
          begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].weight:=2;
          end;

  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;

  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=10;
 // WorkBook.WorkSheets[1].Cells[i+6,2].align:=alleft;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
     for j:=i  to i+7
   do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
   end;

    end;

  WorkBook.WorkSheets[1].Cells[10,10].value:='';
  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.invoice_transferExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight: double;
    fly_pos1: TIBQuery;

begin
flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(out_dir+'packlist_vag.xls');
  fly_pos.First;
  i:=16;
  j:=1;
  fly_pos.Active:=False;
  //fly_pos1.Create(fly_pos);
  fly_pos.SQL.Strings[fly_pos.SQL.Count-1]:='order by oemcode';
  fly_pos.Active:=True;
  fly_pos.First;
   while not fly_pos.Eof do begin
  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('packtypename').value;
  WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount2').value;
  WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('oemcode').value;
  WorkBook.WorkSheets[1].Cells[i,6].value:=roundto(fly_pos.fieldbyname('posweight2').value,0);
  WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('totalsumm2').value;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,7].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,7].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalweight:=totalweight+fly_pos.fieldbyname('posweight2').value;
  fly_pos.Next;

   end;
// fly_pos1.Destroy;
  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,7];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+' от '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('clname').AsString;
  if i<60 then
  begin
    for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,7].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,7].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;

   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

   WorkBook.WorkSheets[1].Cells[65,6].value:=totalweight;
   WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;

   for j:=2 to 7 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

  end
    else
    begin

  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalweight;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+8 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,7].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,7].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[10,10].value:='';

  ExcelApp.Visible := true;

end;

procedure Tflyform.invoice_transferSERTExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount,searchpos, searchpos_en: integer;
    totalsumm: double;
    stroka,searchstr,searchstr_en: string;
begin
 od1.InitialDir:=out_dir;
  if od1.Execute
   then
    begin
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalsumm:=0;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=16;
  j:=1;

  stroka:=WorkBook.WorkSheets[1].Cells[16,2].value;
     WorkBook.WorkSheets[1].Cells[16,2].value:='';
   while not fly_pos.Eof do begin

 searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
 searchstr:=fly_pos.fieldbyname('packtypename').asstring;

 searchpos_en:=pos(',', searchstr_en);
 if searchpos_en=0 then
  begin
   searchstr_en:=searchstr_en+',';
   searchpos_en:=pos(',', searchstr_en);
  end;

 searchpos:=pos(',', searchstr);
 searchstr_en:=copy(searchstr_en,1,searchpos_en);
 searchstr:=copy(searchstr,searchpos+1,length(searchstr));
 searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);

 searchstr_en:=searchstr_en+' '+searchstr;

   WorkBook.WorkSheets[1].Cells[i,2].value:=j;

   WorkBook.WorkSheets[1].Cells[i,3].value:=searchstr_en;
   //WorkBook.WorkSheets[1].Cells[i,3].WrapText:=true;
   //WorkBook.WorkSheets[1].Cells[i,3].Rowheight:=24;

   WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount2').value;
   WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('price_inv2').value;
   WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('totalsumm2').value;
   WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('bagpos').value;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;
   inc(i);
   inc(j);
   totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm2').value;
   fly_pos.Next;
   end;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,7];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
 // range.HorizontalAlignment:=3;
  range.font.size:=9;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  //range.HorizontalAlignment:=1;

  cell1:=WorkBook.WorkSheets[1].Cells[16,5];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.NumberFormat:='0,00';


  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,4].value:=' '+flylist.fieldbyname('ordnumber').AsString+'     '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').value+' '+flylist.fieldbyname('cl_address').value;

  if i<=60 then begin
   WorkBook.WorkSheets[1].Cells[59,3].value:=WorkBook.WorkSheets[1].Cells[12,9].value;
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
   for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
      end;
  WorkBook.WorkSheets[1].Cells[65,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;
  WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;
     for j:=2 to 6 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

    end
   else
    begin

     for j:=2 to 6 do
          begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].weight:=2;
          end;
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[12,9].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;

  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=10;
 // WorkBook.WorkSheets[1].Cells[i+6,2].align:=alleft;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
     for j:=i  to i+7
   do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
   end;

    end;

  WorkBook.WorkSheets[1].Cells[10,10].value:='';
  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.Action10Execute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalsumm: double;
    stroka: string;
    searchpos,searchpos_en: integer;
    searchstr,searchstr_en: string;
begin
 od1.InitialDir:=out_dir;
  if od1.Execute
   then
    begin
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalsumm:=0;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=17;
  j:=1;

  stroka:=WorkBook.WorkSheets[1].Cells[i,2].value;
  WorkBook.WorkSheets[1].Cells[i,2].value:='';
   while not fly_pos.Eof do begin

   searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
   searchstr:=fly_pos.fieldbyname('packtypename').asstring;
   searchpos:=pos('(', searchstr);
   if searchpos<>0 then
    begin
     searchstr:=copy(searchstr,searchpos,length(searchstr));
     searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);
    end
    else searchstr:='';

   WorkBook.WorkSheets[1].Cells[i,2].value:=j;

   WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('ptitle').asstring+' '+searchstr+Chr(10)+fly_pos.fieldbyname('packtypename').asstring;
   //WorkBook.WorkSheets[1].Cells[i,3].WrapText:=true;
   //WorkBook.WorkSheets[1].Cells[i,3].Rowheight:=24;

   WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
   WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('price_inv').value;
   WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('totalsumm').value;
   WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('bagpos').value;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;
   inc(i);
   inc(j);
   totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm').value;
   fly_pos.Next;
   end;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,7];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
 // range.HorizontalAlignment:=3;
  range.font.size:=9;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  //range.HorizontalAlignment:=1;

  cell1:=WorkBook.WorkSheets[1].Cells[17,5];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.NumberFormat:='0,00';


  WorkBook.WorkSheets[1].Cells[13,2].value:=WorkBook.WorkSheets[1].Cells[13,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,4].value:=' №'+flylist.fieldbyname('ordnumber').AsString+' from '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[9,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').value+' '+flylist.fieldbyname('cl_address').value;

  if i<=61 then begin

   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
   WorkBook.WorkSheets[1].Cells[64,3].value:=WorkBook.WorkSheets[1].Cells[17,9].value;
   for j:=i to 66
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
      end;
  WorkBook.WorkSheets[1].Cells[66,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[66,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[66,6].font.size:=10;
  WorkBook.WorkSheets[1].Cells[66,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[66,2].HorizontalAlignment:=1;
     for j:=2 to 6 do begin
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].weight:=2;
   end;

    end
   else
    begin

     for j:=2 to 6 do
          begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].weight:=2;
          end;

  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[17,9].value;

  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=10;
 // WorkBook.WorkSheets[1].Cells[i+6,2].align:=alleft;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
     for j:=i  to i+7
   do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
   end;

    end;

  WorkBook.WorkSheets[1].Cells[11,10].value:='';
  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.Action11Execute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight,totalnweight: double;
    totalpos: integer;
    searchpos,searchpos_en: integer;
    searchstr,searchstr_en: string;

begin
 od1.InitialDir:=out_dir;
 if od1.Execute
  then
   begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 totalnweight:=0;
 totalpos:=0;

 ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=19;
  j:=1;

   while not fly_pos.Eof do begin

   searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
   searchstr:=fly_pos.fieldbyname('packtypename').asstring;
   searchpos:=pos('(', searchstr);
   if searchpos<>0 then
    begin
     searchstr:=copy(searchstr,searchpos,length(searchstr));
     searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);
    end
    else searchstr:='';

  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('ptitle').asstring+' '+searchstr+Chr(10)+fly_pos.fieldbyname('packtypename').asstring;
  WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  WorkBook.WorkSheets[1].Cells[i,5].value:=copy(fly_pos.fieldbyname('oemcode').asstring,1,6);
  WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('bagpos').value;
  WorkBook.WorkSheets[1].Cells[i,7].value:=roundto(fly_pos.fieldbyname('posweight').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,8].value:=roundto(fly_pos.fieldbyname('nweight').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalweight:=totalweight+fly_pos.fieldbyname('posweight').value;
  totalnweight:=totalnweight+fly_pos.fieldbyname('nweight').value;
  totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
  fly_pos.Next;

   end;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,9];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,8];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[14,2].value:=WorkBook.WorkSheets[1].Cells[14,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+' from '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+' '+flylist.fieldbyname('client_name').AsString+' '+flylist.fieldbyname('cl_address').AsString;
  if i<61 then
  begin
    for j:=i to 66
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[66,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
   WorkBook.WorkSheets[1].Cells[66,2].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
   WorkBook.WorkSheets[1].Cells[64,3].value:=WorkBook.WorkSheets[1].Cells[17,10].value;

   WorkBook.WorkSheets[1].Cells[66,7].value:=totalweight;
   WorkBook.WorkSheets[1].Cells[66,7].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,7].font.size:=10;
   WorkBook.WorkSheets[1].Cells[66,6].value:=totalpos;
   WorkBook.WorkSheets[1].Cells[66,6].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,6].font.size:=10;
   WorkBook.WorkSheets[1].Cells[66,8].value:=totalnweight;
   WorkBook.WorkSheets[1].Cells[66,8].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,8].font.size:=10;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].weight:=2;
   end;

  end
    else
    begin
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[17,10].value;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,7].value:=totalweight;
  WorkBook.WorkSheets[1].Cells[i+6,8].value:=totalnweight;
  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalpos;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+8 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[11,10].value:='';

  ExcelApp.Visible := true;
  end;


end;

procedure Tflyform.Action1Execute(Sender: TObject);
begin
                  {}
end;

procedure Tflyform.Action22Execute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    avgweight: double;
    avgtotal: double;
begin

end;

procedure Tflyform.Action3Execute(Sender: TObject);
begin
  flyform.fly_pos_grid.Font.Size:=flyform.fly_pos_grid.Font.Size+1;
  fontsize:=fontsize+1;
{}
end;

procedure Tflyform.Action4Execute(Sender: TObject);
begin
 flyform.fly_pos_grid.Font.Size:=flyform.fly_pos_grid.Font.Size-1;
 fontsize:=fontsize-1;{}
end;

procedure Tflyform.Action5Execute(Sender: TObject);
begin
  showpacketform(8,fly_pos.parambyname('ibtfly_id').Value);
end;

procedure Tflyform.Action6Execute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
begin

 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Application.EnableEvents := false;
 Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');

 WorkBook.WorkSheets[1].Cells[2, 1].value:='Подробный пакинг по транспорту: '+flylist.fieldbyname('outnum').AsString;
 cell1:=WorkBook.WorkSheets[1].Cells[2,1];
 cell2:=WorkBook.WorkSheets[1].Cells[2,1];
 range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 range.font.name:='Arial';
 range.font.size:=12;
 range.font.bold:=true;
 WorkBook.WorkSheets[1].Rows[2].rowheight:=20;

 Screen.Cursor:=crHourGlass;
   n:=5;

 WorkBook.WorkSheets[1].Columns[5].ColumnWidth := 50;
 WorkBook.WorkSheets[1].Columns[7].ColumnWidth := 25;
 WorkBook.WorkSheets[1].Columns[3].ColumnWidth := 25;


    WorkBook.WorkSheets[1].Cells[n-1,3].value:='Место';
    WorkBook.WorkSheets[1].Cells[n-1,4].value:='№';
    WorkBook.WorkSheets[1].Cells[n-1,5].value:='Марка';
    WorkBook.WorkSheets[1].Cells[n-1,6].value:='Кол-во';

   exportbuh.paramByName('trans_id').Value:=flylist.fieldbyname('trans_id').Value;
   exportbuh.Active:=false;
   exportbuh.Active:=true;
   exportbuh.First;
    while not exportbuh.Eof do
    begin
     WorkBook.WorkSheets[1].Cells[n,3].value:=exportbuh.FieldByName('fullbagnum').AsString;
     WorkBook.WorkSheets[1].Cells[n,4].value:=exportbuh.FieldByName('ordnum').AsString;
     WorkBook.WorkSheets[1].Cells[n,5].value:=exportbuh.FieldByName('tmname').AsString;
     WorkBook.WorkSheets[1].Cells[n,6].value:=exportbuh.FieldByName('packkol').AsString;
     inc(n);
     exportbuh.next;
    end;
   exportbuh.Active:=false;

 excelapp.visible:=true;
 Screen.Cursor:=crDefault;


end;

procedure Tflyform.Action7Execute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount,searchpos, searchpos_en: integer;
    totalsumm: double;
    stroka,searchstr,searchstr_en: string;
begin
 od1.InitialDir:=out_dir;
  if od1.Execute
   then
    begin
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalsumm:=0;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);


  WorkBook.WorkSheets[1].Cells[9,6].value:= flylist.fieldbyname('ordnumber').AsString;
  WorkBook.WorkSheets[1].Cells[10,6].value:= flylist.fieldbyname('createdate').AsString;

  fly_pos.First;
  i:=15;
  j:=1;

  while not fly_pos.Eof do begin
    ExcelApp.WorkSheets[1].Rows[i].Insert;

    searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
    searchstr:=fly_pos.fieldbyname('packtypename').asstring;

    searchpos_en:=pos(',', searchstr_en);
    if searchpos_en=0 then
      begin
        searchstr_en:=searchstr_en+',';
        searchpos_en:=pos(',', searchstr_en);
    end;

    searchpos:=pos(',', searchstr);
    searchstr_en:=copy(searchstr_en,1,searchpos_en);
    searchstr:=copy(searchstr,searchpos+1,length(searchstr));
    searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);

    searchstr_en:=searchstr_en+' '+searchstr;

    WorkBook.WorkSheets[1].Cells[i-1,2].value:=j;
    WorkBook.WorkSheets[1].Cells[i-1,3].value:=searchstr_en;
    WorkBook.WorkSheets[1].Cells[i-1,3].WrapText:=true;
    WorkBook.WorkSheets[1].Cells[i-1,4].value:=fly_pos.fieldbyname('poscount').value;
    WorkBook.WorkSheets[1].Cells[i-1,5].value:=fly_pos.fieldbyname('price_inv').value;
    WorkBook.WorkSheets[1].Cells[i-1,6].value:=fly_pos.fieldbyname('totalsumm').value;
    WorkBook.WorkSheets[1].Cells[i-1,7].value:=fly_pos.fieldbyname('bagpos').value;
    totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm').value;
    inc(i);
    inc(j);
    fly_pos.Next;
  end;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[i+6,2].value + flylist.fieldbyname('outnum').value;

  {stroka:=WorkBook.WorkSheets[1].Cells[i,2].value;
     WorkBook.WorkSheets[1].Cells[i,2].value:='';
   while not fly_pos.Eof do begin

 searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
 searchstr:=fly_pos.fieldbyname('packtypename').asstring;

 searchpos_en:=pos(',', searchstr_en);
 if searchpos_en=0 then
  begin
   searchstr_en:=searchstr_en+',';
   searchpos_en:=pos(',', searchstr_en);
  end;

 searchpos:=pos(',', searchstr);
 searchstr_en:=copy(searchstr_en,1,searchpos_en);
 searchstr:=copy(searchstr,searchpos+1,length(searchstr));
 searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);

 searchstr_en:=searchstr_en+' '+searchstr;

   WorkBook.WorkSheets[1].Cells[i,2].value:=j;

   WorkBook.WorkSheets[1].Cells[i,3].value:=searchstr_en;
   //WorkBook.WorkSheets[1].Cells[i,3].WrapText:=true;
   //WorkBook.WorkSheets[1].Cells[i,3].Rowheight:=24;

   WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
   WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('price_inv').value;
   WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('totalsumm').value;
   WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('bagpos').value;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;
   inc(i);
   inc(j);
   totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm').value;
   fly_pos.Next;
   end;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,7];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
 // range.HorizontalAlignment:=3;
  range.font.size:=9;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  //range.HorizontalAlignment:=1;

  cell1:=WorkBook.WorkSheets[1].Cells[16,5];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.NumberFormat:='0,00';


  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,4].value:=' '+flylist.fieldbyname('ordnumber').AsString+'     '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').value+' '+flylist.fieldbyname('cl_address').value;

  if i<=60 then begin
   WorkBook.WorkSheets[1].Cells[59,3].value:=WorkBook.WorkSheets[1].Cells[12,9].value;
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
   for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
      end;
  WorkBook.WorkSheets[1].Cells[65,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;
  WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;
     for j:=2 to 6 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

    end
   else
    begin

     for j:=2 to 6 do
          begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].weight:=2;
          end;
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[12,9].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,9].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;

  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=10;
 // WorkBook.WorkSheets[1].Cells[i+6,2].align:=alleft;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
     for j:=i  to i+7
   do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
   end;

    end;

  WorkBook.WorkSheets[1].Cells[10,10].value:='';}
  ExcelApp.Visible := true;
  end;
end;

procedure Tflyform.Action8Execute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight,totalnweight: double;
    totalpos,searchpos,searchpos_en: integer;
    searchstr,searchstr_en: string;

begin
 od1.InitialDir:=out_dir;
 if od1.Execute
  then
   begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 totalnweight:=0;
 totalpos:=0;

  ExcelApp := CreateOleObject('Excel.Application');
  // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);

  WorkBook.WorkSheets[1].Cells[9,5].value:= flylist.fieldbyname('ordnumber').AsString;
  WorkBook.WorkSheets[1].Cells[10,5].value:= flylist.fieldbyname('createdate').AsString;

  fly_pos.First;
  i:=15;
  j:=1;

  while not fly_pos.Eof do begin
    ExcelApp.WorkSheets[1].Rows[i].Insert;

    searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
    searchstr:=fly_pos.fieldbyname('packtypename').asstring;
    searchpos_en:=pos(',', searchstr_en);
    searchpos:=pos(',', searchstr);
    searchstr_en:=copy(searchstr_en,1,searchpos_en);
    searchstr:=copy(searchstr,searchpos+1,length(searchstr));
    searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
    searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);

    searchstr_en:=searchstr_en+' '+fly_pos.fieldbyname('poscount').asstring+' '+searchstr;

    WorkBook.WorkSheets[1].Cells[i-1,2].value:=j;
    WorkBook.WorkSheets[1].Cells[i-1,3].value:=searchstr_en;
    WorkBook.WorkSheets[1].Cells[i-1,3].WrapText:=true;
    WorkBook.WorkSheets[1].Cells[i-1,4].value:=copy(fly_pos.fieldbyname('oemcode').asstring,1,6);
    WorkBook.WorkSheets[1].Cells[i-1,5].value:=roundto(fly_pos.fieldbyname('nweight').asFloat+0.01,0);

    inc(i);
    inc(j);
    totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
    totalweight:=totalweight+fly_pos.fieldbyname('posweight').value;
    totalnweight:=totalnweight+fly_pos.fieldbyname('nweight').value;
    fly_pos.Next;
  end;

  WorkBook.WorkSheets[1].Cells[i+5,2].value:=WorkBook.WorkSheets[1].Cells[i+5,2].value + flylist.fieldbyname('outnum').value;


 {while not fly_pos.Eof do begin
 searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
 searchstr:=fly_pos.fieldbyname('packtypename').asstring;
 searchpos_en:=pos(',', searchstr_en);
 searchpos:=pos(',', searchstr);
 searchstr_en:=copy(searchstr_en,1,searchpos_en);
 searchstr:=copy(searchstr,searchpos+1,length(searchstr));
 searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);

 searchstr_en:=searchstr_en+' '+fly_pos.fieldbyname('poscount').asstring+' '+searchstr;


 // ShowMessage(searchstr);
  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=searchstr_en;
  //WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  WorkBook.WorkSheets[1].Cells[i,4].value:=copy(fly_pos.fieldbyname('oemcode').asstring,1,6);
  //WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('bagpos').value;
  //WorkBook.WorkSheets[1].Cells[i,7].value:=roundto(fly_pos.fieldbyname('posweight').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,5].value:=roundto(fly_pos.fieldbyname('nweight').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,5].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,5].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
 // WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalweight:=totalweight+fly_pos.fieldbyname('posweight').value;
  totalnweight:=totalnweight+fly_pos.fieldbyname('nweight').value;
  totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
  fly_pos.Next;

   end;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,9];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,8];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+'      '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').AsString+' '+flylist.fieldbyname('cl_address').AsString;
  if i<60 then
  begin
    for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,5].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,5].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[59,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

   //WorkBook.WorkSheets[1].Cells[65,7].value:=totalweight;
   //WorkBook.WorkSheets[1].Cells[65,7].font.bold:=true;
   //WorkBook.WorkSheets[1].Cells[65,7].font.size:=10;
   //WorkBook.WorkSheets[1].Cells[65,6].value:=totalpos;
   //WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
   //WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;
   WorkBook.WorkSheets[1].Cells[65,5].value:=totalnweight;
   WorkBook.WorkSheets[1].Cells[65,5].font.bold:=true;
//   WorkBook.WorkSheets[1].Cells[65,8].font.size:=10;

   for j:=2 to 5 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

  end
    else
    begin
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;

 // WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
 // WorkBook.WorkSheets[1].Cells[i+6,7].font.bold:=true;
 // WorkBook.WorkSheets[1].Cells[i+6,7].font.size:=12;
 // WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
//  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,5].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,5].font.size:=12;
 // WorkBook.WorkSheets[1].Cells[i+6,7].value:=totalweight;
  WorkBook.WorkSheets[1].Cells[i+6,5].value:=totalnweight;
 // WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalpos;

   for j:=2 to 5 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+5 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,5].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,5].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[10,10].value:='';}

  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.Action9Execute(Sender: TObject);
begin
 oemcodevocb:=toemcodevocb.Create(Application);
 oemcodevocb.ShowModal;
end;

procedure Tflyform.SpeedButton2Click(Sender: TObject);


begin
   screen.Cursor:=crHourGlass;
   opener_price_type:=2;
   newordoper:=1;
   addpackingform:=taddpackingform.create(application);
   addpackingform.packtypes.Active:=true;
   newitem.ParamByName('opertype').Value:=1;
   newitem.ParamByName('ord_id').Value:=current_fly;
   newitem.ParamByName('id').Value:=0;
   newitem.ParamByName('lupdate').Value:=now();
   newitem.ParamByName('poskol').Value:=0;
   openpriceForm(2,flyform.flylist.fieldbyname('send_id').Value);//priceUnit
   screen.Cursor:=crDefault;
end;

procedure Tflyform.Panel4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbleft then
 begin
  X0:=X;
  Y0:=Y;
  move:=true;
  (sender as Tcontrol).BringToFront;
 end
end;

procedure Tflyform.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
pt: Tpoint;
 begin
 if move  then with (sender as Tcontrol) do
   setbounds(left+x-x0, top+y-y0,width,height);
 if (sender as Tcontrol).Left+x=0 then
  begin
   move:=false;
  end;
end;

procedure Tflyform.Panel4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   move:=false;
end;

procedure Tflyform.Action2Execute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight,totalnweight: double;
    totalpos: integer;

begin
 od1.InitialDir:=out_dir;
 if od1.Execute
  then
   begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 totalpos:=0;
 totalnweight:=0;
 ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);


  WorkBook.WorkSheets[1].Cells[9,7].value:= flylist.fieldbyname('ordnumber').AsString;
  WorkBook.WorkSheets[1].Cells[10,7].value:= flylist.fieldbyname('createdate').AsString;

  fly_pos.First;
  i:=15;
  j:=1;

  while not fly_pos.Eof do begin
    ExcelApp.WorkSheets[1].Rows[i].Insert;

    WorkBook.WorkSheets[1].Cells[i-1,2].value:=j;
    WorkBook.WorkSheets[1].Cells[i-1,3].value:=fly_pos.fieldbyname('packtypename').asstring;
    WorkBook.WorkSheets[1].Cells[i-1,3].WrapText:=true;
    WorkBook.WorkSheets[1].Cells[i-1,4].value:=fly_pos.fieldbyname('poscount').value;
    WorkBook.WorkSheets[1].Cells[i-1,5].value:=copy(fly_pos.fieldbyname('oemcode').asstring,1,6);
    WorkBook.WorkSheets[1].Cells[i-1,6].value:=fly_pos.fieldbyname('bagpos').value;
    WorkBook.WorkSheets[1].Cells[i-1,7].value:=roundto(fly_pos.fieldbyname('posweight').AsFloat+0.01,0);
    WorkBook.WorkSheets[1].Cells[i-1,8].value:=roundto(fly_pos.fieldbyname('nweight').AsFloat+0.01,0);

    inc(i);
    inc(j);
    totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
    totalweight:=totalweight+fly_pos.fieldbyname('posweight').value;
    totalnweight:=totalnweight+fly_pos.fieldbyname('nweight').value;
    fly_pos.Next;
  end;

  WorkBook.WorkSheets[1].Cells[i+5,2].value:=WorkBook.WorkSheets[1].Cells[i+5,2].value + flylist.fieldbyname('outnum').value;

  {while not fly_pos.Eof do begin

  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('packtypename').asString;
  WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  WorkBook.WorkSheets[1].Cells[i,5].value:=copy(fly_pos.fieldbyname('oemcode').asstring,1,6);
  WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('bagpos').value;
  WorkBook.WorkSheets[1].Cells[i,7].value:=roundto(fly_pos.fieldbyname('posweight').AsFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,8].value:=roundto(fly_pos.fieldbyname('nweight').AsFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,9].value:=fly_pos.fieldbyname('deltaw1').value;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
  totalweight:=totalweight+fly_pos.fieldbyname('posweight').value;
  totalnweight:=totalnweight+fly_pos.fieldbyname('nweight').value;
  fly_pos.Next;

   end;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,8];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[12,2].value:=WorkBook.WorkSheets[1].Cells[12,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+' from '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[9,2].value:=WorkBook.WorkSheets[1].Cells[9,2].value+' '+flylist.fieldbyname('client_name').AsString+' '+flylist.fieldbyname('cl_address').AsString;
  if i<61 then
  begin
    for j:=i to 66
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,9].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,9].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[66,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[66,2].HorizontalAlignment:=1;

   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
   WorkBook.WorkSheets[1].Cells[64,3].value:=WorkBook.WorkSheets[1].Cells[17,10].value;

   WorkBook.WorkSheets[1].Cells[66,7].value:=totalweight;
   WorkBook.WorkSheets[1].Cells[66,8].value:=totalnweight;
   WorkBook.WorkSheets[1].Cells[66,7].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,7].font.size:=10;
   WorkBook.WorkSheets[1].Cells[66,6].value:=totalpos;
   WorkBook.WorkSheets[1].Cells[66,6].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,6].font.size:=10;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].weight:=2;
   end;

  end
    else
    begin
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[17,10].value;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,7].value:=totalweight;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalpos;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,8].value:=totalnweight;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+8 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[11,10].value:='';  }

  ExcelApp.Visible := true;
  end;
end;

procedure Tflyform.AWBExecute(Sender: TObject);
 var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;

begin


 ExcelApp := CreateOleObject('Excel.Application');

  // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(out_dir+'awb.xls');
  //WorkBook.WorkSheets[1].Cells[3,1].value:='DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD';
  WorkBook.WorkSheets[1].Cells[32,1].value:=filterprop.Fields[0].Value;
  WorkBook.WorkSheets[1].Cells[32,2].value:=filterprop.Fields[1].Value;
  WorkBook.WorkSheets[1].Cells[42,1].value:=filterprop.Fields[0].Value;
  WorkBook.WorkSheets[1].Cells[42,2].value:=filterprop.Fields[1].Value;
//  WorkBook.WorkSheets[1].cells[1,1].Interior.Color := RGB(223, 123, 123);





  ExcelApp.Visible := true;

end;

procedure Tflyform.MANIFESTExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginColMark,BeginColPos, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    colmark, colpos: integer;
    rowcounttotal: integer;
begin
    beginrow:=24;
    BeginColPos:=7;
    BeginColMark:=3;
    rowcounttotal:=1;
    rowcount:=1;
    colmark:=begincolmark;
    colpos:=BeginColPos;
 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Application.EnableEvents := false;
 Workbook := ExcelApp.WorkBooks.Add(out_dir+'manifest.xls');

  fly_pos.First;
 while not fly_pos.Eof do
    begin
  WorkBook.WorkSheets[1].Cells[rowcount+beginrow-1,colmark].value:=fly_pos.FieldByName('xcode').Value;
  WorkBook.WorkSheets[1].Cells[rowcount+beginrow-1,colpos].value:=fly_pos.FieldByName('partposcount').Value;

  if rowcount=40
   then
    begin
   rowcount:=1;
   colmark:=colmark+10;
   colpos:=colpos+10;
    end
    else
     inc(rowcount);

    if rowcounttotal=80
     then
      begin
        colmark:=22;
        colpos:=26;
      end;

    if rowcounttotal=120
     then
      begin
        colmark:=31;
        colpos:=35;
      end;

     inc(rowcounttotal);
     fly_pos.Next;

   end;

 WorkBook.WorkSheets[1].Cells[19,11]:=filterprop.Fields[0].Value;
 WorkBook.WorkSheets[1].Cells[19,35]:=filterprop.Fields[1].Value;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');

  //WorkBook.WorkSheets[1].Cells[31,13].value:=label13.Caption;
  //WorkBook.WorkSheets[1].Cells[39,7].value:=filterprop.Fields[1].Value;
  //WorkBook.WorkSheets[1].Cells[47,7].value:=filterprop.Fields[1].Value;
  //WorkBook.WorkSheets[1].Cells[39,5].value:=filterprop.Fields[0].Value;
  //WorkBook.WorkSheets[1].Cells[47,5].value:=filterprop.Fields[0].Value;
  ExcelApp.Visible := true;

end;

procedure Tflyform.loadposExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    colpos: integer;
begin



end;

procedure Tflyform.commentChange(Sender: TObject);
begin
 modiffly:=true;
end;



procedure Tflyform.load_townExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    totalweight: double;
    totalpos: double;
    totalvolume: double;
    transpos: double;
    transweight: double;
    transvolume: double;

begin


end;

procedure Tflyform.SpeedButton4Click(Sender: TObject);
begin
   opener_price_type:=7;
   changeitem.ParamByName('opertype').Value:=2;
   changeitem.ParamByName('ord_id').Value:=fly_pos.fieldbyname('ord_id').Value;
   changeitem.ParamByName('id').Value:=fly_pos.fieldbyname('id').Value;
   formaddpackexecute(2);
end;

procedure Tflyform.SpeedButton3Click(Sender: TObject);
 var
 bmark: Tbookmark;
 strlog: string;
 begin
screen.Cursor:=crhourglass;
opener_price_type:=8;

  if MessageDlg('Удалить позицию?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin

   bmark:=fly_pos_grid.DataSource.DataSet.GetBookmark;
   fly_pos_grid.DataSource.DataSet.DisableControls;

   flyform.newlog.ParamByName('log_type').Value:=opener_price_type;
   flyform.newlog.ParamByName('logdate').Value:=now();
   flyform.newlog.ParamByName('logcontent').AsString:='';
   flyform.newlog.ParamByName('user_id').Value:=dm.users.fieldbyname('user_id').Value;
   flyform.newlog.ParamByName('ord_id').Value:=current_fly;
   newlog.Prepare;
   newlog.ExecProc;
   flyform.newlogit.ParamByName('logcontent').Value:=flyform.fly_pos.fieldbyname('packtypename').value;
   flyform.newlogit.ParamByName('poscount').Value:=flyform.fly_pos.fieldbyname('poscount').value;
   flyform.newlogit.ParamByName('posweight').Value:=flyform.fly_pos.fieldbyname('posweight').value;
   flyform.newlogit.ParamByName('posprice').Value:=flyform.fly_pos.fieldbyname('posprice').value;
   flyform.newlogit.ParamByName('bagpos').Value:=flyform.fly_pos.fieldbyname('bagpos').value;
   flyform.newlogit.ParamByName('liorder').Value:=1;
   flyform.newlogit.ParamByName('log_id').Value:=flyform.newlog.ParamByName('n_id').Value;
   flyform.newlogit.Prepare;
   flyform.newlogit.ExecProc;

   delorditems.ParamByName('id').Value:=fly_pos.fieldbyname('id').Value;
   delorditems.ParamByName('ord_id').Value:=fly_pos.fieldbyname('ord_id').Value;
   delorditems.ParamByName('packtype_id').Value:=fly_pos.fieldbyname('packtype_id').Value;
   delorditems.ParamByName('trans_id').Value:=flylist.fieldbyname('trans_id').Value;
   delorditems.ParamByName('oper').Value:=0;
   delorditems.Prepare;
   delorditems.ExecProc;

   flytran.CommitRetaining;
   flytran.Active:=false;
   flytran.Active:=true;
   flylist.Active:=false;
   flylist.Active:=true;
   fly_pos.Active:=false;
   fly_pos.Active:=true;
   filterprop.Active:=false;
   filterprop.Active:=true;

   fly_pos_grid.DataSource.DataSet.GotoBookmark(bmark);
   fly_pos_grid.DataSource.DataSet.FreeBookmark(bmark);
   fly_pos_grid.DataSource.DataSet.EnableControls;
   flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
      end;
   screen.Cursor:=crdefault;
end;

procedure Tflyform.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if (fly_pos.CachedUpdates) and (fly_pos.Active) then
   fly_pos.ApplyUpdates;
end;

procedure Tflyform.N2Click(Sender: TObject);
begin

 if MessageDlg('КОД ТОВАРА '+fly_pos.fieldbyname('oemcode').AsString+' Добавить в справочник?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin
 fly_pos.ApplyUpdates;
 newpack.Params[0].Value:=fly_pos.fieldbyname('packtypename').Value;
 newpack.Params[1].Value:=now();
 newpack.Params[2].Value:=fly_pos.fieldbyname('oemcode').Value;
 newpack.Params[3].AsString:=fly_pos.fieldbyname('posprice').Value;
 newpack.Prepare;
 newpack.ExecProc;
 pricetran.CommitRetaining;
 pricetran.Active:=false;
 pricetran.Active:=true;
  end;
end;

procedure Tflyform.N3Click(Sender: TObject);
begin
   opener_price_type:=3;

   helper.Active:=false;
   helper.SQL.Clear;
   helper.SQL.Add('select sum(tm.packkol), tm.tm_id from orditems ot, orditems_tm tm ');
   helper.SQL.Add('where ot.id=tm.orditem_id and ot.id ='+fly_pos.fieldbyname('id').AsString+' group by tm.tm_id');
   helper.Active:=true;

   inspacking.Active:=false;
   inspacking.ParamByName('trans_id').Value:=flylist.FieldByName('trans_id').Value;
   inspacking.ParamByName('packtype_id').Value:=fly_pos.FieldByName('packtype_id').Value;
   inspacking.Active:=true;


   newitem.ParamByName('opertype').Value:=1;
   newitem.ParamByName('ord_id').Value:=current_fly;
   newitem.ParamByName('id').Value:=0;
   openpriceForm(3,flyform.flylist.fieldbyname('send_id').Value);//priceUnit
end;

procedure Tflyform.N5Click(Sender: TObject);
var
 n : integer;
 ordlist: string;
begin

    opener_price_type:=5;
     for n:=0 to fly_pos_grid.SelectedRows.Count-1 do
	   begin
      fly_pos.GotoBookmark(pointer(flyform.fly_pos_grid.SelectedRows[n]));
       if (n=0) then
         ordlist:=ordlist+'('+fly_pos.fieldbyname('id').asstring
       else
       ordlist:=ordlist+','+fly_pos.fieldbyname('id').asstring;
  	 end;

    helper.Active:=false;
    helper.SQL.Clear;
    helper.SQL.Add('select sum(tm.packkol), tm.tm_id from orditems ot, orditems_tm tm ');
    helper.SQL.Add('where ot.id=tm.orditem_id and ot.id in '+ordlist+') group by tm.tm_id');
    helper.Active:=true;

    newitem.ParamByName('opertype').Value:=1;
    newitem.ParamByName('ord_id').Value:=current_fly;
    newitem.ParamByName('id').Value:=0;
    updatetransportpos.ParamByName('trans_id').Value:=current_trans;

   openpriceForm(5,flyform.flylist.fieldbyname('send_id').Value);//priceUnit

end;

procedure Tflyform.N7Click(Sender: TObject);
begin

   opener_price_type:=6;

   newitem.ParamByName('opertype').Value:=2;
   newitem.ParamByName('ord_id').Value:=current_fly;
   newitem.ParamByName('id').Value:=fly_pos.fieldbyname('id').value;
   newitem.ParamByName('packkol').Value:=fly_pos.fieldbyname('poscount').value;
   newitem.ParamByName('packweight').Value:=fly_pos.fieldbyname('posweight').value;
   newitem.ParamByName('bagpos').Value:=fly_pos.fieldbyname('bagpos').value;
   newitem.ParamByName('lupdate').Value:=fly_pos.fieldbyname('lupdate').Value;

   updatetransportpos.ParamByName('trans_id').Value:=current_trans;
   updatetransportpos.ParamByName('packtype2').Value:=fly_pos.FieldByName('packtype_id').Value;
   openpriceForm(6,flyform.flylist.fieldbyname('send_id').Value);//priceUnit

end;

procedure Tflyform.dsflyposDataChange(Sender: TObject; Field: TField);
begin
{ fly_pos_grid.Options:=[dgrowselect,dgtitles,dgcolumnresize,dgcollines,dgrowlines,dgtabs,dgconfirmdelete,dgcancelonexit,dgmultiselect];}
end;

procedure Tflyform.originloadExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    totalweight: double;
    totalbagpos: double;
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 transitems.Active:=false;
 transitems.ParamByName('ord_id').Value:=current_fly;
 transitems.Active:=true;

    totalweight:=0;
    totalbagpos:=0;

 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Application.EnableEvents := false;
 Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');


  Screen.Cursor:=crHourGlass;

   n:=5;
   WorkBook.WorkSheets[1].Columns[2].ColumnWidth := 10;
   WorkBook.WorkSheets[1].Columns[3].ColumnWidth := 50;


 WorkBook.WorkSheets[1].Cells[2, 1]:='Исходная загрузка: инвойс № '+flylist.fieldbyname('ordnumber').AsString+'  '+flylist.fieldbyname('createdate').AsString+'  '+flylist.fieldbyname('outnum').AsString;
 cell1:=WorkBook.WorkSheets[1].Cells[2,1];
 cell2:=WorkBook.WorkSheets[1].Cells[2,1];
 range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 range.font.name:='Arial';
 range.font.size:=12;
 range.font.bold:=true;
 WorkBook.WorkSheets[1].Rows[2].rowheight:=20;

    WorkBook.WorkSheets[1].Cells[N-1, 2]:='№';
    WorkBook.WorkSheets[1].Cells[N-1, 3]:='Наименование';
    WorkBook.WorkSheets[1].Cells[N-1, 4]:='Кол-во';
    WorkBook.WorkSheets[1].Cells[N-1, 5]:='Вес';
    WorkBook.WorkSheets[1].Cells[N-1, 6]:='Мест';

      transitems.First;
      i:=1;
      while not transitems.Eof do begin
         WorkBook.WorkSheets[1].Cells[N, 2].font.name:='arial';
         WorkBook.WorkSheets[1].Cells[N, 2].font.size:=8;

         WorkBook.WorkSheets[1].Cells[N, 2]:=i;
         WorkBook.WorkSheets[1].Cells[N, 3]:=transitems.fieldbyname('packtypename1').asstring;
         WorkBook.WorkSheets[1].Cells[N, 4]:=transitems.fieldbyname('poscount').value;
         WorkBook.WorkSheets[1].Cells[N, 5]:=transitems.fieldbyname('posweight').Asinteger;
         WorkBook.WorkSheets[1].Cells[N, 6]:=transitems.fieldbyname('bagpos').AsInteger;
         totalweight:=totalweight+transitems.fieldbyname('posweight').AsInteger;
         totalbagpos:=totalbagpos+transitems.fieldbyname('bagpos').AsInteger;
         inc(n);
         inc(i);
         transitems.Next;
     end;
        inc(n);
 packing_all.Active:=false;
 ExcelApp.visible:=true;
 Screen.Cursor:=crDefault;

end;

procedure Tflyform.PacklistChExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight, totalnweight: double;
    totalpos: integer;

begin
 od1.InitialDir:=out_dir;
 if od1.Execute
  then
   begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 totalnweight:=0;
 totalpos:=0;

 ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=19;
  j:=1;

   while not fly_pos.Eof do begin
  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('title_ch').asstring+'                                                                   '+fly_pos.fieldbyname('packtypename').asstring;
  WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('oemcode').asstring;
  WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('bagpos').value;
  WorkBook.WorkSheets[1].Cells[i,7].value:=roundto(fly_pos.fieldbyname('posweight').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,8].value:=roundto(fly_pos.fieldbyname('nweight').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalweight:=totalweight+fly_pos.fieldbyname('posweight').value;
  totalnweight:=totalnweight+fly_pos.fieldbyname('nweight').value;
  totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
  fly_pos.Next;

   end;
  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,9];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,8];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[12,2].value:=WorkBook.WorkSheets[1].Cells[12,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+' от '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[9,2].value:=WorkBook.WorkSheets[1].Cells[9,2].value+' '+flylist.fieldbyname('client_name').AsString+' '+flylist.fieldbyname('cl_address').AsString;
  if i<61 then
  begin
    for j:=i to 66
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[66,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
   WorkBook.WorkSheets[1].Cells[66,2].HorizontalAlignment:=1;

   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
   WorkBook.WorkSheets[1].Cells[64,3].value:=WorkBook.WorkSheets[1].Cells[17,10].value;

   WorkBook.WorkSheets[1].Cells[66,6].value:=totalpos;
   WorkBook.WorkSheets[1].Cells[66,7].value:=totalweight;
   WorkBook.WorkSheets[1].Cells[66,8].value:=totalnweight;
   WorkBook.WorkSheets[1].Cells[66,7].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,7].font.size:=10;
   WorkBook.WorkSheets[1].Cells[66,8].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,8].font.size:=10;
   WorkBook.WorkSheets[1].Cells[66,6].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,6].font.size:=10;

   for j:=2 to 7 do begin
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].weight:=2;
   end;

  end
    else
    begin
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[17,10].value;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
   WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,7].value:=totalweight;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalpos;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,8].value:=totalnweight;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+8 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[11,10].value:='';

  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.PackListEngExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight,totalnweight: double;
    totalpos: integer;
    searchpos,searchpos_en: integer;
    searchstr,searchstr_en: string;

begin
 od1.InitialDir:=out_dir;
 if od1.Execute
  then
   begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 totalnweight:=0;
 totalpos:=0;

 ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=17;
  j:=1;

   while not fly_pos.Eof do begin

   searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
   searchstr:=fly_pos.fieldbyname('packtypename').asstring;
   searchpos:=pos('(', searchstr);
   if searchpos<>0 then
    begin
     searchstr:=copy(searchstr,searchpos,length(searchstr));
     searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);
    end
    else searchstr:='';

  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('ptitle').asstring+' '+searchstr+Chr(10)+fly_pos.fieldbyname('packtypename').asstring;
  WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  WorkBook.WorkSheets[1].Cells[i,5].value:=copy(fly_pos.fieldbyname('oemcode').asstring,1,6);
  WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('bagpos').value;
  WorkBook.WorkSheets[1].Cells[i,7].value:=roundto(fly_pos.fieldbyname('posweight').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,8].value:=roundto(fly_pos.fieldbyname('nweight').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalweight:=totalweight+fly_pos.fieldbyname('posweight').value;
  totalnweight:=totalnweight+fly_pos.fieldbyname('nweight').value;
  totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
  fly_pos.Next;

   end;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,9];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,8];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[12,2].value:=WorkBook.WorkSheets[1].Cells[12,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+' from '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[9,2].value:=WorkBook.WorkSheets[1].Cells[9,2].value+' '+flylist.fieldbyname('client_name').AsString+' '+flylist.fieldbyname('cl_address').AsString;
  if i<61 then
  begin
    for j:=i to 66
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[66,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
   WorkBook.WorkSheets[1].Cells[66,2].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
   WorkBook.WorkSheets[1].Cells[64,3].value:=WorkBook.WorkSheets[1].Cells[17,10].value;

   WorkBook.WorkSheets[1].Cells[66,7].value:=totalweight;
   WorkBook.WorkSheets[1].Cells[66,7].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,7].font.size:=10;
   WorkBook.WorkSheets[1].Cells[66,6].value:=totalpos;
   WorkBook.WorkSheets[1].Cells[66,6].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,6].font.size:=10;
   WorkBook.WorkSheets[1].Cells[66,8].value:=totalnweight;
   WorkBook.WorkSheets[1].Cells[66,8].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[66,8].font.size:=10;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].weight:=2;
   end;

  end
    else
    begin
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[17,10].value;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,7].value:=totalweight;
  WorkBook.WorkSheets[1].Cells[i+6,8].value:=totalnweight;
  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalpos;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+8 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[11,10].value:='';

  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.bagpackExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
begin

 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Application.EnableEvents := false;
 Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');

 //owMessage('sdf');
 WorkBook.WorkSheets[1].Cells[2, 1].value:='Подробный пакинг по транспорту: '+flylist.fieldbyname('outnum').AsString;
 //ShowMessage('sdf11');
 cell1:=WorkBook.WorkSheets[1].Cells[2,1];
 cell2:=WorkBook.WorkSheets[1].Cells[2,1];
 range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 range.font.name:='Arial';
 range.font.size:=12;
 range.font.bold:=true;
 WorkBook.WorkSheets[1].Rows[2].rowheight:=20;

 Screen.Cursor:=crHourGlass;
   n:=5;

 WorkBook.WorkSheets[1].Columns[5].ColumnWidth := 50;
 WorkBook.WorkSheets[1].Columns[7].ColumnWidth := 25;
 WorkBook.WorkSheets[1].Columns[3].ColumnWidth := 25;


    WorkBook.WorkSheets[1].Cells[n-1,3].value:='Место';
    WorkBook.WorkSheets[1].Cells[n-1,4].value:='Вес места';
    WorkBook.WorkSheets[1].Cells[n-1,5].value:='Наименование';
    WorkBook.WorkSheets[1].Cells[n-1,6].value:='Кол-во';

  // ShowMessage('sdf');

   pospack.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
   pospack.Active:=true;
   packing1.Active:=true;
   pospack.First;
    while not pospack.Eof do begin
       posweight:=0;
       packing1.First;
        WorkBook.WorkSheets[1].Cells[n,3].value:=pospack.Fields[1].asstring;
        WorkBook.WorkSheets[1].Cells[n,4].value:=pospack.Fields[2].asstring;
      while not packing1.Eof do begin
         WorkBook.WorkSheets[1].Cells[n,6].font.name:='Arial';
         WorkBook.WorkSheets[1].Cells[n,6].font.size:=8;
         WorkBook.WorkSheets[1].Cells[n,6].font.bold:=true;

         WorkBook.WorkSheets[1].Cells[n,5].value:=packing1.Fields[4].asstring;
         WorkBook.WorkSheets[1].Cells[n,6].value:=packing1.Fields[6].asstring;
             inc(n);
         packing1.Next;
        end;
        inc(n);
       pospack.next;
     end;

    packing1.Active:=false;

    //f1.SelStartRow:=4;
    //f1.SelEndRow:=n;
    //f1.SelStartCol:=3;
    //f1.SelEndCol:=7;
    //f1.setfont('arial cyr',9,true,false,false,false,clblack,false,false);
    //F1.SetBorder(2, 1, 1, 1, 1, 0, clBlack, clBlack, clBlack, clBlack, clBlack);

 excelapp.visible:=true;
 Screen.Cursor:=crDefault;

end;

procedure Tflyform.spezExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    totalweight: double;
    totalbagpos: double;
    st1, st2: string;
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
begin
   flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
   ExcelApp := CreateOleObject('Excel.Application');
   ExcelApp.Application.EnableEvents := false;
   Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');



  Screen.Cursor:=crHourGlass;
  n:=5;


    WorkBook.WorkSheets[1].Cells[2,1].value:='Спецификация к загрузке: инвойс №'+flylist.fieldbyname('ordnumber').AsString+'  '+flylist.fieldbyname('createdate').AsString+'  '+flylist.fieldbyname('outnum').AsString;
    WorkBook.WorkSheets[1].Cells[n-1,2].value:='№';
    WorkBook.WorkSheets[1].Cells[n-1,3].value:='Наименование';
    WorkBook.WorkSheets[1].Cells[n-1,4].value:='Кол-во';
    WorkBook.WorkSheets[1].Cells[n-1,5].value:='Цена';
    WorkBook.WorkSheets[1].Cells[n-1,6].value:='Стоимость';
    WorkBook.WorkSheets[1].Cells[n-1,7].value:='Вес';
    WorkBook.WorkSheets[1].Cells[n-1,8].value:='Нетто';
    WorkBook.WorkSheets[1].Cells[n-1,9].value:='Мест';
    WorkBook.WorkSheets[1].Cells[n-1,10].value:='Код';
    WorkBook.WorkSheets[1].Cells[n-1,15].value:='Цена за кг.';
    WorkBook.WorkSheets[1].Cells[n-1,16].value:='Наименование расшир.';

      fly_pos.First;
      i:=1;
      while not fly_pos.Eof do begin

       WorkBook.WorkSheets[1].Cells[n,2].value:=i;
       WorkBook.WorkSheets[1].Columns[3].ColumnWidth:=20;
       WorkBook.WorkSheets[1].Cells[n,3].value:=fly_pos.fieldbyname('packtypename1').asstring;
       WorkBook.WorkSheets[1].Cells[n,4].value:=fly_pos.fieldbyname('poscount').value;
       WorkBook.WorkSheets[1].Cells[n,5].value:=fly_pos.fieldbyname('price_inv').value;
       WorkBook.WorkSheets[1].Cells[n,6].value:=fly_pos.fieldbyname('totalsumm').value;
       WorkBook.WorkSheets[1].Cells[n,7].value:=roundto(fly_pos.fieldbyname('posweight').value+0.01,0);
       WorkBook.WorkSheets[1].Cells[n,8].value:=fly_pos.fieldbyname('nweight').AsInteger;
       WorkBook.WorkSheets[1].Cells[n,9].value:=fly_pos.fieldbyname('bagpos').AsInteger;
       WorkBook.WorkSheets[1].Cells[n,10].value:=fly_pos.fieldbyname('oemcode').asstring;

       totalweight:=totalweight+fly_pos.fieldbyname('posweight').AsInteger;
       totalbagpos:=totalbagpos+fly_pos.fieldbyname('bagpos').AsInteger;


        helper.Active:=false;
        helper.SQL.Clear;
        helper.SQL.Add('select t.tmname, nround(sum(tm.packkol),0) from orditems_tm tm, trademarks t');
        helper.SQL.Add('where tm.tm_id=t.tm_id and tm.orditem_id='+fly_pos.fieldbyname('id').asstring);
        helper.SQL.Add(' group by t.tmname');
        helper.Active:=true;
        helper.First;
        st1:='';
        st2:='';
        i1:=n;
         while not helper.Eof do
          begin
           WorkBook.WorkSheets[1].Cells[n,11].value:=WorkBook.WorkSheets[1].Cells[n,11].value+helper.Fields[0].AsString+' ('+helper.Fields[1].AsString+') ; ';
           helper.Next;
          end;

        WorkBook.WorkSheets[1].Columns[13].ColumnWidth:=20;
        WorkBook.WorkSheets[1].Columns[14].ColumnWidth:=20;
        WorkBook.WorkSheets[1].Cells[i1,13].value:=fly_pos.fieldbyname('ptitle').asstring;
        WorkBook.WorkSheets[1].Cells[i1,14].value:=fly_pos.fieldbyname('title_ch').asstring;
        WorkBook.WorkSheets[1].Cells[i1,15].value:=fly_pos.fieldbyname('posprice_weight').value;
        WorkBook.WorkSheets[1].Cells[i1,16].value:=fly_pos.fieldbyname('packtypename_long').asString;
         inc(n);
         inc(i);
         fly_pos.Next;
     end;
      inc(n);
      WorkBook.WorkSheets[1].Cells[n,7].value:=totalweight;
      WorkBook.WorkSheets[1].Cells[n,8].value:=totalbagpos;

      packing_all.Active:=false;
   ExcelApp.Visible := true;
   Screen.Cursor:=crDefault;

end;

procedure Tflyform.historyExecute(Sender: TObject);
var ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile,str, logt : String;
    BeginCol, BeginRow, i, j,n : integer;
    RowCount, ColCount, number : integer;

begin
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 histor.Active:=false;
 histor.ParamByName('ord_id').Value:=current_fly;
 histor.Active:=true;



 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Application.EnableEvents := false;
 Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');
 i:=1;
 histor.First;
 logitems.Active:=true;
  WorkBook.WorkSheets[1].Cells[i,1]:='История событий '+'Транспорт: '+flylist.fieldbyname('outnum').AsString+' Создан: '+flylist.fieldbyname('username').AsString;
 i:=3;
 number:=1;

 WorkBook.WorkSheets[1].Columns[2].ColumnWidth := 34;
 WorkBook.WorkSheets[1].Columns[3].ColumnWidth := 7;
 WorkBook.WorkSheets[1].Columns[4].ColumnWidth := 7;
 WorkBook.WorkSheets[1].Columns[5].ColumnWidth := 7;
 WorkBook.WorkSheets[1].Columns[6].ColumnWidth := 7;
 WorkBook.WorkSheets[1].Columns[7].ColumnWidth := 12;
 WorkBook.WorkSheets[1].Columns[8].ColumnWidth := 34;
 WorkBook.WorkSheets[1].Columns[9].ColumnWidth := 7;
 WorkBook.WorkSheets[1].Columns[10].ColumnWidth := 7;
 WorkBook.WorkSheets[1].Columns[11].ColumnWidth := 7;
 WorkBook.WorkSheets[1].Columns[12].ColumnWidth := 7;



 while not histor.Eof do
     begin
    // ShowMessage(histor.Fieldbyname('logname').AsString);
     WorkBook.WorkSheets[1].Cells[i,1].value:=inttostr(number);

     WorkBook.WorkSheets[1].Cells[i,7].value:=histor.Fieldbyname('logname').AsString;
     //ShowMessage(histor.Fieldbyname('logcontent').AsString);
     WorkBook.WorkSheets[1].Cells[i,13].value:=histor.Fieldbyname('username').AsString;
     WorkBook.WorkSheets[1].Cells[i,14].value:=histor.Fieldbyname('logdate').AsString;

     logitems.First;
     j:=i; n:=i;
     while not logitems.Eof do begin
       if (logitems.FieldByName('liorder').Value=1) then
        begin
          WorkBook.WorkSheets[1].Cells[j,2].value:=logitems.Fieldbyname('logcontent').AsString;
          WorkBook.WorkSheets[1].Cells[j,3].value:=logitems.Fieldbyname('poscount').AsString;
          WorkBook.WorkSheets[1].Cells[j,4].value:=logitems.Fieldbyname('posweight').value;
          WorkBook.WorkSheets[1].Cells[j,5].value:=logitems.Fieldbyname('posprice').AsString;
          WorkBook.WorkSheets[1].Cells[j,6].value:=logitems.Fieldbyname('bagpos').AsString;
          inc(j);
        end;
       if (logitems.FieldByName('liorder').Value=2) then
        begin
          WorkBook.WorkSheets[1].Cells[n,8].value:=logitems.Fieldbyname('logcontent').AsString;
          WorkBook.WorkSheets[1].Cells[n,9].value:=logitems.Fieldbyname('poscount').AsString;
          WorkBook.WorkSheets[1].Cells[n,10].value:=logitems.Fieldbyname('posweight').value;
          WorkBook.WorkSheets[1].Cells[n,11].value:=logitems.Fieldbyname('posprice').AsString;
          WorkBook.WorkSheets[1].Cells[n,12].value:=logitems.Fieldbyname('bagpos').AsString;
          inc(n);
        end;
       logitems.Next;
     end;
       if (j>=n) then i:=j else i:=n;

     inc(i);
     inc(number);
     histor.Next;
   end;


  ExcelApp.visible:=true;

{ f1.Read(out_dir+'packing.xls',SM);
 Screen.Cursor:=crHourGlass;
// f1.TextRC[8,6]:='2';
   n:=5;
  f1.SetColWidth(1,1,1000,false);
    f1.SetColWidth(2,2,5000,false);
    f1.SetColWidth(3,3,25000,false);
    f1.SetColWidth(4,4,4000,false);
    f1.SetColWidth(5,5,4000,false);
    f1.SelStartCol:=2;
    F1.SelEndCol:=8;
    f1.setfont('arial',8,true,false,false,false,clblack,false,false);

 F1.TextRC[2,1]:='История событий '+'Транспорт: '+flylist.fieldbyname('outnum').AsString+' Создан: '+flylist.fieldbyname('username').AsString;
 f1.SetActiveCell(2,1);
 f1.RowHeight[2]:=500;
 F1.setfont('arial',12,true,false,false,false,clblack,false,false);


    F1.textRC[N-1,2]:='№';
    F1.textRC[N-1,3]:='Наименование';
    F1.textRC[N-1,4]:='Кол-во';
    F1.textRC[N-1,5]:='Вес';
    F1.textRC[N-1,6]:='Мест';



      histor.First;
      i:=1;
      while not histor.Eof do begin

         f1.SetActiveCell(N,2);
         f1.setfont('arial',8,false,true,false,false,clblack,false,false);
         F1.numberRC[N,1]:=i;
         F1.textRC[N,2]:=histor.fieldbyname('logname').AsString;
         F1.textRC[N,3]:=histor.fieldbyname('logcontent').AsString;
         F1.textRC[N,4]:=histor.fieldbyname('username').asstring;
         F1.textRC[N,5]:=histor.fieldbyname('logdate').AsString;


        // F1.textRC[N,5]:=histor.fieldbyname('logcontent').AsString;
//         F1.numberRC[N,6]:=transitems.fieldbyname('bagpos').AsInteger;
         inc(n);
         inc(i);
         histor.Next;
     end;
        f1.SelStartRow:=4;
        f1.SelEndRow:=n;
        f1.SelStartCol:=2;
        f1.SelEndCol:=6;
//     F1.SetBorder(2, 1, 1, 1, 1, 0, clBlack, clBlack, clBlack, clBlack, clBlack);
 histor.Active:=false;
 FNAME:=temp_dir+'zb'+FormatdateTime('ddhhnnss', Now)+'.xls';
 F1.Write(FNAME, F1FileExcel5);
 ShellExecute(0, 'open', PCHAR(FNAME), '', '', sw_show);
 Screen.Cursor:=crDefault;   }

end;

procedure Tflyform.InvoiceChExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalsumm: double;

    stroka: string;
begin
 od1.InitialDir:=out_dir;
  if od1.Execute
   then
    begin
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalsumm:=0;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=17;
  j:=1;

  stroka:=WorkBook.WorkSheets[1].Cells[17,2].value;
     WorkBook.WorkSheets[1].Cells[17,2].value:='';
   while not fly_pos.Eof do begin
   WorkBook.WorkSheets[1].Cells[i,2].value:=j;

   WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('title_ch').asstring+'                                                                   '+fly_pos.fieldbyname('packtypename').asstring;
   //WorkBook.WorkSheets[1].Cells[i,3].WrapText:=true;
   //WorkBook.WorkSheets[1].Cells[i,3].Rowheight:=24;

   WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
   WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('posprice').value;
   WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('totalsumm').value;
   WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('bagpos').value;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;
   inc(i);
   inc(j);
   totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm').value;
   fly_pos.Next;
   end;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,7];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
 // range.HorizontalAlignment:=3;
  range.font.size:=9;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  //range.HorizontalAlignment:=1;

  cell1:=WorkBook.WorkSheets[1].Cells[17,5];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.NumberFormat:='0,00';


  WorkBook.WorkSheets[1].Cells[12,2].value:=WorkBook.WorkSheets[1].Cells[12,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,4].value:=' '+flylist.fieldbyname('ordnumber').AsString+' '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[9,2].value:=WorkBook.WorkSheets[1].Cells[9,2].value+' '+flylist.fieldbyname('client_name').value+' '+flylist.fieldbyname('cl_address').value;

  if i<=60 then begin

   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
   WorkBook.WorkSheets[1].Cells[64,3].value:=WorkBook.WorkSheets[1].Cells[17,9].value;
   for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
      end;
  WorkBook.WorkSheets[1].Cells[66,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[66,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[66,6].font.size:=10;
  WorkBook.WorkSheets[1].Cells[66,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[66,2].HorizontalAlignment:=1;
     for j:=2 to 6 do begin
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].weight:=2;
   end;

    end
   else
    begin

     for j:=2 to 6 do
          begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].weight:=2;
          end;

  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[17,9].value;

  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=10;
 // WorkBook.WorkSheets[1].Cells[i+6,2].align:=alleft;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
     for j:=i  to i+7
   do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
   end;

    end;

  WorkBook.WorkSheets[1].Cells[11,10].value:='';
  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.InvoiceEngExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalsumm: double;
    stroka: string;
    searchpos,searchpos_en: integer;
    searchstr,searchstr_en: string;
begin
 od1.InitialDir:=out_dir;
  if od1.Execute
   then
    begin
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalsumm:=0;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=17;
  j:=1;

  stroka:=WorkBook.WorkSheets[1].Cells[i,2].value;
  WorkBook.WorkSheets[1].Cells[i,2].value:='';
   while not fly_pos.Eof do begin

   searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
   searchstr:=fly_pos.fieldbyname('packtypename').asstring;
   searchpos:=pos('(', searchstr);
   if searchpos<>0 then
    begin
     searchstr:=copy(searchstr,searchpos,length(searchstr));
     searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
     searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);
    end
    else searchstr:='';

   WorkBook.WorkSheets[1].Cells[i,2].value:=j;

   WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('ptitle').asstring+' '+searchstr+Chr(10)+fly_pos.fieldbyname('packtypename').asstring;
   //WorkBook.WorkSheets[1].Cells[i,3].WrapText:=true;
   //WorkBook.WorkSheets[1].Cells[i,3].Rowheight:=24;

   WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
   WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('price_inv').value;
   WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('totalsumm').value;
   WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('bagpos').value;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[i,6].borders[2].weight:=2;
   WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
   WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;
   inc(i);
   inc(j);
   totalsumm:=totalsumm+fly_pos.fieldbyname('totalsumm').value;
   fly_pos.Next;
   end;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,7];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[17,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
 // range.HorizontalAlignment:=3;
  range.font.size:=9;

  cell1:=WorkBook.WorkSheets[1].Cells[17,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  //range.HorizontalAlignment:=1;

  cell1:=WorkBook.WorkSheets[1].Cells[17,5];
  cell2:=WorkBook.WorkSheets[1].Cells[i,6];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.NumberFormat:='0,00';


  WorkBook.WorkSheets[1].Cells[13,2].value:=WorkBook.WorkSheets[1].Cells[13,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,4].value:=' №'+flylist.fieldbyname('ordnumber').AsString+' from '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[9,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').value+' '+flylist.fieldbyname('cl_address').value;

  if i<=60 then begin

   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
   WorkBook.WorkSheets[1].Cells[64,3].value:=WorkBook.WorkSheets[1].Cells[17,9].value;
   for j:=i to 66
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
      end;
  WorkBook.WorkSheets[1].Cells[66,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[66,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[66,6].font.size:=10;
  WorkBook.WorkSheets[1].Cells[66,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[66,2].HorizontalAlignment:=1;
     for j:=2 to 6 do begin
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[66,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[64,j].borders[4].weight:=2;
   end;

    end
   else
    begin

     for j:=2 to 6 do
          begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+7,j].borders[4].weight:=2;
          end;

  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[14,9].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[15,9].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[16,9].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[17,9].value;

  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalsumm;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=10;
 // WorkBook.WorkSheets[1].Cells[i+6,2].align:=alleft;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[11,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
     for j:=i  to i+7
   do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,6].borders[2].weight:=2;
   end;

    end;

  WorkBook.WorkSheets[1].Cells[11,10].value:='';
  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.N8Click(Sender: TObject);
begin
 ibsql1.ParamByName('operstate').Value:=3;
ibsql1.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
fly_grid.Repaint;
ibsql1.ExecQuery;
flytran.CommitRetaining;
flylist.Active:=false;
flylist.Active:=true;
end;

procedure Tflyform.N9Click(Sender: TObject);
begin
ibsql1.ParamByName('operstate').Value:=1;
ibsql1.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
fly_grid.Repaint;
ibsql1.ExecQuery;
flytran.CommitRetaining;
flylist.Active:=false;
flylist.Active:=true;
end;

procedure Tflyform.PopupMenu1Popup(Sender: TObject);
begin
 if flylist.FieldByName('operstate').Value=1
  then
   begin
     n9.Enabled:=false;
     n8.Enabled:=true;
   end
    else
     begin
      n8.Enabled:=false;
      n9.Enabled:=true;
     end;

  if flylist.FieldByName('trans_id').Value=null
  then
   begin
     n11.Enabled:=false;
   end
    else
     begin
      n11.Enabled:=true;
     end;
end;

procedure Tflyform.town_com1Change(Sender: TObject);
begin
 setfilter_fly();
end;

procedure Tflyform.setfilter_offExecute(Sender: TObject);
begin
 edit1.Text:='';
 town_com1.ItemIndex:=0;
 usercom.ItemIndex:=0;
 checkbox1.Checked:=false;
 setfilter_fly;
end;

procedure Tflyform.spec_transferExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    totalweight: double;
    totalbagpos: double;
    st1, st2: string;
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
begin
   flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
   ExcelApp := CreateOleObject('Excel.Application');
   ExcelApp.Application.EnableEvents := false;
   Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');



  Screen.Cursor:=crHourGlass;
  n:=5;


    WorkBook.WorkSheets[1].Cells[2,1].value:='Спецификация к загрузке: инвойс №'+flylist.fieldbyname('ordnumber').AsString+'  '+flylist.fieldbyname('createdate').AsString+'  '+flylist.fieldbyname('outnum').AsString;
    WorkBook.WorkSheets[1].Cells[n-1,2].value:='№';
    WorkBook.WorkSheets[1].Cells[n-1,3].value:='Наименование';
    WorkBook.WorkSheets[1].Cells[n-1,4].value:='Кол-во';
    WorkBook.WorkSheets[1].Cells[n-1,5].value:='Цена';
    WorkBook.WorkSheets[1].Cells[n-1,6].value:='Стоимость';
    WorkBook.WorkSheets[1].Cells[n-1,7].value:='Вес';
    WorkBook.WorkSheets[1].Cells[n-1,8].value:='Нетто';
    WorkBook.WorkSheets[1].Cells[n-1,9].value:='Мест';
    WorkBook.WorkSheets[1].Cells[n-1,10].value:='Код';
    WorkBook.WorkSheets[1].Cells[n-1,15].value:='Цена за кг.';
    WorkBook.WorkSheets[1].Cells[n-1,16].value:='Наименование расшир.';

      fly_pos.First;
      i:=1;
      while not fly_pos.Eof do begin

       WorkBook.WorkSheets[1].Cells[n,2].value:=i;
       WorkBook.WorkSheets[1].Columns[3].ColumnWidth:=20;
       WorkBook.WorkSheets[1].Cells[n,3].value:=fly_pos.fieldbyname('packtypename1').asstring;
       WorkBook.WorkSheets[1].Cells[n,4].value:=fly_pos.fieldbyname('poscount2').value;
       WorkBook.WorkSheets[1].Cells[n,5].value:=fly_pos.fieldbyname('price_inv2').value;
       WorkBook.WorkSheets[1].Cells[n,6].value:=fly_pos.fieldbyname('totalsumm2').value;
       WorkBook.WorkSheets[1].Cells[n,7].value:=roundto(fly_pos.fieldbyname('posweight2').value+0.01,0);
       WorkBook.WorkSheets[1].Cells[n,8].value:=fly_pos.fieldbyname('nweight2').AsInteger;
       WorkBook.WorkSheets[1].Cells[n,9].value:=fly_pos.fieldbyname('bagpos').AsInteger;
       WorkBook.WorkSheets[1].Cells[n,10].value:=fly_pos.fieldbyname('oemcode').asstring;

       totalweight:=totalweight+fly_pos.fieldbyname('posweight2').AsInteger;
       totalbagpos:=totalbagpos+fly_pos.fieldbyname('bagpos').AsInteger;


        helper.Active:=false;
        helper.SQL.Clear;
        helper.SQL.Add('select t.tmname, nround(sum(tm.packkol),0) from orditems_tm tm, trademarks t');
        helper.SQL.Add('where tm.tm_id=t.tm_id and tm.orditem_id='+fly_pos.fieldbyname('id').asstring);
        helper.SQL.Add(' group by t.tmname');
        helper.Active:=true;
        helper.First;
        st1:='';
        st2:='';
        i1:=n;
         while not helper.Eof do
          begin
           WorkBook.WorkSheets[1].Cells[n,11].value:=WorkBook.WorkSheets[1].Cells[n,11].value+helper.Fields[0].AsString+' ('+helper.Fields[1].AsString+') ; ';
           helper.Next;
          end;

        WorkBook.WorkSheets[1].Columns[13].ColumnWidth:=20;
        WorkBook.WorkSheets[1].Columns[14].ColumnWidth:=20;
        WorkBook.WorkSheets[1].Cells[i1,13].value:=fly_pos.fieldbyname('ptitle').asstring;
        WorkBook.WorkSheets[1].Cells[i1,14].value:=fly_pos.fieldbyname('title_ch').asstring;
        WorkBook.WorkSheets[1].Cells[i1,15].value:=fly_pos.fieldbyname('posprice_weight').value;
        WorkBook.WorkSheets[1].Cells[i1,16].value:=fly_pos.fieldbyname('packtypename_long').asString;
         inc(n);
         inc(i);
         fly_pos.Next;
     end;
      inc(n);
      WorkBook.WorkSheets[1].Cells[n,7].value:=totalweight;
      WorkBook.WorkSheets[1].Cells[n,8].value:=totalbagpos;

      packing_all.Active:=false;
   ExcelApp.Visible := true;
   Screen.Cursor:=crDefault;

end;

procedure Tflyform.N11Click(Sender: TObject);
var
trans_id: integer;
begin
 screen.Cursor:=crHourglass;
 cnvform:=tcnvform.Create(application);
 cnvform.Panel2.Visible:=false;
 cnvform.Panel1.Align:=alclient;
 cnvform.cnvall.Params[0].Value:=flylist.fieldbyname('trans_id').Value;
 cnvform.cnvinfo.Params[0].Value:=flylist.fieldbyname('trans_id').Value;
 cnvform.cnvpos.Params[0].Value:=flylist.fieldbyname('trans_id').Value;
 cnvform.cnvstore.Params[0].Value:=flylist.fieldbyname('trans_id').Value;
 cnvform.cnvall.Active:=true;
 cnvform.cnvinfo.Active:=true;
 cnvform.DateTimePicker1.Date:=cnvform.cnvinfo.fieldbyname('transcame').Value;
 cnvform.Caption:='Транспорт приход: '+cnvform.cnvinfo.fieldbyname('transinfo').Value;
 if cnvform.cnvinfo.FieldByName('operstate').Value=4
  then cnvform.ActionManager1.ActionBars[0].Items[5].Caption:='В работу';
 cnvform.Show;
 screen.Cursor:=crDefault;

end;

procedure Tflyform.packlistvagonExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight: double;
    fly_pos1: TIBQuery;

begin
flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(out_dir+'packlist_vag.xls');
  fly_pos.First;
  i:=16;
  j:=1;
  fly_pos.Active:=False;
  //fly_pos1.Create(fly_pos);
  fly_pos.SQL.Strings[fly_pos.SQL.Count-1]:='order by oemcode';
  fly_pos.Active:=True;
  fly_pos.First;
   while not fly_pos.Eof do begin
  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('packtypename').value;
  WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('oemcode').value;
  WorkBook.WorkSheets[1].Cells[i,6].value:=roundto(fly_pos.fieldbyname('posweight').value,0);
  WorkBook.WorkSheets[1].Cells[i,7].value:=fly_pos.fieldbyname('totalsumm').value;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,7].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,7].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalweight:=totalweight+fly_pos.fieldbyname('posweight').value;
  fly_pos.Next;

   end;
// fly_pos1.Destroy;
  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,7];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+' от '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('clname').AsString;
  if i<60 then
  begin
    for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,7].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,7].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;

   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

   WorkBook.WorkSheets[1].Cells[65,6].value:=totalweight;
   WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;

   for j:=2 to 7 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

  end
    else
    begin

  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalweight;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+8 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,7].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,7].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[10,10].value:='';

  ExcelApp.Visible := true;

end;


procedure Tflyform.pack_list_transferCHExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight, totalnweight: double;
    totalpos: integer;

begin
 od1.InitialDir:=out_dir;
 if od1.Execute
  then
   begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 totalnweight:=0;
 totalpos:=0;

 ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=16;
  j:=1;

   while not fly_pos.Eof do begin
  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('title_ch').asstring+'                                                                   '+fly_pos.fieldbyname('packtypename').asstring;
  WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  WorkBook.WorkSheets[1].Cells[i,5].value:=fly_pos.fieldbyname('oemcode').asstring;
  WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('bagpos').value;
  WorkBook.WorkSheets[1].Cells[i,7].value:=roundto(fly_pos.fieldbyname('posweight2').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,8].value:=roundto(fly_pos.fieldbyname('nweight2').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalweight:=totalweight+fly_pos.fieldbyname('posweight2').value;
  totalnweight:=totalnweight+fly_pos.fieldbyname('nweight2').value;
  totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
  fly_pos.Next;

   end;
  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,9];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,8];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+' от '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').AsString+' '+flylist.fieldbyname('cl_address').AsString;
  if i<60 then
  begin
    for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;

   WorkBook.WorkSheets[1].Cells[59,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

   WorkBook.WorkSheets[1].Cells[65,6].value:=totalpos;
   WorkBook.WorkSheets[1].Cells[65,7].value:=totalweight;
   WorkBook.WorkSheets[1].Cells[65,8].value:=totalnweight;
   WorkBook.WorkSheets[1].Cells[65,7].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[65,7].font.size:=10;
   WorkBook.WorkSheets[1].Cells[65,8].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[65,8].font.size:=10;
   WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;

   for j:=2 to 7 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

  end
    else
    begin
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,7].value:=totalweight;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalpos;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,8].value:=totalnweight;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+8 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[10,10].value:='';

  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.pack_list_transferENGExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight,totalnweight: double;
    totalpos: integer;

begin
 od1.InitialDir:=out_dir;
 if od1.Execute
  then
   begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 totalnweight:=0;
 totalpos:=0;

 ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=16;
  j:=1;

   while not fly_pos.Eof do begin
  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('ptitle').asstring+'                                                                   '+fly_pos.fieldbyname('packtypename').asstring;
  WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  WorkBook.WorkSheets[1].Cells[i,5].value:=copy(fly_pos.fieldbyname('oemcode').asstring,1,6);
  WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('bagpos').value;
  WorkBook.WorkSheets[1].Cells[i,7].value:=roundto(fly_pos.fieldbyname('posweight2').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,8].value:=roundto(fly_pos.fieldbyname('nweight2').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalweight:=totalweight+fly_pos.fieldbyname('posweight2').value;
  totalnweight:=totalnweight+fly_pos.fieldbyname('nweight2').value;
  totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
  fly_pos.Next;

   end;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,9];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,8];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+' от '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').AsString+' '+flylist.fieldbyname('cl_address').AsString;
  if i<60 then
  begin
    for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[59,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

   WorkBook.WorkSheets[1].Cells[65,7].value:=totalweight;
   WorkBook.WorkSheets[1].Cells[65,7].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[65,7].font.size:=10;
   WorkBook.WorkSheets[1].Cells[65,6].value:=totalpos;
   WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;
   WorkBook.WorkSheets[1].Cells[65,8].value:=totalnweight;
   WorkBook.WorkSheets[1].Cells[65,8].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[65,8].font.size:=10;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

  end
    else
    begin
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,7].value:=totalweight;
  WorkBook.WorkSheets[1].Cells[i+6,8].value:=totalnweight;
  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalpos;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+8 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[10,10].value:='';

  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.pack_list_transferExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight,totalnweight: double;
    totalpos: integer;

begin
 od1.InitialDir:=out_dir;
 if od1.Execute
  then
   begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 totalpos:=0;
 totalnweight:=0;
 ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=16;
  j:=1;

  while not fly_pos.Eof do begin

  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=fly_pos.fieldbyname('packtypename').asString;
  WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount2').value;
  WorkBook.WorkSheets[1].Cells[i,5].value:=copy(fly_pos.fieldbyname('oemcode').asstring,1,6);
  WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('bagpos').value;
  WorkBook.WorkSheets[1].Cells[i,7].value:=roundto(fly_pos.fieldbyname('posweight2').AsFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,8].value:=roundto(fly_pos.fieldbyname('nweight2').AsFloat+0.01,0);
  //WorkBook.WorkSheets[1].Cells[i,8].value:=fly_pos.fieldbyname('bagpos').value;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,8].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
  totalweight:=totalweight+fly_pos.fieldbyname('posweight2').value;
  totalnweight:=totalnweight+fly_pos.fieldbyname('nweight2').value;
  fly_pos.Next;

   end;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,8];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+'     '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').AsString+' '+flylist.fieldbyname('cl_address').AsString;
  if i<60 then
  begin
    for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,9].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,9].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;

   WorkBook.WorkSheets[1].Cells[59,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

   WorkBook.WorkSheets[1].Cells[65,7].value:=totalweight;
   WorkBook.WorkSheets[1].Cells[65,8].value:=totalnweight;
   WorkBook.WorkSheets[1].Cells[65,7].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[65,7].font.size:=10;
   WorkBook.WorkSheets[1].Cells[65,6].value:=totalpos;
   WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
   WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

  end
    else
    begin
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,7].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,7].value:=totalweight;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalpos;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,8].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,8].value:=totalnweight;

   for j:=2 to 8 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+8 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,8].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[10,10].value:='';

  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.pack_list_transferSERTExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
    totalweight,totalnweight: double;
    totalpos,searchpos,searchpos_en: integer;
    searchstr,searchstr_en: string;

begin
 od1.InitialDir:=out_dir;
 if od1.Execute
  then
   begin

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 totalweight:=0;
 totalnweight:=0;
 totalpos:=0;

 ExcelApp := CreateOleObject('Excel.Application');
  // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add(od1.FileName);
  fly_pos.First;
  i:=16;
  j:=1;



 while not fly_pos.Eof do begin
 searchstr_en:=fly_pos.fieldbyname('ptitle').asstring;
 searchstr:=fly_pos.fieldbyname('packtypename').asstring;
 searchpos_en:=pos(',', searchstr_en);
 searchpos:=pos(',', searchstr);
 searchstr_en:=copy(searchstr_en,1,searchpos_en);
 searchstr:=copy(searchstr,searchpos+1,length(searchstr));
 searchstr:=StringReplace(searchstr,'шт','pcs',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'кг','kg',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'пар','pr',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'упак','pack',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'м2','m2',[rfReplaceAll]);
 searchstr:=StringReplace(searchstr,'м','m',[rfReplaceAll]);

 searchstr_en:=searchstr_en+' '+fly_pos.fieldbyname('poscount').asstring+' '+searchstr;

{ if searchpos=0 then
  begin
   searchstr:=fly_pos.fieldbyname('ptitle').asstring+',';
   searchpos:=pos(',', searchstr);
  end
   else
  searchstr:=fly_pos.fieldbyname('ptitle').asstring;

  insert(' '+fly_pos.fieldbyname('poscount').asstring+' ',searchstr,searchpos+2);}


 // ShowMessage(searchstr);
  WorkBook.WorkSheets[1].Cells[i,2].value:=j;
  WorkBook.WorkSheets[1].Cells[i,3].value:=searchstr_en;
  //WorkBook.WorkSheets[1].Cells[i,4].value:=fly_pos.fieldbyname('poscount').value;
  WorkBook.WorkSheets[1].Cells[i,4].value:=copy(fly_pos.fieldbyname('oemcode').asstring,1,6);
  //WorkBook.WorkSheets[1].Cells[i,6].value:=fly_pos.fieldbyname('bagpos').value;
  //WorkBook.WorkSheets[1].Cells[i,7].value:=roundto(fly_pos.fieldbyname('posweight').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,5].value:=roundto(fly_pos.fieldbyname('nweight2').asFloat+0.01,0);
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,2].borders[1].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,5].borders[2].linestyle:=0;
  WorkBook.WorkSheets[1].Cells[i,5].borders[2].weight:=2;
  WorkBook.WorkSheets[1].Cells[i,3].HorizontalAlignment:=1;
  WorkBook.WorkSheets[1].Cells[i,4].HorizontalAlignment:=3;
  WorkBook.WorkSheets[1].Cells[i,5].HorizontalAlignment:=3;
 // WorkBook.WorkSheets[1].Cells[i,6].HorizontalAlignment:=3;

  inc(i);
  inc(j);
  totalweight:=totalweight+fly_pos.fieldbyname('posweight2').value;
  totalnweight:=totalnweight+fly_pos.fieldbyname('nweight2').value;
  totalpos:=totalpos+fly_pos.fieldbyname('bagpos').value;
  fly_pos.Next;

   end;

  {cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.WrapText:=true;
  range.RowHeight:=24;              }

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,9];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.VerticalAlignment:=xlCenter;

  cell1:=WorkBook.WorkSheets[1].Cells[16,2];
  cell2:=WorkBook.WorkSheets[1].Cells[i,8];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
  range.font.name:='Times New Roman';
//  range.HorizontalAlignment:=3;
  range.font.size:=10;

  cell1:=WorkBook.WorkSheets[1].Cells[16,3];
  cell2:=WorkBook.WorkSheets[1].Cells[i,3];
  range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 // range.HorizontalAlignment:=1;



  WorkBook.WorkSheets[1].Cells[11,2].value:=WorkBook.WorkSheets[1].Cells[11,2].value+flylist.fieldbyname('outnum').value;
  WorkBook.WorkSheets[1].Cells[4,2].value:=WorkBook.WorkSheets[1].Cells[4,2].value+' № '+flylist.fieldbyname('ordnumber').AsString+'      '+flylist.fieldbyname('createdate').AsString;
  WorkBook.WorkSheets[1].Cells[8,2].value:=WorkBook.WorkSheets[1].Cells[8,2].value+' '+flylist.fieldbyname('client_name').AsString+' '+flylist.fieldbyname('cl_address').AsString;
  if i<60 then
  begin
    for j:=i to 65
     do
      begin
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
       WorkBook.WorkSheets[1].Cells[j,5].borders[2].linestyle:=0;
       WorkBook.WorkSheets[1].Cells[j,5].borders[2].weight:=2;
      end;
   WorkBook.WorkSheets[1].Cells[65,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;
   WorkBook.WorkSheets[1].Cells[65,2].HorizontalAlignment:=1;
   WorkBook.WorkSheets[1].Cells[59,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
   WorkBook.WorkSheets[1].Cells[60,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
   WorkBook.WorkSheets[1].Cells[61,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
   WorkBook.WorkSheets[1].Cells[62,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
   WorkBook.WorkSheets[1].Cells[63,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;

   //WorkBook.WorkSheets[1].Cells[65,7].value:=totalweight;
   //WorkBook.WorkSheets[1].Cells[65,7].font.bold:=true;
   //WorkBook.WorkSheets[1].Cells[65,7].font.size:=10;
   //WorkBook.WorkSheets[1].Cells[65,6].value:=totalpos;
   //WorkBook.WorkSheets[1].Cells[65,6].font.bold:=true;
   //WorkBook.WorkSheets[1].Cells[65,6].font.size:=10;
   WorkBook.WorkSheets[1].Cells[65,5].value:=totalnweight;
   WorkBook.WorkSheets[1].Cells[65,5].font.bold:=true;
//   WorkBook.WorkSheets[1].Cells[65,8].font.size:=10;

   for j:=2 to 5 do begin
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[65,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[63,j].borders[4].weight:=2;
   end;

  end
    else
    begin
  WorkBook.WorkSheets[1].Cells[i+1,3].value:=WorkBook.WorkSheets[1].Cells[12,10].value;
  WorkBook.WorkSheets[1].Cells[i+2,3].value:=WorkBook.WorkSheets[1].Cells[13,10].value;
  WorkBook.WorkSheets[1].Cells[i+3,3].value:=WorkBook.WorkSheets[1].Cells[14,10].value;
  WorkBook.WorkSheets[1].Cells[i+4,3].value:=WorkBook.WorkSheets[1].Cells[15,10].value;
  WorkBook.WorkSheets[1].Cells[i+5,3].value:=WorkBook.WorkSheets[1].Cells[16,10].value;
  WorkBook.WorkSheets[1].Cells[i+6,2].value:=WorkBook.WorkSheets[1].Cells[10,10].value;

 // WorkBook.WorkSheets[1].Cells[i+6,2].HorizontalAlignment:=1;
 // WorkBook.WorkSheets[1].Cells[i+6,7].font.bold:=true;
 // WorkBook.WorkSheets[1].Cells[i+6,7].font.size:=12;
 // WorkBook.WorkSheets[1].Cells[i+6,6].font.bold:=true;
//  WorkBook.WorkSheets[1].Cells[i+6,6].font.size:=12;
  WorkBook.WorkSheets[1].Cells[i+6,5].font.bold:=true;
  WorkBook.WorkSheets[1].Cells[i+6,5].font.size:=12;
 // WorkBook.WorkSheets[1].Cells[i+6,7].value:=totalweight;
  WorkBook.WorkSheets[1].Cells[i+6,5].value:=totalnweight;
 // WorkBook.WorkSheets[1].Cells[i+6,6].value:=totalpos;

   for j:=2 to 5 do begin
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+5,j].borders[4].weight:=2;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].linestyle:=0;
    WorkBook.WorkSheets[1].Cells[i+8,j].borders[4].weight:=2;
   end;

    for j:=i  to i+5 do begin
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,2].borders[1].weight:=2;
   WorkBook.WorkSheets[1].Cells[j,5].borders[2].linestyle:=0;
   WorkBook.WorkSheets[1].Cells[j,5].borders[2].weight:=2;
   end;
    end;
  WorkBook.WorkSheets[1].Cells[10,10].value:='';

  ExcelApp.Visible := true;
  end;

end;

procedure Tflyform.viewExecute(Sender: TObject);
begin
 {}
end;

procedure Tflyform.view1Execute(Sender: TObject);
 var
  i: integer;
begin
  for i:=1 to 9
   do begin
    fly_pos_grid.Columns[i].Visible:=true;
   end;
    fly_pos_grid.Columns[3].Visible:=false;
   for i:=10 to 17
   do begin
    fly_pos_grid.Columns[i].Visible:=false;
   end;

  {}
end;

procedure Tflyform.view2Execute(Sender: TObject);
 var
  i:integer;
begin
  for i:=2 to 5
   do begin
    fly_pos_grid.columns[i].Visible:=false;
   end;

  for i:=7 to 9
   do begin
    fly_pos_grid.columns[i].Visible:=false;
   end;

   for i:=10 to 17
   do begin
    fly_pos_grid.Columns[i].Visible:=true;
   end;

    fly_pos_grid.Columns[10].Width:=158;
    fly_pos_grid.Columns[15].Width:=172;
    fly_pos_grid.Columns[16].Width:=89;
end;

procedure Tflyform.view3Execute(Sender: TObject);
 var
  i:integer;
 begin
   for i:=1 to 8
   do begin
    fly_pos_grid.columns[i].Visible:=true;
   end;
   for i:=9 to 17
   do begin
    fly_pos_grid.Columns[i].Visible:=true;
   end;

    fly_pos_grid.Columns[10].Width:=158;
    fly_pos_grid.Columns[15].Width:=172;
    fly_pos_grid.Columns[16].Width:=89;
  {}
end;

procedure Tflyform.N12Click(Sender: TObject);
begin
 screen.Cursor:=crHourGlass;
 addzakl:=taddzakl.create(application);
 addzakl.IBQuery1.sql.clear;
 addzakl.IBQuery1.SQL.Add('select pt.*, u.unittitle, c.client_name  from clients c, packtypes pt, unittypes u where ptype=4 and pt.unittype_id=u.unttype and c.client_id=pt.cust_id ');
 addzakl.IBQuery1.SQL.Add(' and cust_id='+flylist.fieldbyname('cust_id').AsString+' and oemcode_long like "'+fly_pos.fieldbyname('oemcode').AsString+'%"');
 addzakl.IBQuery1.SQL.Add(' order by packtypename');
 addzakl.IBQuery1.Active:=true;
 flyform.updzakl_id.parambyname('id').value:=fly_pos.fieldbyname('id').value;
 flyform.updzakl_id.parambyname('poscount_dec').value:=fly_pos.fieldbyname('poscount_dec').value;
 addzakl.showmodal;
 screen.Cursor:=crDefault;
end;

procedure Tflyform.N13Click(Sender: TObject);
begin
   flyform.newlog.ParamByName('log_type').Value:=9;
   flyform.newlog.ParamByName('logdate').Value:=now();
   flyform.newlog.ParamByName('logcontent').AsString:='';
   flyform.newlog.ParamByName('user_id').Value:=dm.users.fieldbyname('user_id').Value;
   flyform.newlog.ParamByName('ord_id').Value:=current_fly;
   newlog.Prepare;
   newlog.ExecProc;
   flyform.newlogit.ParamByName('logcontent').Value:=flyform.fly_pos.fieldbyname('packtypename').value;
   flyform.newlogit.ParamByName('poscount').Value:=flyform.fly_pos.fieldbyname('poscount').value;
   flyform.newlogit.ParamByName('posweight').Value:=flyform.fly_pos.fieldbyname('posweight').value;
   flyform.newlogit.ParamByName('posprice').Value:=flyform.fly_pos.fieldbyname('posprice').value;
   flyform.newlogit.ParamByName('bagpos').Value:=flyform.fly_pos.fieldbyname('bagpos').value;
   flyform.newlogit.ParamByName('liorder').Value:=1;
   flyform.newlogit.ParamByName('log_id').Value:=flyform.newlog.ParamByName('n_id').Value;
   flyform.newlogit.Prepare;
   flyform.newlogit.ExecProc;

   delorditems.ParamByName('id').Value:=fly_pos.fieldbyname('id').Value;
   delorditems.ParamByName('ord_id').Value:=fly_pos.fieldbyname('ord_id').Value;
   delorditems.ParamByName('packtype_id').Value:=fly_pos.fieldbyname('packtype_id').Value;
   delorditems.ParamByName('trans_id').Value:=flylist.fieldbyname('trans_id').Value;
   delorditems.ParamByName('oper').Value:=1;
   delorditems.Prepare;
   delorditems.ExecProc;

   flytran.CommitRetaining;
   flytran.Active:=false;
   flytran.Active:=true;
   flylist.Active:=false;
   flylist.Active:=true;
   fly_pos.Active:=false;
   fly_pos.Active:=true;
   filterprop.Active:=false;
   filterprop.Active:=true;
end;

procedure Tflyform.chooseExecute(Sender: TObject);
 var
 i: integer;
begin
  screen.Cursor:=crHourGlass;
  choosefield:=tchoosefield.create(application);
   for i:=1 to fly_pos_grid.Columns.Count-1
    do
    begin
     choosefield.lb.Items.Add(fly_pos_grid.Columns[i].Title.Caption);
      if
     fly_pos_grid.Columns[i].Visible
      then
     choosefield.lb.state[i-1]:=cbchecked;
    end;


  choosefield.showmodal;
  screen.Cursor:=crDefault;
end;

procedure Tflyform.print_allExecute(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile,str : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;

begin
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(out_dir+'temp.xls');
  i:=1;
  fly_pos.First;

     for j:=1 to fly_pos_grid.Columns.Count-1  do
   begin
    if fly_pos_grid.columns[j].Visible then
     begin
    //WorkBook.WorkSheets[1].Cells[i,j].ColumnWidth:=fly_pos_grid.columns[j].Width;
    WorkBook.WorkSheets[1].Cells[i,j].value:=fly_pos_grid.columns[j].title.Caption;
     end;
  end;
   inc(i);

   while not fly_pos.Eof
    do
    begin
  for j:=1 to fly_pos_grid.Columns.Count-1  do
   begin
    if fly_pos_grid.columns[j].Visible then
     WorkBook.WorkSheets[1].Cells[i,j].value:=fly_pos_grid.DataSource.DataSet.fieldbyname(fly_pos_grid.columns[j].FieldName).asstring;
    end;
   inc(i);
   fly_pos.Next;
    end;

   ExcelApp.visible:=true;
 {}
end;

procedure Tflyform.SpeedButton5Click(Sender: TObject);
 var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile,str : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;

begin
screen.Cursor:=crHourGlass;
 if (od1.Execute)
  then
   begin
  ExcelApp := CreateOleObject('Excel.Application');
   // Отключаем реакцию Excel на события,
  //чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(od1.filename);
  i:=1;
  str:=' ';
  while str<>'' do
   begin
  //  Создаем Книгу (Workbook)
  // Если заполняем шаблон, то
  // Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
 // showmessage('-1');

 //  showmessage('0');
  loadzakl.ParamByName('id').Value:=0;
  loadzakl.ParamByName('ord_id').Value:=flylist.fieldbyname('ord_id').Value;
  loadzakl.ParamByName('packtype_id').Value:=0;
  loadzakl.ParamByName('packkol').asfloat:=WorkBook.WorkSheets[1].Cells[i,3].value;
  loadzakl.ParamByName('packweight').asfloat:=WorkBook.WorkSheets[1].Cells[i,6].value;
  loadzakl.ParamByName('price').asfloat:=WorkBook.WorkSheets[1].Cells[i,4].value;
  loadzakl.ParamByName('totalprice').asfloat:=WorkBook.WorkSheets[1].Cells[i,5].value;
  loadzakl.ParamByName('opertype').value:=0;
  loadzakl.ParamByName('packtypename').AsString:=WorkBook.WorkSheets[1].Cells[i,1].value;
  loadzakl.ParamByName('bagpos').AsInteger:=WorkBook.WorkSheets[1].Cells[i,7].value;
  loadzakl.ParamByName('oemcode').asstring:=WorkBook.WorkSheets[1].Cells[i,9].value;
  loadzakl.ParamByName('nweight').asfloat:=WorkBook.WorkSheets[1].Cells[i,8].value;
  loadzakl.ParamByName('poscount_dec').asfloat:=WorkBook.WorkSheets[1].Cells[i,2].value;
  loadzakl.ParamByName('lupdate').value:=datetostr(now);
  loadzakl.Prepare;
  loadzakl.ExecProc;
  flytran.CommitRetaining;
   str:=WorkBook.WorkSheets[1].Cells[i+1,1].value;
  i:=i+1;
  end;
  actionmanager1.Actions[0].Execute;
 // ExcelApp.Visible := true;
  //showmessage(inttostr(i));
  screen.Cursor:=crDefault;
   end;

end;

procedure Tflyform.SpeedButton6Click(Sender: TObject);
begin
tmgrid.Visible:=not tmgrid.Visible;
split.Visible := not split.Visible;
tmquery.Active:=not tmquery.Active;

end;

procedure Tflyform.SpeedButton7Click(Sender: TObject);
begin
 upd.SQL.Clear;
 upd.SQL.Add('update orders set cust_id='+inttostr(integer(integer(send_com.Items.Objects[send_com.ItemIndex])))+' where ord_id='+inttostr(flylist.FieldByName('ord_id').Value));
 upd.ExecQuery;
 actionmanager1.Actions[0].Execute;
 SpeedButton7.Enabled:=false;
end;

procedure Tflyform.SpeedButton8Click(Sender: TObject);
begin
 if fly_pos.CachedUpdates and fly_pos.Active then
    fly_pos.ApplyUpdates;
    flytran.CommitRetaining;

 transfer_weight.ParamByName('ord_id').Value:=flylist.FieldByName('ord_id').Value;
 transfer_weight.ParamByName('deltaw').Value:=strtoint(edit2.Text);
 transfer_weight.Prepare;
 transfer_weight.ExecProc;
 flytran.CommitRetaining;
 fly_pos.Active:=false;
 fly_pos.Active:=true;
 setfilter(flylist.FieldByName('ord_id').Value);
end;

end.
