unit ZaklListUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnMan, ActnCtrls, ToolWin, ComCtrls,
  XPStyleActnCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB,
  IBCustomDataSet, IBQuery, Menus, IBDatabase, IBStoredProc,
  IBSQL,math;

type
  Tzakl = class(TForm)
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
    town_com1: TComboBox;
    oem: TLabeledEdit;
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
    procedure setfilter();
    procedure town_com1Change(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zakl: Tzakl;
  chaddflag: integer;
implementation

uses PricePosUnit, dmunit,BagPosUnit, MainUnit, FlyListUnit, AddPackingUnit, PriceUnit, NewZaklUnit;

{$R *.dfm}

procedure tzakl.setfilter();
 begin
 {}
 packtypes.Active:=false;

 packtypes.SQL.Clear;
 packtypes.SQL.Add('select p.*, u.unittitle, c.client_name from PACKTYPES p, unittypes u, clients c where p.unittype_id=u.unttype and p.cust_id=c.client_id and p.ptype=4');

 if labelededit1.Text<>''
  then
  packtypes.SQL.Add(' and packtypename like "'+labelededit1.Text+'%" ');

   if oem.Text<>''
  then
  packtypes.SQL.Add(' and oemcode_long like "'+oem.Text+'%" ');




 if town_com1.ItemIndex<>0
 then
  packtypes.SQL.Add(' and cust_id='+inttostr(integer(integer(town_com1.Items.Objects[town_com1.ItemIndex]))));

 packtypes.SQL.Add(' order by packtypename ');
 packtypes.Active:=true;
 DBGrid1.SetFocus;

 end;

procedure tzakl.delbuffer(ord_id: integer);
 begin
  delbufer.ParamByName('ord_id').Value:=flyform.fly_pos.fieldbyname('id').Value;
  delbufer.Prepare;
  delbufer.ExecProc;
  dm.IBTransaction2.CommitRetaining;
 end;
procedure Tzakl.exitExecute(Sender: TObject);
begin
 zakl.Close;
end;

procedure Tzakl.FormClose(Sender: TObject; var Action: TCloseAction);
 var
 strlog: string;
begin

if ibquery1.RecordCount<>0 then
 begin
if (opener_price_type<>1)
 then
  begin
  if MessageDlg('Разбить позицию?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin
         ibquery1.First;


     strlog:=flyform.fly_pos.fieldbyname('packtypename').asstring+' '
             +flyform.fly_pos.fieldbyname('poscount').asstring
           +'/'+flyform.fly_pos.fieldbyname('posweight').asstring
           +'/'+flyform.fly_pos.fieldbyname('posprice').asstring
           +'/'+flyform.fly_pos.fieldbyname('bagpos').asstring
           +' --> ';

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
             flyform.newitem.ParamByName('lupdate').Value:=now();
       //    flyform.newitem.ParamByName('unittype').Value:=ibquery1.fieldbyname('unittype').Value;
             strlog:=strlog+ibquery1.fieldbyname('packtypename').asstring+' '
             +ibquery1.fieldbyname('poscount').asstring
           +'/'+ibquery1.fieldbyname('posweight').asstring
           +'/'+ibquery1.fieldbyname('posprice').asstring
           +'/'+ibquery1.fieldbyname('bagpos').asstring
           +' + ';
             flyform.newitem.Prepare;
             flyform.newitem.ExecProc;
             ibquery1.Next;
            end;
             flyform.delorditems.ParamByName('id').Value:=flyform.fly_pos.fieldbyname('id').Value;
             flyform.delorditems.ParamByName('ord_id').Value:=flyform.fly_pos.fieldbyname('ord_id').Value;

              flyform.newlog.ParamByName('log_type').Value:=opener_price_type;
              flyform.newlog.ParamByName('logdate').Value:=now();
              flyform.newlog.ParamByName('logcontent').AsString:=strlog;
              flyform.newlog.ParamByName('user_id').Value:=dm.users.fieldbyname('user_id').Value;
              flyform.newlog.ParamByName('ord_id').Value:=current_fly;
              flyform.newlog.Prepare;
              flyform.newlog.ExecProc;


             flyform.delorditems.Prepare;
             flyform.delorditems.ExecProc;
             flyform.flytran.CommitRetaining;
             flyform.fly_pos.Active:=false;
             flyform.fly_pos.Active:=true;
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
action:=cafree;
end;

procedure Tzakl.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 IF  gdSelected   IN State
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
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Tzakl.FormCreate(Sender: TObject);
begin
packtypes.Active:=true;
chaddflag:=0;
dm.clients.Active:=true;
    dm.clients.First;
  while not dm.clients.Eof do begin
     town_com1.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));
     dm.clients.Next;
   end;
end;

procedure Tzakl.openExecute(Sender: TObject);
begin
packpos:=tpackpos.create(application);
packpos.showmodal;
end;

procedure Tzakl.DBGrid1DblClick(Sender: TObject);
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
 		zaklpos:=tzaklpos.create(application);
 		zaklpos.IBQuery1.Params[0].Value:=packtypes.fieldbyname('packtype_id').Value;
    dm.newzaklpos.ParamByName('opertype').Value:=2;
    dm.newzaklpos.ParamByName('packtype_id').Value:=packtypes.fieldbyname('packtype_id').Value;
 		zaklpos.Label6.Caption:='change';
 		zaklpos.IBQuery1.Active:=true;

    zaklpos.Caption:='Изменение позиции закключения';
    zaklpos.oemcode.text:=packtypes.fieldbyname('oemcode_long').asstring;
    zaklpos.zakl_name.text:=packtypes.fieldbyname('zakl_name').asstring;
    zaklpos.zakl_dog.text:=packtypes.fieldbyname('zakl_dog').asstring;
    zaklpos.zakl_date.date:=packtypes.fieldbyname('zakl_date').value;
    zaklpos.price.Text:=packtypes.fieldbyname('packtypeprice1').asstring;
    zaklpos.packname.Text:=packtypes.fieldbyname('packtypename').asstring;


     dm.unittypes.Active:=true;
     dm.unittypes.First;
  while not dm.unittypes.Eof do begin
    zaklpos.punitcombo.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
    dm.unittypes.Next;
   end;
    dm.unittypes.First;
    zaklpos.punitcombo.ItemIndex:=zaklpos.punitcombo.Items.IndexOfObject(pointer(integer(packtypes.FieldByName('unittype_id').Value)));

   dm.clients.Active:=true;
    dm.clients.First;
  while not dm.clients.Eof do begin
     zaklpos.town_com1.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));
     dm.clients.Next;
   end;
  zaklpos.town_com1.ItemIndex:=zaklpos.town_com1.Items.IndexOfObject(pointer(integer(packtypes.FieldByName('cust_id').Value)));







 		zaklpos.showmodal;

end;


procedure Tzakl.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
if (opener_price_type=1) or (opener_price_type=2) then begin
 if price.actiontoolbar1.ActionControls[2].Visible=true
  then
   begin
price.Close;
formaddpackexecute(1);
   end;
 end
  else
 DBGrid1DblClick(dbgrid1);

 end;
end;

procedure Tzakl.refreshExecute(Sender: TObject);
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

procedure Tzakl.newExecute(Sender: TObject);
begin
  	zaklpos:=tzaklpos.create(application);
  	zaklpos.Label6.Caption:='new';
    zaklpos.Caption:='Добавление позиции закключения';
    dm.newzaklpos.ParamByName('opertype').Value:=1;
    dm.newzaklpos.ParamByName('packtype_id').Value:=0;
//    zaklpos.oemcode.text:=packtypes.fieldbyname('zakl_dog').asstring;
//    zaklpos.zakl_dog.text:=packtypes.fieldbyname('zakl_dog').asstring;
    zaklpos.zakl_date.date:=now();
   zaklpos.price.Text:='0,0';
//    zaklpos.packname.Text:=packtypes.fieldbyname('packtypename').asstring;


     dm.unittypes.Active:=true;
     dm.unittypes.First;
  while not dm.unittypes.Eof do begin
    zaklpos.punitcombo.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
    dm.unittypes.Next;
   end;
    dm.unittypes.First;
    zaklpos.punitcombo.ItemIndex:=0;

   dm.clients.Active:=true;
    dm.clients.First;
  while not dm.clients.Eof do begin
     zaklpos.town_com1.Items.AddObject(dm.clients.fieldbyname('client_name').Value ,pointer(integer(dm.clients.FieldByName('client_id').Value)));
     dm.clients.Next;
   end;
  zaklpos.town_com1.ItemIndex:=0;

 		zaklpos.showmodal;
end;

procedure Tzakl.LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
 then
   begin
   setfilter;
   dbgrid1.SetFocus;
   labelededit1.Text:='';
   end;

end;

procedure Tzakl.Action1Execute(Sender: TObject);
begin
 price.Close;
 formaddpackexecute(3);
{}
end;

procedure Tzakl.N1Click(Sender: TObject);
begin
 delpos.SQL.Clear;
 delpos.SQL.Add('update packtypes set ptype=2 where packtype_id='+packtypes.fieldbyname('packtype_id').AsString);
 delpos.Prepare;
 delpos.ExecQuery;
 pricetran.CommitRetaining;
 pricetran.Active:=false;
 pricetran.Active:=true;
 packtypes.Active:=false;
 packtypes.active:=true;

end;

procedure Tzakl.FormShow(Sender: TObject);
begin
  LabeledEdit1.SetFocus;
end;



procedure Tzakl.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure Tzakl.tton1Click(Sender: TObject);
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

procedure Tzakl.FlatSpeedButton2Click(Sender: TObject);
begin
  DBGrid1DblClick(dbgrid1);
end;

procedure Tzakl.FlatSpeedButton3Click(Sender: TObject);
begin
 actionmanager1.Actions[2].Execute;
end;

procedure Tzakl.town_com1Change(Sender: TObject);
begin
 setfilter;
end;

end.
