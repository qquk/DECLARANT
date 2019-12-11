unit NewFlyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls,ExtCtrls, DB, IBCustomDataSet, IBQuery,
  ComCtrls;

type
  Tnewfly = class(TForm)
    ordno: TLabeledEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    add_but: TSpeedButton;
    close_but: TSpeedButton;
    outno: TLabeledEdit;
    prov: TIBQuery;
    translist: TIBQuery;
    datetrans: TDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    deltaw: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure add_butClick(Sender: TObject);
    procedure close_butClick(Sender: TObject);
    procedure ordnoKeyPress(Sender: TObject; var Key: Char);
    procedure ordnoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure deltawKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  newfly: Tnewfly;

implementation

uses dmunit, FlyListUnit, CnvUnit, MainUnit, WaitTransListUnit;

{$R *.dfm}

procedure Tnewfly.FormCreate(Sender: TObject);
begin
dm.clients.active:=false;
dm.clients.active:=true;
dm.clients.Last;
dm.transtype.Last;
datetrans.Date:=now();
end;

procedure Tnewfly.FormPaint(Sender: TObject);
begin
with canvas do begin
pen.Color:=clwhite;
pen.Width:=1;
//brush.Style:=bsclear;
//moveto(sb1.left, sb1.top)

rectangle(add_but.left-2, add_but.Top-2, add_but.left+add_but.Width+2, add_but.Top+add_but.Height+2);
rectangle(1, 1, clientwidth-1, clientheight-1);

//rectangle(1, 1, clientwidth, clientheight);
//brush.Style:=bssolid;
//brush.Color:=clwhite;
//rectangle(0, 0, clientwidth, 18);


end;
end;

procedure Tnewfly.deltawKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',',','.']) then
begin
if ord(key)<>vk_back then
    begin
     key:=#0;
     beep;
    end;
end;
 if key='.' then key:=',';
end;

procedure Tnewfly.add_butClick(Sender: TObject);
 var i,n:integer;
begin
screen.Cursor:=crhourglass;

if newordoper=1 then
  dm.neword.ParamByName('trans_id').Value:=-1;

if newordoper=2 then
dm.neword.ParamByName('trans_id').Value:=cnvform.cnvinfo.fieldbyname('trans_id').value;

if newordoper=3 then
dm.neword.ParamByName('trans_id').Value:=-1;

dm.neword.ParamByName('user_id').Value:=user_id_global;
dm.neword.Params[8].Value:=dm.clients.fieldbyname('client_id').Value;
dm.neword.Params[2].Value:=dm.cust.fieldbyname('client_id').Value;
dm.neword.Params[3].Value:=datetostr(datetrans.Date);
dm.neword.Params[0].Value:=strtoint(ordno.Text);
dm.neword.Params[1].Value:=outno.Text;
dm.neword.Params[9].Value:=strtofloat(deltaw.Text);
dm.neword.ParamByName('cnf_id').Value:=dm.config.fieldbyname('cnf_id').Value;
dm.neword.Prepare;
dm.neword.ExecProc;

dm.IBTransaction2.CommitRetaining;
//dm.transtype.First;
//если открыта из формы flyform
if newordoper=1 then begin
 //flyform.flytran.Active:=false;
 //flyform.flytran.Active:=true;
 flyform.flylist.Active:=false;
 flyform.flylist.Active:=true;
 end;

 //если открыта из формы cnvform
if newordoper=2 then
 begin

   cnvform.new_ot.ParamByName('trans_id').Value:=cnvform.cnvinfo.fieldbyname('trans_id').Value;
   cnvform.new_ot.ParamByName('ord_id').Value:=dm.neword.Params[5].Value;
   cnvform.new_ot.Prepare;
   cnvform.new_ot.ExecProc;
   cnvform.cnvtran.CommitRetaining;

 cnvform.packing_all.Active:=false;
 cnvform.packing_all.SQL.Clear;
 cnvform.packing_all.SQL.Add('select sum(packkol), pt.packtype_id,');
 cnvform.packing_all.SQL.Add('pt.packtypename, u.unittitle, pt.oemcode from packing p, zagruzka z,');
 cnvform.packing_all.SQL.Add('packtypes pt, unittypes u  where u.unttype=p.unittype and');
 cnvform.packing_all.SQL.Add('z.zag_id=p.bag_id and z.outertrans_id='+inttostr(cnvform.cnvinfo.fieldbyname('trans_id').value)+' and p.packtype_id=pt.packtype_id');
 cnvform.packing_all.SQL.Add('group by pt.packtype_id, pt.packtypename, u.unittitle, pt.oemcode order by pt.packtypename');
 cnvform.packing_all.Active:=false;
 cnvform.packing_all.Active:=true;
 cnvform.packing_all.First;
   i:=1;
//ShowMessage(inttostr(cnvform.cnvinfo.fieldbyname('trans_id').value));
while not cnvform.packing_all.Eof
  do
   begin
     cnvform.newitems.ParamByName('id').Value:=0;
     cnvform.newitems.ParamByName('ord_id').Value:=dm.neword.Params[5].Value;
     cnvform.newitems.ParamByName('packtype_id').Value:=cnvform.packing_all.fields[1].Value;
     cnvform.newitems.ParamByName('packkol').Value:=cnvform.packing_all.fields[0].Value;
     cnvform.newitems.ParamByName('packweight').Value:=0;
     cnvform.newitems.ParamByName('price').Value:=0;
     cnvform.newitems.ParamByName('totalprice').Value:=0;
     cnvform.newitems.ParamByName('opertype').Value:=3;
     cnvform.newitems.ParamByName('packtypename').Value:=cnvform.packing_all.fieldbyname('packtypename').Value;
     cnvform.newitems.ParamByName('bagpos').Value:=0;
     cnvform.newitems.ParamByName('lupdate').Value:=now();
     cnvform.newitems.ParamByName('ptp_id').Value:=0;
     cnvform.newitems.ParamByName('poskol').Value:=cnvform.packing_all.fields[0].Value;
     cnvform.newitems.ParamByName('unittype_id').Value:=1;
     cnvform.newitems.Prepare;
     cnvform.newitems.ExecProc;
     cnvform.cnvtran.CommitRetaining;

      cnvform.helper.SQL.Clear;
      cnvform.helper.SQL.Add('select sum(packkol), p.tm_id');
		  cnvform.helper.SQL.Add('from packing p, zagruzka z,');
      cnvform.helper.SQL.Add('unittypes u  where u.unttype=p.unittype and ');
      cnvform.helper.SQL.Add('z.zag_id=p.bag_id and z.outertrans_id='+inttostr(cnvform.cnvinfo.fieldbyname('trans_id').value)+' and p.packtype_id='+cnvform.packing_all.fields[1].asstring);
      cnvform.helper.SQL.Add('group by p.tm_id');
      cnvform.helper.Active:=true;
      cnvform.helper.first;
       while not cnvform.helper.eof do
        begin
         cnvform.newtm.ParamByName('orditem_id').Value:=cnvform.newitems.ParamByName('new_id').Value;
         cnvform.newtm.ParamByName('tm_id').Value:=cnvform.helper.Fields[1].Value;
         cnvform.newtm.ParamByName('packkol').Value:=cnvform.helper.Fields[0].Value;
         cnvform.newtm.Prepare;
         cnvform.newtm.ExecProc;
         cnvform.cnvtran.CommitRetaining;
         cnvform.helper.next;
        end;
       cnvform.helper.Active:=false;
    cnvform.packing_all.Next;
   inc(i);
   end;

  //label2.Caption:=inttostr(i);
   //    showmessage('0000000000');

  cnvform.makeorder.ParamByName('ord_id').Value:=dm.neword.Params[5].Value;
  cnvform.makeorder.ParamByName('trans_id').Value:=cnvform.cnvinfo.fieldbyname('trans_id').value;
  cnvform.makeorder.Prepare;
  cnvform.makeorder.ExecProc;
  cnvform.cnvtran.CommitRetaining;
end;

  //если из формы ожидаемого транспорта

if newordoper=3
 then begin

  translist.First;
   while not translist.Eof do
   begin
    dm.new_ot.ParamByName('trans_id').Value:=translist.fieldbyname('trans_id').Value;
    dm.new_ot.ParamByName('ord_id').Value:=dm.neword.Params[5].Value;
    dm.new_ot.Prepare;
    dm.new_ot.ExecProc;
    dm.IBTransaction2.CommitRetaining;
    translist.Next;
   end;


 waittransportf.packing_all.Active:=false;
 waittransportf.packing_all.SQL.Clear;
 waittransportf.packing_all.SQL.Add('select sum(packkol), pt.packtype_id,');
 waittransportf.packing_all.SQL.Add('pt.packtypename, u.unittitle, pt.oemcode from packing p, zagruzka z,');
 waittransportf.packing_all.SQL.Add('packtypes pt, unittypes u  where u.unttype=p.unittype and');
 waittransportf.packing_all.SQL.Add('z.zag_id=p.bag_id and z.outertrans_id in'+translist_order+' and p.packtype_id=pt.packtype_id');
 waittransportf.packing_all.SQL.Add('group by pt.packtype_id, pt.packtypename, u.unittitle, pt.oemcode order by pt.packtypename');
 waittransportf.packing_all.Active:=false;
 waittransportf.packing_all.Active:=true;
 waittransportf.packing_all.First;
   i:=1;

while not waittransportf.packing_all.Eof
  do
   begin
     waittransportf.newitems.ParamByName('id').Value:=0;
     waittransportf.newitems.ParamByName('ord_id').Value:=dm.neword.Params[5].Value;
     waittransportf.newitems.ParamByName('packtype_id').Value:=waittransportf.packing_all.fields[1].Value;
     waittransportf.newitems.ParamByName('packkol').Value:=waittransportf.packing_all.fields[0].Value;
     waittransportf.newitems.ParamByName('packweight').Value:=0;
     waittransportf.newitems.ParamByName('price').Value:=0;
     waittransportf.newitems.ParamByName('totalprice').Value:=0;
     waittransportf.newitems.ParamByName('opertype').Value:=3;
     waittransportf.newitems.ParamByName('packtypename').Value:=waittransportf.packing_all.fieldbyname('packtypename').Value;
     waittransportf.newitems.ParamByName('bagpos').Value:=0;
     waittransportf.newitems.ParamByName('lupdate').Value:=now();
     waittransportf.packing_all.Next;
     waittransportf.newitems.Prepare;
     waittransportf.newitems.ExecProc;
     waittransportf.transtran.CommitRetaining;
   inc(i);
   end;
  label2.Caption:=inttostr(i);
  waittransportf.makeorder.ParamByName('ord_id').Value:=dm.neword.Params[5].Value;
  waittransportf.makeorder.ParamByName('trans_id').Value:=waittransportf.transport.fieldbyname('trans_id').value;
  waittransportf.makeorder.Prepare;
  waittransportf.makeorder.ExecProc;
  waittransportf.transtran.CommitRetaining;


 end;

screen.Cursor:=crdefault;
close;

end;

procedure Tnewfly.close_butClick(Sender: TObject);
begin
 close;
end;

procedure Tnewfly.ordnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
   begin
    key:=#0;
    beep;
   end;
end;

procedure Tnewfly.ordnoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
  then
  outno.SetFocus;
end;

end.
