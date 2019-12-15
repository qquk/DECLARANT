unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,DB, IBCustomDataSet, IBQuery, AxCtrls,
  OleCtrls, ExtCtrls, IBDatabase, ActnList, XPStyleActnCtrls,
  ActnMan, ToolWin, ActnCtrls, ActnMenus, Math;


type
  Tmainform = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    qUpdate: TIBQuery;
    labeltran: TIBTransaction;
    Label3: TLabel;
    Label4: TLabel;
    Main_actmanager: TActionManager;
    documents_act: TAction;
    wait_part_act: TAction;
    firms_act: TAction;
    clients_act: TAction;
    settings_act: TAction;
    price_act: TAction;
    zakl_act: TAction;
    import_act: TAction;
    sync_act: TAction;
    export_tov: TAction;
    importclient_act: TAction;
    translate_act: TAction;
    windows_act: TAction;
    w_cascade: TAction;
    Close_act: TAction;
    Action1: TAction;
    ActionToolBar1: TActionToolBar;
    rec_firms: TAction;
    send_firms: TAction;
    Action2: TAction;
    procedure FormCreate(Sender: TObject);
    procedure exit_butClick(Sender: TObject);
    procedure clients_butClick(Sender: TObject);
    procedure ibflyClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure import_butClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure translateClick(Sender: TObject);
    procedure documents_actExecute(Sender: TObject);
    procedure wait_part_actExecute(Sender: TObject);
    procedure firms_actExecute(Sender: TObject);
    procedure clients_actExecute(Sender: TObject);
    procedure settings_actExecute(Sender: TObject);
    procedure price_actExecute(Sender: TObject);
    procedure zakl_actExecute(Sender: TObject);
    procedure import_actExecute(Sender: TObject);
    procedure export_tovExecute(Sender: TObject);
    procedure importclient_actExecute(Sender: TObject);
    procedure sync_actExecute(Sender: TObject);
    procedure translate_actExecute(Sender: TObject);
    procedure windows_actExecute(Sender: TObject);
    procedure w_cascadeExecute(Sender: TObject);
    procedure Close_actExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure rec_firmsExecute(Sender: TObject);
    procedure send_firmsExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

  //const  Testlib='tt.dll';
  //const _PrintLabel=1;
  //const _Portlabel='1';
  //const _BrightLabel='12';
  //const _CountLabel='1';
  //const _OSVersion=1;
 //procedure openport(port:PChar); stdcall; external TestLib ;
 //procedure setup(a, b, c, d, e, f:Integer); stdcall; external TestLib;
 //procedure sendcommand(command:PChar); stdcall; external TestLib;
 //function isready :Integer; stdcall; external TestLib;
 //procedure closeport; stdcall; external TestLib;
 //procedure Print_Label(LabelBag_id:Integer);
 procedure showpacketform(cnvtype, trans_id: integer);
 procedure formaddpackexecute(oper: integer);
 procedure showMesForm(cap: string; text:string; showbut: boolean);
var
  mainform: Tmainform;
  MODIF_PART: boolean;
  MODIF_BAG: boolean;
  PORT_PRINTER: string;
  OUT_DIR: string;
  CNV_TYPE: integer;
  TEMP_DIR: string;
  packet_dir: string;
  user_id: integer;
  current_fly,current_trans: integer;
  Opener_price_type: integer;
  newordoper: integer;
  opener_clientform_type: integer;
  translist_order: string;
  import_cnv: integer;
  cust_id: integer;
  cur_ptp_id: integer;
  open_client_form: integer; //1-клиенты, 2-фирмы
  cnfopertype: integer;  //1-добавить 2-изменить
  fontsize: integer;
implementation

uses clientlist,  PriceUnit, FlyListUnit, setformunit, dmunit,
     packetform_unit,  ImportUnit,  AddPackingUnit, WaitTransListUnit, ZaklListUnit,
     translateunit, EnterUnit,  LoadUnit;

procedure showMesForm(cap: string; text:string; showbut: boolean);
 begin

              showform:=tshowform.create(application);
              showform.StaticText1.Caption:='  '+cap;
              showform.StaticText2.Caption:=text;
              showform.Refresh;
               if showbut then
                showform.but1.Visible:=true;

              showform.Show;
   {}

 end;

procedure formaddpackexecute(oper: integer);
 var
 A1: array[0..20,0..20] of integer;
 i: integer;
 koef: double;
 f2symb: string;
 begin

 if oper=1
   then begin
   addpackingform:=taddpackingform.create(application);
   addpackingform.Caption:='Добавление позиции';
   addpackingform.packtypes.Params[0].Value:=price.packtypes.fieldbyname('packtype_id').Value;
   addpackingform.Edit4.Text:=price.packtypes.fieldbyname('packprice').asstring;
   addpackingform.packtypes.Active:=true;
   addpackingform.showmodal;
   end;

  if oper=2 then   begin
   addpackingform:=taddpackingform.create(application);
   addpackingform.Caption:='Изменение позиции';
   addpackingform.packtypes.Parambyname('ptp_id').Value:=flyform.fly_pos.fieldbyname('ptp_id').Value;
   addpackingform.packtypes.Active:=true;
   addpackingform.Edit1.Text:=flyform.fly_pos.fieldbyname('poscount').asstring;
   addpackingform.Edit4.Text:=flyform.fly_pos.fieldbyname('posprice').asstring;
   addpackingform.Edit3.Text:=flyform.fly_pos.fieldbyname('posweight').asstring;
   addpackingform.Edit2.Text:=flyform.fly_pos.fieldbyname('totalsumm').asstring;
   addpackingform.bagpos.Text:=flyform.fly_pos.fieldbyname('bagpos').asstring;
//   addpackingform.nweight.Text:=flyform.fly_pos.fieldbyname('nweight').asstring;
   addpackingform.custsumm.Text:=flyform.fly_pos.fieldbyname('totalsummcust').asstring;
   addpackingform.posprice_weight.Text:=flyform.fly_pos.fieldbyname('posprice_weight').asstring;
   addpackingform.price_inv.Text:=flyform.fly_pos.fieldbyname('price_inv').asstring;
   addpackingform.Edit5.Visible:=true;
   addpackingform.Edit5.Enabled:=true;
   addpackingform.Edit5.Text:=flyform.fly_pos.fieldbyname('packtypename').asstring;

   addpackingform.poscount2.Text:=flyform.fly_pos.fieldbyname('poscount2').asstring;
   addpackingform.posweight2.Text:=flyform.fly_pos.fieldbyname('posweight2').asstring;
   addpackingform.nweight2.Text:=flyform.fly_pos.fieldbyname('nweight2').asstring;
   addpackingform.price_inv2.Text:=flyform.fly_pos.fieldbyname('price_inv2').asstring;
   addpackingform.totalsumm2.Text:=flyform.fly_pos.fieldbyname('totalsumm2').asstring;


   addpackingform.unitcom.Visible:=true;

   dm.unittypes.Active:=true;
   dm.unittypes.First;
 while not dm.unittypes.Eof do begin
     addpackingform.unitcom.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
     dm.unittypes.Next;
   end;
 addpackingform.unitcom.ItemIndex:=addpackingform.unitcom.Items.IndexOfObject(pointer(integer(flyform.fly_pos.FieldByName('unittype').Value)));
 addpackingform.nweight.Text:=flyform.fly_pos.fieldbyname('nweight').asstring;
 addpackingform.showmodal;

  end;

 end;

procedure showpacketform(cnvtype, trans_id: integer);
 begin
packetform:=tpacketform.create(application);
dm.toservertran.Active:=false;
dm.toservertran.Active:=true;
if cnvtype=1
 then
  begin
 cnv_type:=1;
 packetform.datetimepicker1.visible:=true;
 packetform.datetimepicker1.Date:=now;
 dm.sysenter.Active:=true;
 packetform.label2.caption:=dm.sysenter.fieldbyname('FILIAL').Value+'-'+inttostr(dm.sysenter.fieldbyname('sourcediv_id').Value);
  end;
if cnvtype=2 then
  begin
 cnv_type:=2;
 dm.sysenter.Active:=true;
 //packetform.label2.caption:=dm.sysenter.fieldbyname('FILIAL').Value+'-'+inttostr(dm.sysenter.fieldbyname('sourcediv_id').Value);
 packetform.tran.Active:=true;
 packetform.transinfo.ParamByName('trans_id').Value:=trans_id;
 packetform.transinfo.Active:=true;
 packetform.Label2.Caption:=packetform.transinfo.fieldbyname('transinfo').Value;
  end;
if cnvtype=7 then
  begin
 cnv_type:=7;
 dm.sysenter.Active:=true;
 packetform.tran.Active:=true;
 packetform.label2.caption:=dm.sysenter.fieldbyname('FILIAL').Value+'-'+inttostr(dm.sysenter.fieldbyname('sourcediv_id').Value);
 packetform.flyinfo.ParamByName('fly_id').Value:=trans_id;
 packetform.flyinfo.Active:=true;
 packetform.Label2.Caption:=packetform.flyinfo.fieldbyname('tname').Value+'-'+inttostr(packetform.flyinfo.fieldbyname('flyno').value)+' от '+datetostr(packetform.flyinfo.fieldbyname('dateopen').Value);
  end;
if cnvtype=8 then
  begin
 cnv_type:=8;
 dm.sysenter.Active:=true;
 packetform.tran.Active:=true;
 packetform.label2.caption:=dm.sysenter.fieldbyname('FILIAL').Value+'-'+inttostr(dm.sysenter.fieldbyname('sourcediv_id').Value);
 packetform.flyinfo.Params[0].Value:=trans_id;
 packetform.clientlist.Params[0].Value:=trans_id;
 packetform.packpt.Params[0].Value:=trans_id;
 packetform.ttariff.Params[0].Value:=trans_id;
 packetform.p_packing.Params[0].Value:=trans_id;
 packetform.partlist.Params[0].Value:=trans_id;
 packetform.bags.Params[0].Value:=trans_id;
    end;
 if cnvtype=9
 then
  begin
 cnv_type:=9;
 dm.sysenter.Active:=true;
 packetform.tran.Active:=true;
 packetform.label2.caption:=dm.sysenter.fieldbyname('FILIAL').Value+'-'+inttostr(dm.sysenter.fieldbyname('sourcediv_id').Value);
 packetform.zagruzka.Params[0].Value:=trans_id;
 packetform.transinfo.Params[0].Value:=trans_id;
 packetform.packtypes.Params[0].Value:=trans_id;
 packetform.packing.Params[0].Value:=trans_id;
 packetform.clients.Params[0].Value:=trans_id;
  end;
 if cnvtype=11
  then
   begin
  cnv_type:=11;
 dm.sysenter.Active:=true;
 packetform.tran.Active:=true;
 packetform.label2.caption:=dm.sysenter.fieldbyname('FILIAL').Value+'-'+inttostr(dm.sysenter.fieldbyname('sourcediv_id').Value);
   end;
 if cnvtype=12
  then
   begin
 cnv_type:=12;
 dm.sysenter.Active:=true;
 packetform.tran.Active:=true;
 packetform.Caption:='Обновление справочника клиентов';
 packetform.label2.caption:=dm.sysenter.fieldbyname('FILIAL').Value+'-'+inttostr(dm.sysenter.fieldbyname('sourcediv_id').Value);
   end;

 packetform.showmodal;
 end;

{$R *.dfm}
//procedure Print_Label(LabelBag_id:Integer);
//Var
//    BR:Pchar;
//    v,r,w:real;
//    i,j:Integer;
//    s:string;
//    hport: Thandle;
//    dcb: tdcb;
//    dwwrite: dword;
//    overwrite: toverlapped;
//    writebytes: array of char;
//    escstr:string;
//
//Begin
//      dm.sysenter.Active:=true;
// With mainform.qUpdate do begin
//        Active:=False;
//        Sql.Clear;
//        Sql.ADD('select bagnum1,barcode,weight, ');
//        Sql.ADD('volume,xcode,z.transprefix, sourcediv_id, tw.town_code, p.awb ');
//        Sql.ADD('From zagruzka z, transtype t, towns tw, partlist p');
//        Sql.ADD('WHERE z.part_id=p.part_id and z.trt_id=t.trt_id and z.destdiv_id=tw.town_id and zag_ID='+INTToSTR(LabelBag_id));
//        mainform.labeltran.Active:=false;
//        mainform.labeltran.Active:=true;
//        active:=true;
//      end;
//  // print label
//
//IF (_PrintLabel=1) Then begin
//openport(PCHAR(port_printer));    // 0-> LPT1; 1-> COM1; 2->COM2
// If isready=0 Then Showmessage('Принтер не готов !!!')
// else begin
//setup(48, 7, 3, 0, 0, 0);
//sendcommand('^Q48,3');
//sendcommand('^W98');
//sendcommand('^H12');
//sendcommand('^P1');
//sendcommand('^S3');
//sendcommand('^AT');
//sendcommand('^C2');
//sendcommand('^R0');
//sendcommand('~Q+0');
//sendcommand('^O0');
//sendcommand('^D0');
//sendcommand('E12');
//sendcommand('~R200');
//sendcommand('^L');
//sendcommand('Dy2-me-dd');
//sendcommand('Th:m:s');
//sendcommand('Lo,70,98,653,102');
//sendcommand('Lo,546,98,550,349');
//sendcommand('Lo,478,102,479,106');
//sendcommand('Lo,500,102,504,357');
//sendcommand('Lo,650,10,654,348');
//sendcommand('Lo,508,20,509,21');
//sendcommand('Lo,546,341,654,352');
//sendcommand(PCHAR('AI,24,21,3,3,0,0,'+mainform.qUpdate.fieldbyname('bagnum1').asstring));
//sendcommand(PCHAR('BE,76,118,4,12,222,0,1,'+mainform.qUpdate.fieldbyname('barcode').asstring));
//sendcommand(PCHAR('BE,774,17,3,5,113,1,0,'+mainform.qUpdate.fieldbyname('barcode').asstring));
//sendcommand(PCHAR('AH,557,330,1,1,0,3,'+mainform.qUpdate.fieldbyname('xcode').asstring));
//sendcommand(PCHAR('AH,18,332,1,1,0,3,'+mainform.qUpdate.fieldbyname('transprefix').asstring+'-'+mainform.qUpdate.fieldbyname('town_code').asstring));
//sendcommand(PCHAR('AI,515,369,1,1,0,3,'+mainform.qUpdate.fieldbyname('awb').asstring));
//sendcommand('E');
//closeport();
// {sendcommand('^Q48,3');
//  sendcommand('^W98');
//  sendcommand('^E12');
//  BR:=PCHAR('^H'+'12');
//  sendcommand(BR);
//  sendcommand('^P1');
//  sendcommand('^S3');
//  sendcommand('^AT');
//  BR:=PCHAR('^C'+'2');
//  sendcommand(BR);
//  sendcommand('^R0');
//  sendcommand('~Q+0');
//  sendcommand('^O0');
//  sendcommand('^D0');
//  sendcommand('~R200');
//  sendcommand('^L');
//  case _OSVersion of
//  1: begin
//      BR:=Pchar('BE,76,118,4,12,222,0,1,'+mainform.qUpdate.FieldByname('BARCODE').asString);
//      sendcommand(BR);
//
//      BR:=Pchar('BE,774,17,3,5,113,1,0,'+mainform.qUpdate.FieldByname('BARCODE').asString);
//      sendcommand(BR);
//
//      BR:=Pchar('AH,2,330,1,1,0,3,'+inttostr(mainform.qupdate.FieldByName('trt_id').Value));
//      sendcommand(BR);
//
//     end;
//
//  3: begin
//      BR:=Pchar('AI,87,143,4,6,0,0,W'+floattostr(mainform.qUpdate.FieldByname('WEIGHT').asfloat));
//      sendcommand(BR);
//      BR:=Pchar('AI,0,313,3,3,0,3,'+'1');
//      sendcommand(BR);
//
//     end;
//
//  end;
//
//  sendcommand('Lo,69,13,72,325');
//  sendcommand('Lo,70,98,652,101');
//  sendcommand('Lo,546,98,549,348');
//  sendcommand('Lo,478,102,478,105');
//  sendcommand('Lo,500,102,503,356');
//  sendcommand('Lo,650,10,653,347');
//  sendcommand('Lo,508,20,508,20');
//  sendcommand('Lo,546,341,653,351');
//
//  BR:=Pchar('AH,557,330,1,1,0,3,'+mainform.qUpdate.FieldByname('XCODE').asString);
//  sendcommand(BR);
//  w:=mainform.qUpdate.FieldByname('WEIGHT').asfloat;
//  v:=(mainform.qUpdate.FieldByname('VOLUME').asfloat);
//  r:=(v*10000000+100000000+w);
//  s:=floatTostr(r);
//  s:=copy(s,2,8);
//  BR:=Pchar('AE,502,293,1,1,0,3,'+S);
//  sendcommand(BR);
//  BR:=Pchar('AI,74,12,3,3,0,0,'+mainform.qUpdate.FieldByname('BAGNUM').asString);
//  sendcommand(BR);
//  sendcommand('E');
//  closeport();
// end;// go print
//  // ecTextOut(20, 10, 34, 'Ariel', 'Windows font - Ariel');  }
//
//end;// if print
// // -- end label
//
//end;
//
//End;



procedure Tmainform.FormCreate(Sender: TObject);
 var
 i:integer;
begin

label1.Caption:=label1.Caption+' '+dm.sysenter.fieldbyname('filial').Value;
label2.Caption:=label2.caption+datetostr(now());

// if dm.sysenter.FieldByName('transoutdiv').Value<0 then
//    ActionToolBar1.Visible:=false;

mainform.Color:=RGB(148,162,181);
form18:=tform18.create(application);
form18.Color:=RGB(240,253,255);
form18.showmodal;


end;

procedure Tmainform.exit_butClick(Sender: TObject);
begin
//import_but.Visible:=ivnever;
close;
end;

procedure Tmainform.clients_butClick(Sender: TObject);
begin
 opener_clientform_type:=1;
 screen.Cursor:=crHourGlass;
 form5:=tform5.create(application);
 form5.clients.Active:=false;
 form5.clients.SQL.Clear;
 form5.clients.SQL.Add(' select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id  and c.clout_id=0 order by client_name');
 form5.clients.Active:=true;
 form5.caption:='Фирмы';
 form5.Label24.Caption:='1';
 form5.show;
 screen.Cursor:=crDefault;
end;





procedure Tmainform.ibflyClick(Sender: TObject);
begin
screen.Cursor:=crHourGlass;
flyform:=tflyform.create(application);
 flyform.caption:='Список документов';
 flyform.Top:=20;
 flyform.Left:=20;
 flyform.Height:=632;
 flyform.Width:=1000;
 flyform.fly_grid.Align:=alclient;
 //flyform.flylist.Active:=true;
 flyform.flylist.Params[0].Value:=dm.config.fieldbyname('cnf_id').Value;
 flyform.setfilter_fly;
 if dm.users.FieldByName('userlevels').Value=1
  then
   flyform.ActionManager1.ActionBars[0].Items[5].Items[3].Visible:=true;

 flyform.show;
screen.Cursor:=crDefault;

 //ibfly.Enabled:=false;
end;

procedure Tmainform.FormActivate(Sender: TObject);
begin
modif_part:=false;
cust_id:=0;
fontsize:=8;
end;



procedure Tmainform.import_butClick(Sender: TObject);
begin
 importform:=timportform.create(application);
 importform.query1.Active:=true;
 importform.query1.First;
  while not importform.query1.Eof
   do begin
   importform.Memo1.Lines.add(importform.query1.Fields[0].asstring);
   importform.query1.Next;
   end;
 importform.query1.Active:=false;
 importform.showmodal;
end;



procedure Tmainform.FormShow(Sender: TObject);
 var
  i: integer;
begin
 if access=false then begin
   ActionToolBar1.Visible:=false;
   ShowMessage('Вход не выполнен');
   end
  else
   begin
  label3.Caption:=label3.Caption+' '+dm.users.fieldbyname('username').Value;
  label4.Caption:=label4.Caption+' '+dm.config.fieldbyname('cnfname').AsString;
  Caption:=Caption+'   ['+dm.config.fieldbyname('cnfname').AsString+']';
   end;

   if dm.users.FieldByName('userlevels').Value=3 then
   begin
    for i:= 0 to 10 do
  main_actmanager.ActionBars[1].Items[i].Visible:=false;

  main_actmanager.ActionBars[1].Items[9].Visible:=true;
       end;

 if dm.users.FieldByName('userlevels').Value=2 then
   begin
    main_actmanager.ActionBars[1].Items[9].Visible:=false;
    main_actmanager.ActionBars[1].Items[4].Visible:=false;
   end;


 if dm.users.FieldByName('userlevels').Value=4 then
   begin
     main_actmanager.ActionBars[1].Items[4].Visible:=false;
     main_actmanager.ActionBars[1].Items[9].Visible:=false;
   end;



   end;






procedure Tmainform.translateClick(Sender: TObject);
begin
 translateform:=ttranslateform.create(application);
 translateform.packtypes.Active:=true;

{    dm.clients.Active:=false;
    dm.clients.Active:=true;
    dm.clients.First;
  while not dm.clients.Eof do begin
     translateform.cust_com.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));
     dm.clients.Next;
   end;
  translateform.cust_com.ItemIndex:=0; }

 translateform.refreshkol;
 translateform.Show;
{}
end;

procedure Tmainform.documents_actExecute(Sender: TObject);
begin
 screen.Cursor:=crHourGlass;
 flyform:=tflyform.create(application);
 flyform.caption:='Список документов';
 flyform.Top:=20;
 flyform.Left:=20;
 flyform.Height:=632;
 flyform.Width:=1050;
 flyform.fly_pos_grid.Font.Size:=fontsize;
 flyform.fly_grid.Align:=alclient;
 flyform.flylist.Params[0].Value:=dm.config.fieldbyname('cnf_id').Value;
 flyform.setfilter_fly;
 //if dm.users.FieldByName('userlevels').Value=1
 // then
   flyform.ActionManager1.ActionBars[0].Items[6].Items[3].Visible:=true;

//   flyform.actiontoolbar1.ActionControls[2].Visible:=true;

 flyform.show;
 screen.Cursor:=crDefault;
end;

procedure Tmainform.wait_part_actExecute(Sender: TObject);
begin
 screen.Cursor:=crHourGlass;
 waittransportf:=twaittransportf.create(application);
 waittransportf.Height:=491;
 waittransportf.Width:=887;
 waittransportf.transport.Params[0].Value:=dm.config.fieldbyname('cnf_id').Value;
 waittransportf.transport.active:=true;
 waittransportf.show;
 screen.Cursor:=crdefault;
end;

procedure Tmainform.firms_actExecute(Sender: TObject);
begin
 {}
end;

procedure Tmainform.Action2Execute(Sender: TObject);
begin
 {}
end;

procedure Tmainform.clients_actExecute(Sender: TObject);
begin
  opener_clientform_type:=2;
  screen.Cursor:=crHourGlass;
  form5:=tform5.create(application);
  form5.clients.Active:=false;
  form5.clients.SQL.Clear;
  form5.clients.SQL.Add(' select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id  and c.clout_id<>0 and c.clout_id<>-1 order by client_name');
  form5.clients.Active:=true;
  form5.caption:='Клиенты';
  form5.Label24.Caption:='1';
  open_client_form:=1;
  form5.show;
  screen.Cursor:=crDefault;
end;

procedure Tmainform.send_firmsExecute(Sender: TObject);
begin
  screen.Cursor:=crHourGlass;
 opener_clientform_type:=1;
 form5:=tform5.create(application);
 form5.clients.Active:=false;
 form5.clients.SQL.Clear;
 form5.clients.SQL.Add(' select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id  and c.clout_id=-1 and client_id<>-1 order by client_name');
 form5.clients.Active:=true;
 form5.caption:='Фирмы отправители';
 form5.Label24.Caption:='1';
 open_client_form:=3;
 form5.GroupBox1.Visible:=true;
 form5.CheckBox1.Visible:=true;
 form5.xcode.Visible:=false;
 form5.town_com.Visible:=false;
 form5.client_code.Visible:=false;
 form5.Label8.Visible:=false;
 form5.Label6.visible:=false;
 form5.Label7.visible:=false;
 form5.client_grid.PopupMenu:=form5.PopupMenu1;
 form5.client_grid.Columns[1].Visible:=false;
 form5.client_grid.Columns[2].Visible:=false;
 form5.Label1.Visible:=false;
 form5.Label2.Visible:=false;
 form5.town_com1.Visible:=false;
 form5.Bevel2.Visible:=false;
 form5.combo_filter.Visible:=false;
 form5.filter.Visible:=false;

 dm.clients.Active:=false;
  dm.clients.Active:=true;
  dm.clients.First;

  while not dm.clients.Eof do begin
     form5.combobox1.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));
     dm.clients.Next;
   end;
  form5.combobox1.ItemIndex:=0;


 form5.show;
 screen.Cursor:=crDefault;
end;

procedure Tmainform.settings_actExecute(Sender: TObject);
begin
 screen.Cursor:=crHourGlass;
 dm.sysenter.Active:=false;
 dm.sysenter.Active:=true;
 setform:=tsetform.create(application);
 setform.users.Open;
 setform.IBTable5.Open;
 setform.config.Params[0].Value:=1;
 setform.users.Params[0].Value:=0;
 setform.users.Active:=true;
 setform.IBTable1.Open;
 setform.usert.Open;
 setform.show;
 screen.Cursor:=crdefault;
end;

procedure Tmainform.price_actExecute(Sender: TObject);
begin
  screen.Cursor:=crHourGlass;
  price:=tprice.create(application);
  dm.clients.Active:=false;
  dm.clients.Active:=true;
  dm.clients.First;

  while not dm.clients.Eof do begin
     price.cust_com.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));
     dm.clients.Next;
   end;
  price.cust_com.ItemIndex:=0;

  opener_price_type:=1;

if (dm.users.FieldByName('userlevels').Value<>1)
  then
   price.actiontoolbar1.ActionControls[3].Visible:=false;

if (dm.users.FieldByName('userlevels').Value=4)
  then
   price.actiontoolbar1.ActionControls[3].Visible:=true;

   //price.CheckBox1.Visible:=true;

   price.FormStyle:=fsMDIChild;
   price.BorderStyle:=bsSizeable;
   price.BorderIcons:=[bisystemmenu,biminimize,bimaximize];
   price.DBGrid3.Visible:=false;
   price.split.Visible:=false;
   price.pg1.Visible:=true;
   price.Panel7.Visible:=false;
   price.Panel4.Visible:=true;
   price.show;

   screen.Cursor:=crDefault;

end;

procedure Tmainform.rec_firmsExecute(Sender: TObject);
begin
  screen.Cursor:=crHourGlass;
 opener_clientform_type:=1;
 form5:=tform5.create(application);
 form5.clients.Active:=false;
 form5.clients.SQL.Clear;
 form5.clients.SQL.Add(' select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id  and c.clout_id=0 order by client_name');
 form5.clients.Active:=true;
 form5.caption:='Фирмы получатели';
 form5.Label24.Caption:='1';
 open_client_form:=2;
 form5.GroupBox1.Visible:=false;
 form5.xcode.Visible:=false;
 form5.client_code.Visible:=false;
 form5.Label6.visible:=false;
 form5.Label7.visible:=false;
 form5.client_grid.Columns[2].Visible:=false;
 form5.client_grid.PopupMenu:=form5.PopupMenu1;
// form5.N1.Caption:='Удалить получателя';
 form5.Label1.Visible:=false;
 form5.Label2.Visible:=false;
 form5.town_com1.Visible:=false;
 form5.Bevel2.Visible:=false;
 form5.combo_filter.Visible:=false;
 form5.filter.Visible:=false;
 form5.show;
 screen.Cursor:=crDefault;
end;

procedure Tmainform.zakl_actExecute(Sender: TObject);
begin
screen.Cursor:=crHourGlass;
zakl:=tzakl.create(application);
opener_price_type:=1;
zakl.Caption:='Заключения';
zakl.show;
screen.Cursor:=crDefault;
end;

procedure Tmainform.import_actExecute(Sender: TObject);
begin
screen.Cursor:=crHourGlass;
importform:=timportform.create(application);
importform.dcame.Date:=now();
importform.showmodal;
screen.Cursor:=crDefault;
end;

procedure Tmainform.export_tovExecute(Sender: TObject);
begin
 showpacketform(11,1);
end;

procedure Tmainform.importclient_actExecute(Sender: TObject);
begin
 showpacketform(12,1);
end;

procedure Tmainform.sync_actExecute(Sender: TObject);
begin
 {}
end;

procedure Tmainform.translate_actExecute(Sender: TObject);
begin
    translateform:=ttranslateform.create(application);
    translateform.packtypes.Active:=true;
    dm.clients.Active:=false;
    dm.clients.Active:=true;
    dm.clients.First;

  {while not dm.clients.Eof do begin
     translateform.cust_com.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));
     dm.clients.Next;
   end;

   translateform.cust_com.ItemIndex:=0; }
   translateform.refreshkol;
   translateform.Show;
end;

procedure Tmainform.windows_actExecute(Sender: TObject);
begin
 {}
end;

procedure Tmainform.w_cascadeExecute(Sender: TObject);
begin
 mainform.Cascade;
end;

procedure Tmainform.Close_actExecute(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите выйти из программы?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        close;

end;

procedure Tmainform.Action1Execute(Sender: TObject);
begin
 //form2:=tform2.create(Application);
 //form2.Show;
end;

end.
