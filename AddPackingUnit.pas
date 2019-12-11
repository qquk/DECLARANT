unit AddPackingUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, DBCtrls, ExtCtrls,
  ToolWin, ComCtrls, Buttons, mainUnit, ActnList,
  XPStyleActnCtrls, ActnMan, math;

type
  Taddpackingform = class(TForm)
    packtypes: TIBQuery;
    IBQuery2: TIBQuery;
    DataSource1: TDataSource;
    CoolBar1: TCoolBar;
    Panel1: TPanel;
    Panel2: TPanel;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit3: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    ActionManager1: TActionManager;
    Action1: TAction;
    Edit1: TEdit;
    Edit4: TEdit;
    Label7: TLabel;
    Action2: TAction;
    nweight: TEdit;
    Label8: TLabel;
    Label10: TLabel;
    custprice: TEdit;
    posprice_weight: TEdit;
    packtypesPACKTYPE_ID: TIntegerField;
    packtypesPACKTYPENAME: TIBStringField;
    packtypesPTITLE: TIBStringField;
    packtypesLOAD: TFloatField;
    packtypesDUTY: TFloatField;
    DBText1: TDBText;
    packtypesPACKTYPENAME_LONG: TIBStringField;
    Label12: TLabel;
    Label13: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    custsumm: TEdit;
    price_inv2: TEdit;
    totalsumm2: TEdit;
    Label14: TLabel;
    poscount2: TEdit;
    price_inv: TEdit;
    Label11: TLabel;
    Label5: TLabel;
    edit2: TEdit;
    Label15: TLabel;
    posweight2: TEdit;
    unitcom: TComboBox;
    Label16: TLabel;
    Label6: TLabel;
    bagpos: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    nweight2: TEdit;
    packtypesOEMCODE: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure punitcomboSelect(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure punitcomboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure punitcomboChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure bagposKeyPress(Sender: TObject; var Key: Char);
    procedure bagposKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Change(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Action1Execute(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure bagposChange(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CulcSumm();
    procedure CulcSumm2();
    procedure unitcomChange(Sender: TObject);
    procedure posprice_weightChange(Sender: TObject);
    procedure posprice_weightKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure posprice_weightKeyPress(Sender: TObject; var Key: Char);
    procedure price_invKeyPress(Sender: TObject; var Key: Char);
    procedure price_invKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nweightChange(Sender: TObject);
    procedure nweightKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nweightKeyPress(Sender: TObject; var Key: Char);
    procedure poscount2KeyPress(Sender: TObject; var Key: Char);
    procedure posweight2KeyPress(Sender: TObject; var Key: Char);
    procedure nweight2KeyPress(Sender: TObject; var Key: Char);
    procedure price_inv2KeyPress(Sender: TObject; var Key: Char);
    procedure totalsumm2KeyPress(Sender: TObject; var Key: Char);
    procedure poscount2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure posweight2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nweight2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure price_inv2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure poscount2Change(Sender: TObject);
    procedure posweight2Change(Sender: TObject);
    procedure nweight2Change(Sender: TObject);
    procedure price_inv2Change(Sender: TObject);
    procedure totalsumm2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  addpackingform: Taddpackingform;
  unittype_id: integer;
  notchangeunittype: boolean;
implementation

uses dmunit, BagPosUnit, FlyListUnit, PriceUnit;

{$R *.dfm}

procedure Taddpackingform.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure Taddpackingform.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure Taddpackingform.totalsumm2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
   then
    if speedbutton1.Enabled then
      SpeedButton1Click(speedbutton1)
    else
      SpeedButton1Click(speedbutton1)
  else
    speedbutton1.Enabled:=true;
end;

procedure Taddpackingform.totalsumm2KeyPress(Sender: TObject; var Key: Char);
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

procedure Taddpackingform.unitcomChange(Sender: TObject);
begin
// CulcSumm;
end;

procedure Taddpackingform.FormShow(Sender: TObject);
var
weight, nettoweight, koef: double;
f2symb: string;
begin
//ShowMessage(IntToStr(Opener_price_type));
 if opener_price_type<>4 then
  edit1.SetFocus;
  if opener_price_type=3 then
  speedbutton1.Enabled:=true;
 if Opener_price_type<>7 then  begin
  edit5.Text:=packtypes.FieldByName('packtypename').AsString;
 end;


 if trim(packtypes.FieldByName('ptitle').AsString)='' then
  begin
    Label7.Left:=2;
    label7.Visible:=true;
  end;
  caption:=caption+' '+packtypes.FieldByName('packtype_id').AsString;



 if Opener_price_type<>2 then
  nweight.Text:=flyform.fly_pos.fieldbyname('nweight').asstring;

 culcsumm;
 edit1.SetFocus;


  koef := 0.15;
  f2symb := Copy(packtypes.FieldByName('oemcode').AsString, 1, 2);
  if(f2symb = '64') then
  begin
    koef :=  0.177;
  end;

  nweight.Text:= floattostr(roundto(strtofloat(edit3.Text) - koef * strtofloat(edit3.Text)+0.1,0));

   if Opener_price_type=7 then  begin
 nweight.setfocus;
 nweight.Text:=flyform.fly_pos.fieldbyname('nweight').asstring;
 edit1.SetFocus;
  end;

  weight:=strtofloat(edit3.Text);
  nettoweight:=strtofloat(nweight.Text);
  if (weight<>0) and (trim(edit3.Text)<>'') then
       label12.Caption:=floattostr(roundto((weight-nettoweight)/weight*100,-1))+'%'
  else
      label12.Caption:='0 %';
// culcsumm2;

//edit2.Text:=flyform.fly_pos.FieldByName('totalsumm').AsString;

 end;

procedure Taddpackingform.nweight2Change(Sender: TObject);
begin
 CulcSumm2;
end;

procedure Taddpackingform.nweight2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
   begin
    price_inv2.SetFocus;
    speedbutton1.Enabled:=true;
 end;
end;

procedure Taddpackingform.nweight2KeyPress(Sender: TObject; var Key: Char);
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

procedure Taddpackingform.nweightChange(Sender: TObject);
begin
 CulcSumm;
end;

procedure Taddpackingform.nweightKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
  bagpos.SetFocus
  else
 speedbutton1.Enabled:=true;
end;

procedure Taddpackingform.nweightKeyPress(Sender: TObject; var Key: Char);
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

procedure Taddpackingform.SpeedButton1Click(Sender: TObject);
 var
 bmark: TBookMark;
 bmark1: TBookMark;
 strlog: string;
 n,totalbagpos: integer;
 totalweight,totalpos: double;
 saveflag: boolean;
 temp: integer;
 begin
 screen.Cursor:=crHourGlass;
 saveflag:=true;
 temp:=1;

 if (unitcom.ItemIndex=1) and (strtofloat(edit1.Text)<>strtofloat(nweight.Text)) and (Opener_price_type=7) then
    saveflag:=false;

  if saveflag=false then
   begin
   temp:=MessageDlg('Редактирование килограммовой позиции. Поле "количество" не совпадает с полем "вес нетто". Продолжить?',
    mtConfirmation, [mbYes, mbNo], 0);
   if temp=mrYes then temp:=1 else temp:=-1;
  end;
if temp=1 then
 begin
SpeedButton2.Caption:=inttostr(cur_ptp_id);
flyform.newitem.ParamByName('nweight').value:=roundto(strtofloat(nweight.Text)+0.1,0);
if (opener_price_type=7) then
begin
 bmark:=flyform.fly_pos_grid.DataSource.DataSet.GetBookmark;
 flyform.fly_pos_grid.DataSource.DataSet.DisableControls;
 bmark1:=flyform.fly_grid.DataSource.DataSet.GetBookmark;
 flyform.fly_grid.DataSource.DataSet.DisableControls;
 flyform.changeitem.ParamByName('packkol').Value:=strtofloat(edit1.Text);
 flyform.changeitem.ParamByName('price').value:=strtofloat(edit4.Text);
 flyform.changeitem.ParamByName('packweight').Value:=strtofloat(edit3.Text);
 flyform.changeitem.ParamByName('totalprice').value:=strtofloat(edit2.Text);
 flyform.changeitem.ParamByName('price_weight').value:=strtofloat(posprice_weight.Text);
 flyform.changeitem.ParamByName('price_inv').value:=strtofloat(price_inv.Text);
 flyform.changeitem.ParamByName('nweight').value:=roundto(strtofloat(nweight.Text)+0.1,0);

 flyform.changeitem.ParamByName('poscount2').value:=strtofloat(poscount2.Text);
 flyform.changeitem.ParamByName('posweight2').value:=strtofloat(posweight2.Text);
 flyform.changeitem.ParamByName('nweight2').value:=strtofloat(nweight2.Text);
 flyform.changeitem.ParamByName('price_inv2').value:=strtofloat(price_inv2.Text);
 flyform.changeitem.ParamByName('totalsumm2').value:=strtofloat(totalsumm2.Text);

  if flyform.CheckBox6.Checked then
    flyform.changeitem.ParamByName('protokol').Value:=1
  else
    flyform.changeitem.ParamByName('protokol').Value:=0;

  flyform.changeitem.ParamByName('origin_weight').Value:=flyform.fly_pos.fieldbyname('posweight').Value;
  flyform.changeitem.ParamByName('odeltaw').Value:=flyform.fly_pos.fieldbyname('deltaw1').Value;
  flyform.changeitem.ParamByName('unittype_id').value:=integer(integer(unitcom.Items.Objects[unitcom.ItemIndex]));
  flyform.changeitem.ParamByName('poskol').value:=0;
  flyform.changeitem.ParamByName('packtype_id').Value:=packtypes.fieldbyname('packtype_id').Value;

   flyform.newlog.ParamByName('log_type').Value:=opener_price_type;
   flyform.newlog.ParamByName('logdate').Value:=now();
   flyform.newlog.ParamByName('logcontent').AsString:='';
   flyform.newlog.ParamByName('user_id').Value:=dm.users.fieldbyname('user_id').Value;
   flyform.newlog.ParamByName('ord_id').Value:=current_fly;
   flyform.newlog.Prepare;
   flyform.newlog.ExecProc;


   flyform.newlogit.ParamByName('logcontent').Value:=flyform.fly_pos.fieldbyname('packtypename').value;
   flyform.newlogit.ParamByName('poscount').Value:=flyform.fly_pos.fieldbyname('poscount').value;
   flyform.newlogit.ParamByName('posweight').Value:=flyform.fly_pos.fieldbyname('posweight').value;
   flyform.newlogit.ParamByName('posprice').Value:=flyform.fly_pos.fieldbyname('posprice').value;
   flyform.newlogit.ParamByName('bagpos').Value:=flyform.fly_pos.fieldbyname('bagpos').value;
   flyform.newlogit.ParamByName('liorder').Value:=1;
   flyform.newlogit.ParamByName('log_id').Value:=flyform.newlog.ParamByName('n_id').Value;
   flyform.newlogit.Prepare;
   flyform.newlogit.ExecProc;

   flyform.newlogit.ParamByName('logcontent').Value:=Edit5.Text;
   flyform.newlogit.ParamByName('poscount').Value:=strtofloat(edit1.Text);
   flyform.newlogit.ParamByName('posweight').Value:=strtofloat(edit3.Text);
   flyform.newlogit.ParamByName('posprice').Value:=strtofloat(edit4.Text);
   flyform.newlogit.ParamByName('bagpos').Value:=strtoint(bagpos.Text);
   flyform.newlogit.ParamByName('liorder').Value:=2;
   flyform.newlogit.ParamByName('log_id').Value:=flyform.newlog.ParamByName('n_id').Value;
   flyform.newlogit.Prepare;
   flyform.newlogit.ExecProc;

 flyform.changeitem.ParamByName('packtypename').Value:=edit5.text;
 flyform.changeitem.ParamByName('bagpos').Value:=strtoint(bagpos.Text);
 flyform.changeitem.Prepare;
 flyform.changeitem.ExecProc;

 flyform.upd_fly.ParamByName('ord_id').Value:=current_fly;
 flyform.upd_fly.prepare;
 flyform.upd_fly.execproc;


 flyform.flytran.CommitRetaining;
 flyform.flytran.Active:=false;
 flyform.flytran.Active:=true;
 flyform.fly_pos.Active:=true;
 flyform.flylist.Active:=true;
 flyform.filterprop.ParamByName('ord_id').Value:=current_fly;
 flyform.filterprop.Active:=true;
 flyform.setfilter(current_fly);

 flyform.fly_pos_grid.DataSource.DataSet.GotoBookmark(bmark);
 flyform.fly_pos_grid.DataSource.DataSet.FreeBookmark(bmark);
 flyform.fly_pos_grid.DataSource.DataSet.EnableControls;
 flyform.fly_grid.DataSource.DataSet.GotoBookmark(bmark1);
 flyform.fly_grid.DataSource.DataSet.FreeBookmark(bmark1);
 flyform.fly_grid.DataSource.DataSet.EnableControls;


 close;

 if flyform.tmgrid.Visible then
  flyform.tmquery.Active:=true;

 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);

end;
 // Добавление новой записи
if (opener_price_type=2) then
 begin
   bmark:=flyform.fly_pos_grid.DataSource.DataSet.GetBookmark;
   flyform.fly_pos_grid.DataSource.DataSet.DisableControls;
   bmark1:=flyform.fly_grid.DataSource.DataSet.GetBookmark;
   flyform.fly_grid.DataSource.DataSet.DisableControls;

   flyform.newitem.ParamByName('packkol').Value:=strtofloat(edit1.Text);
   flyform.newitem.ParamByName('price').value:=strtofloat(edit4.Text);
   flyform.newitem.ParamByName('packweight').Value:=strtofloat(edit3.Text);
   flyform.newitem.ParamByName('totalprice').value:=strtofloat(edit2.Text);
   flyform.newitem.ParamByName('price_weight').value:=strtofloat(posprice_weight.Text);
   flyform.newitem.ParamByName('price_inv').value:=strtofloat(price_inv.Text);
   flyform.newitem.ParamByName('nweight').value:=roundto(strtofloat(nweight.Text)+0.1,0);
   flyform.newitem.ParamByName('unittype_id').value:=price.packtypes.FieldByName('unittype_id').Value;
   flyform.newitem.ParamByName('poskol').value:=0;
   flyform.newitem.ParamByName('packtype_id').Value:=price.packtypes.fieldbyname('packtype_id').Value;
   flyform.newitem.ParamByName('ptp_id').Value:=cur_ptp_id;
   flyform.newitem.ParamByName('packtypename').Value:=price.packtypes.fieldbyname('packtypename').Value;
   flyform.newitem.ParamByName('bagpos').Value:=strtoint(bagpos.Text);
   flyform.newitem.Prepare;
   flyform.newitem.ExecProc;

   flyform.newlog.ParamByName('log_type').Value:=opener_price_type;
   flyform.newlog.ParamByName('logdate').Value:=now();
   flyform.newlog.ParamByName('logcontent').AsString:='';
   flyform.newlog.ParamByName('user_id').Value:=dm.users.fieldbyname('user_id').Value;
   flyform.newlog.ParamByName('ord_id').Value:=current_fly;
   flyform.newlog.Prepare;
   flyform.newlog.ExecProc;

   flyform.newlogit.ParamByName('logcontent').Value:=DBText2.Caption;
   flyform.newlogit.ParamByName('poscount').Value:=strtofloat(edit1.Text);
   flyform.newlogit.ParamByName('posweight').Value:=strtofloat(edit3.Text);
   flyform.newlogit.ParamByName('posprice').Value:=strtofloat(edit4.Text);
   flyform.newlogit.ParamByName('bagpos').Value:=strtoint(bagpos.Text);
   flyform.newlogit.ParamByName('liorder').Value:=1;
   flyform.newlogit.ParamByName('log_id').Value:=flyform.newlog.ParamByName('n_id').Value;
   flyform.newlogit.Prepare;
   flyform.newlogit.ExecProc;



   flyform.upd_fly.ParamByName('ord_id').Value:=current_fly;
   flyform.upd_fly.prepare;
   flyform.upd_fly.execproc;
   flyform.flytran.CommitRetaining;
   flyform.flytran.Active:=false;
   flyform.flytran.Active:=true;
   flyform.fly_pos.Active:=true;
   flyform.flylist.Active:=true;
   flyform.filterprop.ParamByName('ord_id').Value:=current_fly;
   flyform.filterprop.Active:=true;
   flyform.setfilter(current_fly);
   flyform.fly_pos_grid.DataSource.DataSet.GotoBookmark(bmark);
   flyform.fly_pos_grid.DataSource.DataSet.FreeBookmark(bmark);
   flyform.fly_pos_grid.DataSource.DataSet.EnableControls;
   flyform.fly_grid.DataSource.DataSet.GotoBookmark(bmark1);
   flyform.fly_grid.DataSource.DataSet.FreeBookmark(bmark1);
   flyform.fly_grid.DataSource.DataSet.EnableControls;

    close;
   flyform.fly_pos.Locate('id',inttostr(flyform.newitem.parambyname('new_id').Value), [loCaseInsensitive ,loPartialKey]);

 if flyform.tmgrid.Visible then
   flyform.tmquery.Active:=true;
  flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
 end;

if (opener_price_type=3)
  then
   begin
  price.IBStoredProc1.ParamByName('id').Value:=0;
  price.IBStoredProc1.ParamByName('opertype').Value:=1;
  price.IBStoredProc1.ParamByName('price').Value:=strtofloat(edit4.Text); //price.packtypes.fieldbyname('packprice').value;
  price.IBStoredProc1.ParamByName('ord_id').Value:=flyform.fly_pos.fieldbyname('id').value;
  price.IBStoredProc1.ParamByName('packkol').Value:=strtofloat(edit1.Text); //flyform.fly_pos.fieldbyname('poscount').value;
  price.IBStoredProc1.ParamByName('packweight').Value:=strtofloat(edit3.Text);//flyform.fly_pos.fieldbyname('posweight').value;
  price.IBStoredProc1.ParamByName('bagpos').Value:=strtofloat(bagpos.Text);//flyform.fly_pos.fieldbyname('bagpos').value;
  price.IBStoredProc1.ParamByName('packtypename').Value:=price.packtypes.fieldbyname('packtypename').value;
  price.IBStoredProc1.ParamByName('packtype_id').Value:=price.packtypes.fieldbyname('packtype_id').value;
  price.IBStoredProc1.ParamByName('ptp_id').Value:=cur_ptp_id;
  price.IBStoredProc1.ParamByName('totalprice').Value:=strtofloat(edit2.Text);//flyform.fly_pos.fieldbyname('poscount').value*price.packtypes.fieldbyname('packprice').Value;
  price.IBStoredProc1.ParamByName('unittype_id').Value:=price.packtypes.fieldbyname('unittype_id').value;
  price.IBStoredProc1.ParamByName('posprice_weight').Value:=strtofloat(posprice_weight.Text);
  price.IBStoredProc1.ParamByName('price_inv').Value:=strtofloat(price_inv.Text);
  price.IBStoredProc1.ParamByName('nweight').value:=roundto(strtofloat(nweight.Text)+0.1,0);
  price.IBStoredProc1.Prepare;
  price.IBStoredProc1.ExecProc;
  dm.IBTransaction2.CommitRetaining;

  price.IBQuery1.ParamByName('id').Value:=flyform.fly_pos.fieldbyname('id').Value;
  price.bufprop.ParamByName('id').Value:=flyform.fly_pos.fieldbyname('id').Value;
  price.bufprop.Active:=false;
  price.bufprop.Active:=true;
  price.IBQuery1.Active:=false;
  price.IBQuery1.Active:=true;
  price.StaticText1.Caption:='';
  price.StaticText1.Caption:='Выбранные позиции '+'Кол-во: '+price.bufprop.Fields[0].AsString+' Вес: '+price.bufprop.Fields[1].AsString+' Мест: '+price.bufprop.Fields[2].AsString+
     '    Остаток: Кол-во: '+floattostr(flyform.fly_pos.fieldbyname('poscount').Value-price.bufprop.Fields[0].value)+
      '  Вес: '+floattostr(flyform.fly_pos.fieldbyname('posweight').Value-price.bufprop.Fields[1].value)+
      '  Мест: '+inttostr(flyform.fly_pos.fieldbyname('bagpos').Value-price.bufprop.Fields[2].value);
  close;

 end;


if opener_price_type=5
   then
    begin

     flyform.newlog.Prepare;
     flyform.newlog.ExecProc;

     flyform.newitem.ParamByName('poskol').Value:=0;
     flyform.newitem.ParamByName('unittype_id').Value:=price.packtypes.FieldByName('unittype_id').Value;
     flyform.newitem.ParamByName('totalprice').value:=strtofloat(edit2.Text);
     flyform.newitem.ParamByName('price').Value:=strtofloat(edit4.Text);
     flyform.newitem.ParamByName('price_weight').Value:=strtofloat(posprice_weight.Text);
     flyform.newitem.ParamByName('price_inv').Value:=strtofloat(price_inv.Text);
     flyform.newitem.Prepare;
     flyform.newitem.ExecProc;

   for n:=0 to flyform.fly_pos_grid.SelectedRows.Count-1 do
    begin
    flyform.fly_pos.GotoBookmark(pointer(flyform.fly_pos_grid.SelectedRows[n]));
    totalpos:=totalpos+flyform.fly_pos.fieldbyname('poscount').Value;
    totalweight:=totalweight+flyform.fly_pos.fieldbyname('posweight').Value;
    totalbagpos:=totalbagpos+flyform.fly_pos.fieldbyname('bagpos').Value;

     flyform.newlogit.ParamByName('log_id').value:=flyform.newlog.ParamByName('n_id').Value;
     flyform.newlogit.ParamByName('logcontent').Value:=flyform.fly_pos.FieldByName('packtypename').AsString;
     flyform.newlogit.ParamByName('poscount').value:=flyform.fly_pos.FieldByName('poscount').Value;
     flyform.newlogit.ParamByName('posweight').value:=flyform.fly_pos.FieldByName('posweight').Value;
     flyform.newlogit.ParamByName('posprice').value:=flyform.fly_pos.FieldByName('posprice').Value;
     flyform.newlogit.ParamByName('bagpos').value:=flyform.fly_pos.FieldByName('bagpos').Value;
     flyform.newlogit.ParamByName('liorder').value:=1;
     flyform.newlogit.Prepare;
     flyform.newlogit.ExecProc;

     flyform.updatetransportpos.ParamByName('ot_id').Value:=flyform.newitem.ParamByName('new_id').Value;
     flyform.updatetransportpos.ParamByName('packtype2').Value:=flyform.fly_pos.FieldByName('packtype_id').Value;
     flyform.updatetransportpos.ParamByName('packtype1').Value:=price.packtypes.FieldByName('packtype_id').Value;
     flyform.updatetransportpos.Prepare;
     flyform.updatetransportpos.ExecQuery;


    flyform.delorditems.ParamByName('id').Value:=flyform.fly_pos.fieldbyname('id').Value;
    flyform.delorditems.ParamByName('ord_id').Value:=current_fly;
    flyform.delorditems.ParamByName('packtype_id').Value:=flyform.fly_pos.fieldbyname('packtype_id').Value;
    flyform.delorditems.ParamByName('trans_id').Value:=flyform.flylist.fieldbyname('trans_id').Value;
    flyform.delorditems.ParamByName('oper').Value:=3;
    flyform.delorditems.Prepare;
    flyform.delorditems.ExecProc;
   end;

     //flyform.newitem.ParamByName('unittype').Value:=integer(integer(punitcombo.Items.Objects[punitcombo.ItemIndex]));
     flyform.newlogit.ParamByName('log_id').value:=flyform.newlog.ParamByName('n_id').Value;
     flyform.newlogit.ParamByName('logcontent').Value:=price.packtypes.FieldByName('packtypename').AsString;
     flyform.newlogit.ParamByName('poscount').value:=totalpos;
     flyform.newlogit.ParamByName('posweight').value:=totalweight;
     flyform.newlogit.ParamByName('posprice').value:=strtofloat(edit4.Text);
     flyform.newlogit.ParamByName('bagpos').value:=totalbagpos;
     flyform.newlogit.ParamByName('liorder').value:=2;
     flyform.newlogit.Prepare;
     flyform.newlogit.ExecProc;






     flyform.helper.First;
      while (not flyform.helper.Eof) do
       begin
        flyform.newtm.ParamByName('orditem_id').Value:=flyform.newitem.parambyname('new_id').Value;
        flyform.newtm.ParamByName('tm_id').Value:=flyform.helper.fields[1].value;
        flyform.newtm.ParamByName('packkol').Value:=flyform.helper.fields[0].value;
        flyform.newtm.Prepare;
        flyform.newtm.ExecProc;
        flyform.helper.Next;
       end;
       flyform.helper.Active:=false;

       flyform.recalctm.ParamByName('orditem_id').Value:=flyform.newitem.parambyname('new_id').Value;
       flyform.recalctm.Prepare;
       flyform.recalctm.ExecProc;

       flyform.upd_fly.ParamByName('ord_id').Value:=current_fly;
       flyform.upd_fly.prepare;
       flyform.upd_fly.execproc;

     flyform.flytran.CommitRetaining;
     flyform.flytran.Active:=false;
     flyform.flytran.Active:=true;
     flyform.fly_pos.Active:=true;
     flyform.flylist.Active:=true;
     flyform.filterprop.ParamByName('ord_id').Value:=current_fly;
     flyform.filterprop.Active:=true;
     flyform.setfilter(current_fly);
     flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);
     flyform.fly_pos.Locate('id', inttostr(flyform.newitem.parambyname('new_id').Value), [loCaseInsensitive ,loPartialKey]);
     if flyform.tmgrid.Visible then
      flyform.tmquery.Active:=true;

    close;
   end;

if opener_price_type=6
     then
      begin

bmark:=flyform.fly_pos_grid.DataSource.DataSet.GetBookmark;
flyform.fly_pos_grid.DataSource.DataSet.DisableControls;
bmark1:=flyform.fly_grid.DataSource.DataSet.GetBookmark;
flyform.fly_grid.DataSource.DataSet.DisableControls;

 //  flyform.newitem.ParamByName('unittype').Value:=integer(integer(punitcombo.Items.Objects[punitcombo.ItemIndex]));

 flyform.newlog.Prepare;
 flyform.newlog.ExecProc;

 flyform.newlogit.ParamByName('log_id').value:=flyform.newlog.ParamByName('n_id').Value;
 flyform.newlogit.ParamByName('logcontent').Value:=flyform.fly_pos.FieldByName('packtypename').AsString;
 flyform.newlogit.ParamByName('poscount').value:=flyform.fly_pos.FieldByName('poscount').Value;
 flyform.newlogit.ParamByName('posweight').value:=flyform.fly_pos.FieldByName('posweight').Value;
 flyform.newlogit.ParamByName('posprice').value:=flyform.fly_pos.FieldByName('posprice').Value;
 flyform.newlogit.ParamByName('bagpos').value:=flyform.fly_pos.FieldByName('bagpos').Value;
 flyform.newlogit.ParamByName('liorder').value:=1;
 flyform.newlogit.Prepare;
 flyform.newlogit.ExecProc;


 flyform.newlogit.ParamByName('log_id').value:=flyform.newlog.ParamByName('n_id').Value;
 flyform.newlogit.ParamByName('logcontent').Value:=edit5.text;
 flyform.newlogit.ParamByName('poscount').Value:=strtofloat(edit1.Text);
 flyform.newlogit.ParamByName('posweight').Value:=strtofloat(edit3.Text);
 flyform.newlogit.ParamByName('posprice').Value:=strtofloat(edit4.Text);
 flyform.newlogit.ParamByName('bagpos').Value:=strtoint(bagpos.Text);
 flyform.newlogit.ParamByName('liorder').Value:=2;
 flyform.newlogit.Prepare;
 flyform.newlogit.ExecProc;

 flyform.newitem.ParamByName('poskol').Value:=0;
 flyform.newitem.ParamByName('unittype_id').Value:=price.packtypes.FieldByName('unittype_id').Value;
 flyform.newitem.ParamByName('price').Value:=strtofloat(edit4.Text);
 flyform.newitem.ParamByName('totalprice').Value:=strtofloat(edit2.Text);
 flyform.newitem.ParamByName('price_weight').Value:=strtofloat(posprice_weight.Text);
 flyform.newitem.ParamByName('price_inv').Value:=strtofloat(price_inv.Text);
 flyform.newitem.Prepare;
 flyform.newitem.ExecProc;

 flyform.upd_fly.ParamByName('ord_id').Value:=current_fly;
 flyform.upd_fly.prepare;
 flyform.upd_fly.execproc;

 flyform.updatetransportpos.ParamByName('ot_id').Value:=flyform.fly_pos.FieldByName('id').Value;
 flyform.updatetransportpos.ParamByName('packtype1').Value:=price.packtypes.FieldByName('packtype_id').Value;
 flyform.updatetransportpos.Prepare;
 flyform.updatetransportpos.ExecQuery;

 flyform.flytran.CommitRetaining;


 flyform.flytran.Active:=false;
 flyform.flytran.Active:=true;
 flyform.fly_pos.Active:=true;
 flyform.flylist.Active:=true;
 flyform.filterprop.ParamByName('ord_id').Value:=current_fly;
 flyform.filterprop.Active:=true;
 flyform.setfilter(current_fly);


 flyform.fly_pos_grid.DataSource.DataSet.GotoBookmark(bmark);
 flyform.fly_pos_grid.DataSource.DataSet.FreeBookmark(bmark);
 flyform.fly_pos_grid.DataSource.DataSet.EnableControls;
 flyform.fly_grid.DataSource.DataSet.GotoBookmark(bmark1);
 flyform.fly_grid.DataSource.DataSet.FreeBookmark(bmark1);
 flyform.fly_grid.DataSource.DataSet.EnableControls;
 flyform.fly_pos.Locate('id',inttostr(flyform.fly_pos.fieldbyname('id').Value), [loCaseInsensitive ,loPartialKey]);
 flyform.flylist.Locate('ord_id',inttostr(current_fly), [loCaseInsensitive ,loPartialKey]);

  if flyform.tmgrid.Visible then
   flyform.tmquery.Active:=true;

 close;

      end;
 end;
screen.Cursor:=crDefault;
 end;

procedure Taddpackingform.punitcomboSelect(Sender: TObject);
begin

//label4.Caption:=inttostr(integer(integer(punitcombo.Items.Objects[punitcombo.ItemIndex])));
end;

procedure Taddpackingform.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  s: string;
begin

if key=vk_return then
 //SpeedButton1Click(speedbutton1);
 begin
 edit4.SetFocus;
 speedbutton1.Enabled:=true;
 end;
{if key=vk_back
 then
  begin
   s:=edit1.Text;
   delete(s,length(s)-1,1);
   edit1.Text:=s;
   edit1.SendToBack;
  end; }


end;

procedure Taddpackingform.punitcomboKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 edit3.SetFocus;
end;

procedure Taddpackingform.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if key=vk_return then
 nweight.SetFocus
  else
 speedbutton1.Enabled:=true;
  
end;

procedure Taddpackingform.punitcomboChange(Sender: TObject);
begin
 edit3.SetFocus;
end;

procedure Taddpackingform.Edit1Change(Sender: TObject);
begin
 CulcSumm;

end;

procedure Taddpackingform.Edit4Change(Sender: TObject);
begin
 CulcSumm;
 CulcSumm2;
end;

procedure Taddpackingform.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_return then
 //SpeedButton1Click(speedbutton1);
    posprice_weight.SetFocus;
end;

procedure Taddpackingform.Edit4KeyPress(Sender: TObject; var Key: Char);
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

procedure Taddpackingform.Edit1KeyPress(Sender: TObject; var Key: Char);
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
 //CulcSumm;
end;

procedure Taddpackingform.Edit3KeyPress(Sender: TObject; var Key: Char);
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

procedure Taddpackingform.bagposKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
  begin
   if ord(key)<>vk_back then
    begin
     key:=#0;
     beep;
    end;
  end;
end;

procedure Taddpackingform.bagposKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key=vk_return
   then
    if speedbutton1.Enabled then
      SpeedButton1Click(speedbutton1)
    else
      SpeedButton1Click(speedbutton1)
  else
    speedbutton1.Enabled:=true;
end;

procedure Taddpackingform.dxEdit1Change(Sender: TObject);
begin
  if (edit1.Text<>'') and (edit4.Text<>'')
  then
 edit2.Text:=floattostr(strtofloat(edit1.Text)*strtofloat(edit4.Text))
 else
  edit2.Text:='0';
 // speedbutton1.Enabled:=true;
end;

procedure Taddpackingform.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if key=vk_return then
  begin
 //SpeedButton1Click(speedbutton1);
 edit3.SetFocus;
 speedbutton1.Enabled:=true;
  end;
end;

procedure Taddpackingform.dxEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in ['0'..'9',',','.']) then
begin
key:=#0;
beep;
end;
 if key='.' then key:=',';
end;

procedure Taddpackingform.Action1Execute(Sender: TObject);
begin
 addpackingform.Close;
end;

procedure Taddpackingform.CulcSumm2();
var
   count,duty,load,curs,nds,weight,nettoweight, koef: double;
   f2symb: string;
 begin
 {}
 load:=packtypes.FieldByName('load').Value;
 duty:=packtypes.FieldByName('duty').Value;
 curs:=flyform.flylist.FieldByName('curs').Value;
 nds:=flyform.flylist.FieldByName('nds').Value;


if (not nweight2.Focused) then
begin

  koef := 0.15;
  f2symb := Copy(packtypes.FieldByName('oemcode').AsString, 1, 2);
  if(f2symb = '64') then
  begin
    koef :=  0.177;
  end;
  nweight2.Text:= floattostr(roundto(strtofloat(posweight2.Text)-koef*strtofloat(posweight2.Text)+0.1,0));

 end;



  if (poscount2.Text<>'') and (edit4.Text<>'')
  then begin

  if strtofloat(posprice_weight.Text)<>0 then
    count:=strtofloat(nweight2.Text)
   else
    count:=strtofloat(poscount2.Text);

   if strtofloat(posprice_weight.Text)<>0 then
    begin
     totalsumm2.Text:=floattostr(strtofloat(posprice_weight.Text)*count);
    end
    else
     begin
     totalsumm2.Text:=floattostr(strtofloat(edit4.Text)*count);
     end;

  if strtofloat(poscount2.Text)<>0 then
    price_inv2.Text:=floattostr(roundto(strtofloat(totalsumm2.Text)/strtofloat(poscount2.Text),-2));

  if unitcom.ItemIndex=1 then
      totalsumm2.Text:=floattostr(strtofloat(posprice_weight.Text)*strtofloat(nweight2.Text))
     else
      totalsumm2.Text:=floattostr(strtofloat(price_inv2.Text)*strtofloat(poscount2.text));

  end
 else
  begin
   totalsumm2.Text:='0';
  end;

   if addpackingform.Showing then
    begin

 if    trim(posweight2.Text)<>'' then
  weight:=strtofloat(posweight2.Text)
  else
  weight:=0;

 nettoweight:=strtofloat(nweight2.Text);

 if (weight<>0) and (trim(posweight2.Text)<>'') then
  label20.Caption:=floattostr(roundto((weight-nettoweight)/weight*100,-1))+'%'
 else
   label20.Caption:='0 %'

   end;

 {}
end;
procedure Taddpackingform.CulcSumm();
  var
   count,duty,load,curs,nds,weight,nettoweight, koef: double;
   f2symb: string;
 begin
 {}
 load:=packtypes.FieldByName('load').Value;
 duty:=packtypes.FieldByName('duty').Value;
 curs:=flyform.flylist.FieldByName('curs').Value;
 nds:=flyform.flylist.FieldByName('nds').Value;


  koef := 0.15;
  f2symb := Copy(packtypes.FieldByName('oemcode').AsString, 1, 2);
  if(f2symb = '64') then
  begin
     koef :=  0.177;
  end;

if (not nweight.Focused) and (not edit1.Focused) then
begin

  nweight.Text:= floattostr(roundto(strtofloat(edit3.Text) - koef * strtofloat(edit3.Text)+0.1,0));

  weight:=strtofloat(edit3.Text);
  nettoweight:=strtofloat(nweight.Text);
  if (weight<>0) and (trim(edit3.Text)<>'') then
       label12.Caption:=floattostr(roundto((weight-nettoweight)/weight*100,-1))+'%'
  else
      label12.Caption:='0 %';
//     ShowMessage(nweight.Text);


  if (edit1.Text<>'') and (edit4.Text<>'')
  then begin

  if strtofloat(posprice_weight.Text)<>0 then
    count:=strtofloat(nweight.Text)
   else
    count:=strtofloat(edit1.Text);


   if strtofloat(posprice_weight.Text)<>0 then
    begin
     edit2.Text:=floattostr(strtofloat(posprice_weight.Text)*count);
    end
    else
     begin
     edit2.Text:=floattostr(strtofloat(edit4.Text)*count);
     end;

  if strtofloat(edit1.Text)<>0 then
    price_inv.Text:=floattostr(roundto(strtofloat(edit2.Text)/strtofloat(edit1.Text),-2));

  if unitcom.ItemIndex=1 then
      edit2.Text:=floattostr(strtofloat(posprice_weight.Text)*strtofloat(nweight.Text))
     else
      edit2.Text:=floattostr(strtofloat(price_inv.Text)*strtofloat(edit1.text));

  end
 else
  begin
   edit2.Text:='0';
  end;

 end;

   if addpackingform.Showing then
   begin
       if trim(edit3.Text)<>'' then
          weight:=strtofloat(edit3.Text)
       else
          weight:=0;

       nettoweight:=strtofloat(nweight.Text);

       if (weight<>0) and (trim(edit3.Text)<>'') then
           label12.Caption:=floattostr(roundto((weight-nettoweight)/weight*100,-1))+'%'
       else
           label12.Caption:='0 %'
   end;

end;

procedure Taddpackingform.Edit3Change(Sender: TObject);
begin
//speedbutton1.Enabled:=true;
    CulcSumm;
end;



procedure Taddpackingform.bagposChange(Sender: TObject);
begin
//speedbutton1.Enabled:=true;
CulcSumm;
end;

procedure Taddpackingform.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 speedbutton1.Enabled:=true;
end;

procedure Taddpackingform.price_inv2Change(Sender: TObject);
begin
 CulcSumm2;
end;

procedure Taddpackingform.price_inv2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
   begin
    totalsumm2.SetFocus;
    speedbutton1.Enabled:=true;
 end;
end;

procedure Taddpackingform.price_inv2KeyPress(Sender: TObject; var Key: Char);
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

procedure Taddpackingform.price_invKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
   bagpos.SetFocus;
end;

procedure Taddpackingform.price_invKeyPress(Sender: TObject; var Key: Char);
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

procedure Taddpackingform.poscount2Change(Sender: TObject);
begin
CulcSumm2;
end;

procedure Taddpackingform.poscount2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
   begin
    posweight2.SetFocus;
    speedbutton1.Enabled:=true;
 end;
end;

procedure Taddpackingform.poscount2KeyPress(Sender: TObject; var Key: Char);
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

procedure Taddpackingform.posprice_weightChange(Sender: TObject);
begin
 CulcSumm;
 CulcSumm2;
end;

procedure Taddpackingform.posprice_weightKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
 //SpeedButton1Click(speedbutton1);
 edit3.SetFocus;
end;

procedure Taddpackingform.posprice_weightKeyPress(Sender: TObject; var Key: Char);
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

procedure Taddpackingform.posweight2Change(Sender: TObject);
begin
CulcSumm2;
end;

procedure Taddpackingform.posweight2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
   begin
    nweight2.SetFocus;
    speedbutton1.Enabled:=true;
 end;
end;

procedure Taddpackingform.posweight2KeyPress(Sender: TObject; var Key: Char);
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

end.
