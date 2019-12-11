unit clientlist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Buttons, ToolWin,
  StdCtrls, Grids, DBGrids,
  IBSQL, Menus, DB, IBCustomDataSet, IBQuery,AppEvnts, IBDatabase,
  IBStoredProc, Mask, ActnList, ActnMan, ActnCtrls, DBCtrls,
  XPStyleActnCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    CoolBar1: TCoolBar;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    navigator: TDBNavigator;
    Label14: TLabel;
    Bevel3: TBevel;
    town_com: TComboBox;
    town_com1: TComboBox;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    combo_filter: TComboBox;
    filter: TEdit;
    PopupMenu1: TPopupMenu;
    client_grid: TDBGrid;
    IBQuery1: TIBQuery;
    clients: TIBQuery;
    dsclient: TDataSource;
    inscl: TIBStoredProc;
    chcl: TIBStoredProc;
    Label24: TLabel;
    clnum: TDBEdit;
    FIO: TEdit;
    PHONE: TEdit;
    xcode: TEdit;
    client_code: TEdit;
    claddress: TEdit;
    email: TEdit;
    clnote: TEdit;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    refresh_act: TAction;
    newcl_act: TAction;
    save_act: TAction;
    close_act: TAction;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    delsend: TIBStoredProc;
    setprice: TIBStoredProc;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    N2: TMenuItem;
    upd: TIBSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rrr(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure combo_filterSelect(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure town_com1Change(Sender: TObject);
    procedure filterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure client_gridDblClick(Sender: TObject);
    procedure x2KeyPress(Sender: TObject; var Key: Char);
    procedure xcodeKeyPress(Sender: TObject; var Key: Char);
    procedure town_comChange(Sender: TObject);
    procedure refresh_actExecute(Sender: TObject);
    procedure newcl_actExecute(Sender: TObject);
    procedure save_actExecute(Sender: TObject);
    procedure close_actExecute(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  page_client_index: integer;
  update_or_insert: integer;
  client_ch_id: integer;
  client_town_id: integer;

implementation

uses dmunit,   MainUnit, PriceUnit, FlyListUnit, AddPackingUnit, LoadUnit;

{$R *.dfm}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;



procedure TForm5.SpeedButton1Click(Sender: TObject);


begin


if page_client_index=1 then
begin
        page_client_index:=2;
        update_or_insert:=1;
        SpeedButton1.Caption:='Список';
//        save_client.Visible:=ivnever;
        ActionManager1.ActionBars[0].Items[2].Visible:=true;
//        save_client.Visible:=ivalways;
        client_grid.Visible:=false;
        panel2.Visible:=true;
        panel2.Align:=alclient;
        navigator.Enabled:=false;
        town_com1.Enabled:=false;
        combo_filter.Enabled:=false;
        filter.Enabled:=false;

        fio.Text:=clients.fieldbyname('client_name').AsString;
        phone.Text:=clients.fieldbyname('client_phone').AsString;
        xcode.Text:=clients.fieldbyname('xcode').AsString;
        client_code.Text:=clients.fieldbyname('client_code').asstring;
      //town_com.ItemIndex:=0;
        claddress.Text:=clients.fieldbyname('cl_address').AsString;
        clnote.Text:=clients.fieldbyname('clientnote').AsString;
        email.Text:=clients.fieldbyname('email').AsString;
       // town_com.Text:='';
       // town_com.SelText:=clients.fieldbyname('townname').AsString;

        GroupBox1.Visible:=false;
        town_com.ItemIndex:=town_com.Items.IndexOfObject(pointer(integer(clients.FieldByName('cl_div').Value)));
        client_ch_id:=clients.fieldbyname('client_id').Value;
        client_town_id:=clients.fieldbyname('cl_div').Value;
        //xcode.ReadOnly:=true;
         if open_client_form=3 then
           begin
            GroupBox1.Visible:=true;
            checkbox1.Checked:=true;
            checkbox1.Enabled:=false;
            combobox1.Visible:=true;
            speedbutton2.Visible:=true;
            speedbutton3.Visible:=true;
           end;

 end
   else
    begin
    clients.Active:=false;
    clients.Active:=true;
    page_client_index:=1;
    update_or_insert:=1;
    SpeedButton1.Caption:='Карточка';
    ActionManager1.ActionBars[0].Items[2].Visible:=false;
    panel2.Visible:=false;
    GroupBox1.Visible:=true;
    client_grid.Visible:=true;
    client_grid.Align:=alclient;
    navigator.Enabled:=true;
    town_com1.Enabled:=true;
    combo_filter.Enabled:=true;
    filter.Enabled:=true;
    client_grid.SetFocus;
    xcode.ReadOnly:=false;

     if open_client_form=3 then
           begin
            combobox1.Visible:=false;
            CheckBox1.Checked:=false;
            speedbutton2.Visible:=false;
            speedbutton3.Visible:=false;
           end;

     end;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Импортировать цены отправителя "'+combobox1.Text+'" из справочника?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin
          if clients.FieldByName('client_id').Value<>integer(integer(ComboBox1.Items.Objects[combobox1.ItemIndex]))then
           begin
              setprice.Params.Clear;
              setprice.ParamByName('send_id').Value:=integer(integer(ComboBox1.Items.Objects[combobox1.ItemIndex]));
              setprice.ParamByName('oldsend_id').Value:=clients.FieldByName('client_id').Value;
              setprice.ParamByName('cnf_id').Value:=dm.config.fieldByname('cnf_id').Value;
              setprice.Prepare;
              setprice.ExecProc;
              dm.IBTransaction2.CommitRetaining;
              showform:=tshowform.create(application);
              showform.StaticText1.Caption:='  Готово';
              showform.StaticText2.Caption:=' Импорт цен завершен';
              showform.Refresh;
              showform.but1.Visible:=true;
              showform.Show;
           end
           else
            begin
             showform:=tshowform.create(application);
              showform.StaticText1.Caption:='  Сообщение';
              showform.StaticText2.Caption:=' Невозможно импортировать';
              showform.Refresh;
              showform.but1.Visible:=true;
              showform.Show;
            end;

//              showmessage('Готово!!!!');
                        end;
end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
 var
  i: integer;
begin

   opener_price_type:=1;
   screen.Cursor:=crHourGlass;
   price:=tprice.create(application);
    for i:=0 to 5 do
     price.actiontoolbar1.ActionControls[i].Visible:=false;

   cust_id:=integer(integer(ComboBox1.Items.Objects[combobox1.ItemIndex]));
   price.packtypes.SQL.Clear;
   price.packtypes.SQL.add(' select pc.oemcode,p.packtypename,p.ptitle, p.title_ch, pc.packprice, c.client_name, p.packtype_id, c.client_id, pc.ptp_id, pc.send_id as cust_id from PACKTYPES p,packtype_price pc, clients c ');
   price.packtypes.SQL.Add(' where p.packtype_id=pc.packtype_id and ptype=0 and pc.delflag=0 and pc.send_id=c.client_id ' );
   price.packtypes.SQL.Add(' and pc.cnf_id='+dm.config.FieldByName('cnf_id').AsString);
   price.packtypes.SQL.Add(' and c.client_id='+inttostr(cust_id));
   //price.packtypes.SQL.Add(' and pc.cnf_id='+dm.config.fieldbyname('cnf_id').AsString+' order by packtypename');
   price.packtypes.Active:=true;
   price.cust_com.Enabled:=false;
   price.actiontoolbar1.ActionControls[3].Visible:=false;
   price.Caption:='Товары  '+price.packtypes.FieldByName('client_name').AsString;

   addpackingform:=taddpackingform.create(application);
   addpackingform.packtypes.Active:=true;
   price.FormStyle:=fsstayontop;
   price.Visible:=false;
   price.Caption:='Просмотр товаров'+' ['+ComboBox1.Text+']';
   price.showmodal;
   screen.Cursor:=crdefault;
end;

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
 if MessageDlg('Импортировать цены отправителя "'+combobox1.Text+'" из справочника?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin
          if clients.FieldByName('client_id').Value<>integer(integer(ComboBox1.Items.Objects[combobox1.ItemIndex]))then
           begin
              setprice.Params.Clear;
              setprice.ParamByName('send_id').Value:=integer(integer(ComboBox1.Items.Objects[combobox1.ItemIndex]));
              setprice.ParamByName('oldsend_id').Value:=clients.FieldByName('client_id').Value;
              setprice.ParamByName('cnf_id').Value:=dm.config.fieldByname('cnf_id').Value;
              setprice.Prepare;
              setprice.ExecProc;
              dm.IBTransaction2.CommitRetaining;
              showform:=tshowform.create(application);
              showform.StaticText1.Caption:='  Готово';
              showform.StaticText2.Caption:=' Импорт цен завершен';
              showform.Refresh;
              showform.but1.Visible:=true;
              showform.Show;
           end
           else
            begin
             showform:=tshowform.create(application);
              showform.StaticText1.Caption:='  Сообщение';
              showform.StaticText2.Caption:=' Невозможно импортировать';
              showform.Refresh;
              showform.but1.Visible:=true;
              showform.Show;
            end;

//              showmessage('Готово!!!!');
                        end;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
//client_grid.Align:=alclient;
client_grid.Align:=alclient;
client_grid.SetFocus;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
clients.Active:=true;
page_client_index:=1;
update_or_insert:=1;




 dm.towns.Active:=true;
 dm.towns.First;
  while not dm.towns.Eof do begin
town_com.Items.AddObject(dm.towns.fieldbyname('townname').Value ,pointer(integer(dm.towns.FieldByName('town_id').Value)));
town_com1.Items.AddObject(dm.towns.fieldbyname('townname').Value ,pointer(integer(dm.towns.FieldByName('town_id').Value)));
   dm.towns.Next;
   end;
town_com.ItemIndex:=0;




end;




procedure TForm5.rrr(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 var
  _Y: integer;

  begin
    IF  gdSelected   IN State
	Then Begin
 if clients.FieldByName('status').Value=1 then
    TDBGrid(Sender).Canvas.Brush.Color:= clwhite
   else
     TDBGrid(Sender).Canvas.Brush.Color:= RGB(220,220,220);

	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   //TDBGrid(Sender).Canvas.Font.Size:=10;

  if clients.FieldByName('status').Value=1 then
   TDBGrid(Sender).Canvas.pen.Color:=RGB(160,160,255)
   else
   TDBGrid(Sender).Canvas.pen.Color:=RGB(160,160,160);

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
      if clients.FieldByName('status').Value=1 then
    TDBGrid(Sender).Canvas.Brush.Color:= clwhite
   else
     TDBGrid(Sender).Canvas.Brush.Color:= RGB(220,220,220);
    end;

	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);


end;


procedure TForm5.combo_filterSelect(Sender: TObject);
begin
if combo_filter.ItemIndex<>0 then begin filter.Visible:=true;
 filter.SetFocus;  end
   else filter.Visible:=false;


end;

procedure TForm5.N1Click(Sender: TObject);
begin

if MessageDlg('Удалить отправителя из справочника?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin
  delsend.ParamByName('send_id').Value:=clients.fieldbyname('client_id').Value;
  delsend.Prepare;
  delsend.ExecProc;
  dm.clienparttran.CommitRetaining;
  clients.Active:=false;
  clients.Active:=true;
 end;
end;

procedure TForm5.N2Click(Sender: TObject);
 var
 status: integer;
begin
 if clients.FieldByName('status').Value=1 then
  status:=0
  else
  status:=1;

 upd.SQL.Clear;
 upd.SQL.Add('update clients set status='+inttostr(status)+' where client_id='+clients.FieldByName('client_id').AsString);
 upd.ExecQuery;
 dm.IBTransaction2.CommitRetaining;
 clients.Active:=false;
 clients.Active:=true;
end;

procedure TForm5.town_com1Change(Sender: TObject);
var
sql: string;
begin
 if town_com1.ItemIndex<>0 then
   begin
  if opener_clientform_type=2
     then
   sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and clout_id<>0 and c.cl_div='+inttostr(integer(integer(town_com1.Items.Objects[town_com1.ItemIndex])))
    else
   sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and clout_id=0 and c.cl_div='+inttostr(integer(integer(town_com1.Items.Objects[town_com1.ItemIndex])));
   end
    else
     begin
 if opener_clientform_type=2
     then
   sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and clout_id<>0'
    else
   sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and clout_id=0';
   end;

   clients.Active:=false;
   clients.SQL.Clear;
   clients.SQL.Add(sql);
   clients.Active:=true;
       client_grid.SetFocus;
end;

procedure TForm5.filterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sql: string;
  begin
 if (key=vk_return) then
  begin


  if filter.Text<>'' then
   begin
  if opener_clientform_type<>2
   then
  if combo_filter.ItemIndex=1
    then
    sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and c.clout_id=0 and xcode='+filter.text
    else
   sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and c.clout_id=0 and client_name like "%'+filter.text+'%"'

  else
   if combo_filter.ItemIndex=1
    then
    sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and c.clout_id<>0 and xcode='+filter.text
    else
    sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and c.clout_id<>0 and client_name like "%'+filter.text+'%"';
   end
 else
  begin
   if opener_clientform_type<>2 then
     sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and c.clout_id=0 order by c.xcode'
    else
     sql:='select  c.*,  t.townname  from  clients c, towns t where c.cl_div=t.town_id and c.clout_id<>0 order by c.xcode';
  end;

  //dm.client_tran.Active:=false;
  //dm.client_tran.Active:=true;
  clients.Active:=false;
  clients.SQL.Clear;
  clients.SQL.Add(sql);
  clients.Active:=true;
  client_grid.SetFocus;

  end;

end;

procedure TForm5.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then
     combobox1.Visible:=true else
     begin
        combobox1.Visible:=false;
        speedbutton3.Visible:=false;
     end;

    speedbutton3.Visible:=true;
  end;

procedure TForm5.client_gridDblClick(Sender: TObject);
begin
 SpeedButton1Click(Speedbutton1);
end;

procedure TForm5.x2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then
begin
key:=#0;
beep;
end;
end;

procedure TForm5.xcodeKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then
begin
key:=#0;
beep;
end;
end;

procedure TForm5.town_comChange(Sender: TObject);
begin
 client_town_id:=integer(integer(town_com.Items.Objects[town_com.ItemIndex]));

end;

procedure TForm5.refresh_actExecute(Sender: TObject);
begin
dm.clienparttran.Active:=false;
dm.clienparttran.Active:=true;
clients.Active:=false;
clients.Active:=true;
end;

procedure TForm5.newcl_actExecute(Sender: TObject);
begin
   dm.clienparttran.Active:=true;
   dm.clienparttran.Active:=false;
   dm.clientset.Active:=false;
   dm.clientset.Active:=true;
   page_client_index:=2;
   update_or_insert:=2;
   SpeedButton1.Caption:='Список';

   if (open_client_form=2) or (open_client_form=3) then
    ActionManager1.ActionBars[0].Items[2].Visible:=true;


   client_grid.Visible:=false;
   panel2.Visible:=true;
   panel2.Align:=alclient;
   town_com.ItemIndex:=0;
   fio.Text:='';
   phone.Text:='';

   xcode.Text:=inttostr(dm.clientset.fieldbyname('lastid').Value+1);
   client_code.Text:=inttostr(dm.clientset.fieldbyname('lastid').Value+1);
   if (open_client_form=3) then begin
     xcode.Text:=inttostr(999999);
     client_code.Text:=inttostr(999999);
     CheckBox1.Checked:=false;
     CheckBox1.Enabled:=true;
     speedbutton2.Visible:=false;
     speedbutton3.Visible:=false;
   end;

   if (open_client_form=2) then begin
     xcode.Text:=inttostr(888888);
     client_code.Text:=inttostr(888888);
   end;


   claddress.Text:='';
   clnote.Text:='';
   email.Text:='';

   navigator.Enabled:=false;
   town_com1.Enabled:=false;
       //speedbutton2.Enabled:=false;
   filter.Enabled:=false;

end;

procedure TForm5.PopupMenu1Popup(Sender: TObject);
begin
  if ((open_client_form=1) or (dm.users.FieldByName('userlevels').Value<>1)) then
   begin
    // n1.Enabled:=false;
     n2.Enabled:=false;
   end
   else
   begin
     if clients.FieldByName('status').Value=1 then
      n2.Caption:='Не активный'
      else
      n2.Caption:='Активный';
   end;
end;

procedure TForm5.save_actExecute(Sender: TObject);
begin
 if update_or_insert=2 then
begin
inscl.Parambyname('clientname').Value:=FIO.Text;
inscl.Parambyname('client_phone').Value:=phone.Text;
inscl.Parambyname('cl_address').Value:=claddress.Text;
inscl.Parambyname('cl_div').Value:=integer(integer(town_com.Items.Objects[town_com.ItemIndex]));
inscl.Parambyname('client_code').Value:=strtoint(client_code.Text);
inscl.Parambyname('xcode').Value:=strtoint(xcode.Text);
inscl.Parambyname('passno').Value:='';
inscl.Parambyname('email').Value:=email.Text;
inscl.Parambyname('clientnote').Value:=clnote.Text;

  if (open_client_form=3) and (checkbox1.Checked) then
   inscl.Parambyname('sendprice').Value:=integer(integer(ComboBox1.Items.Objects[combobox1.ItemIndex]))
  else
    inscl.Parambyname('sendprice').Value:=-1;



inscl.Prepare;
inscl.ExecProc;
 if inscl.ParamByName('flok').Value=1
  then begin
dm.clienparttran.CommitRetaining;

dm.clienparttran.Active:=false;
dm.clienparttran.Active:=true;
clients.Active:=false;
clients.Active:=true;
dm.clientset.Active:=false;
dm.clientset.Active:=true;
update_or_insert:=1;
clients.Last;
 end
 else
MessageDlg('Клиент с такой маркировкой уже существует', mtInformation, [mbOK],0);
end
  else
  begin
chcl.Parambyname('clientname').asstring:=fio.Text;
chcl.Parambyname('client_phone').asstring:=phone.Text;
chcl.Parambyname('cl_address').asstring:=claddress.Text;
chcl.Parambyname('town_id').asinteger:=integer(integer(town_com.Items.Objects[town_com.ItemIndex]));
chcl.Parambyname('xcode').asinteger:=strtoint(xcode.Text);
chcl.Parambyname('passno').asstring:='';
chcl.Parambyname('email').asstring:=email.Text;
chcl.Parambyname('clientnote').asstring:=clnote.Text;
chcl.Parambyname('client_id').asinteger:=client_ch_id;
chcl.ParamByName('oldxcode').Value:=clients.fieldbyname('xcode').Value;
chcl.Prepare;
chcl.ExecProc;



if chcl.ParamByName('flok').Value=1
 then    begin
dm.clienparttran.CommitRetaining;
dm.clienparttran.Active:=false;
dm.clienparttran.Active:=true;
clients.Active:=false;
clients.Active:=true;
  end
  else
MessageDlg('Невозможно изменить-удалите сначала квитанции этого клиента', mtInformation, [mbOK],0);

//label15.Caption:=fio.Text;
//label16.Caption:=phone.Text;
//label17.Caption:=claddress.Text;
//label18.Caption:=town_com.Text;
//label19.Caption:=xcode.Text;
//label20.Caption:=passno.Text;
//label21.Caption:=email.Text;
//label22.Caption:=clnote.Text;
//label23.Caption:=inttostr(dm.clients.fieldbyname('client_id').Value);

 end;
dm.clienparttran.CommitRetaining;
dm.clienparttran.Active:=false;
dm.clienparttran.Active:=true;
dm.clientset.Active:=true;
clients.Active:=false;
clients.Active:=true;
end;

procedure TForm5.close_actExecute(Sender: TObject);
begin
 close;
end;

end.
