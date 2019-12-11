unit PricePosUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ActnMan, ActnCtrls,
  XPStyleActnCtrls, ActnList, ToolWin, ComCtrls, Mask, DB, IBCustomDataSet,
  IBQuery;

type
  Tpackpos = class(TForm)
    CoolBar1: TCoolBar;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    packname: TLabeledEdit;
    safe: TAction;
    exit: TAction;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cust_com: TComboBox;
    Label8: TLabel;
    ptitle: TLabeledEdit;
    oemcode: TEdit;
    packprice: TEdit;
    title_ch: TLabeledEdit;
    Label3: TLabel;
    unitcom: TComboBox;
    Label4: TLabel;
    duty: TEdit;
    Label9: TLabel;
    load: TEdit;
    packprice_weight: TEdit;
    Label10: TLabel;
    packtypename_long: TLabeledEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    sertcom: TComboBox;
    Label11: TLabel;
    custsumm: TEdit;
    Label12: TLabel;
    procedure exitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure safeExecute(Sender: TObject);
    procedure oemcodeKeyPress(Sender: TObject; var Key: Char);
    procedure packpriceKeyPress(Sender: TObject; var Key: Char);
    procedure packnameChange(Sender: TObject);
    procedure dxEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure packpriceEnter(Sender: TObject);
    procedure dutyKeyPress(Sender: TObject; var Key: Char);
    procedure loadKeyPress(Sender: TObject; var Key: Char);
    procedure dutyEnter(Sender: TObject);
    procedure loadEnter(Sender: TObject);
    procedure packpriceExit(Sender: TObject);
    procedure dutyExit(Sender: TObject);
    procedure loadExit(Sender: TObject);
    procedure packprice_weightKeyPress(Sender: TObject; var Key: Char);
    procedure custsummKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  packpos: Tpackpos;

implementation

uses dmunit,PriceUnit;

{$R *.dfm}

procedure Tpackpos.exitExecute(Sender: TObject);
begin
packpos.close;
end;

procedure Tpackpos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure Tpackpos.loadEnter(Sender: TObject);
begin
//  Tedit(sender).Alignment:=taLeftJustify;
end;

procedure Tpackpos.loadExit(Sender: TObject);
begin
//  Tedit(sender).Alignment:=taRightJustify;
end;

procedure Tpackpos.loadKeyPress(Sender: TObject; var Key: Char);
begin if not (key in ['0'..'9',',','.']) then
begin
if ord(key)<>vk_back then
    begin
      key:=#0;
      beep;
    end;
end;
 if key='.' then key:=',';
end;

procedure Tpackpos.safeExecute(Sender: TObject);
 var
   BMark: TBookmark;
begin


{}
Bmark:=price.dbgrid1.DataSource.DataSet.GetBookmark;
price.dbgrid1.DataSource.DataSet.DisableControls;



if packname.Text<>'' then
 begin
  if
   label6.Caption='change'
  then
   begin
  price.chpack.ParamByName('packtype_id').value:=price.packtypes.fieldbyname('packtype_id').Value;
  price.chpack.ParamByName('ptp_id').value:=price.packtypes.fieldbyname('ptp_id').Value;
  price.chpack.ParamByName('packtypename').AsString:=trim(packname.Text);
  price.chpack.ParamByName('createdate').AsDate:=now();
  price.chpack.ParamByName('oemcode').AsString:=trim(oemcode.Text);
  price.chpack.ParamByName('packprice').value:=Strtofloat(packprice.Text);
  price.chpack.ParamByName('duty').value:=strtofloat(duty.Text);
  price.chpack.ParamByName('load').value:=strtofloat(load.Text);
  price.chpack.ParamByName('packprice_weight').value:=Strtofloat(packprice_weight.Text);
  price.chpack.ParamByName('packprice_cust').value:=Strtofloat(custsumm.Text);
  price.chpack.ParamByName('packtypename_long').AsString:=trim(packtypename_long.Text);
  price.chpack.ParamByName('packtypename_ch').AsString:=trim(title_ch.Text);
  price.chpack.ParamByName('user_id').value:=user_id_global;

  if sertcom.ItemIndex=0 then
   price.chpack.ParamByName('sert').value:=1
   else
  price.chpack.ParamByName('sert').value:=0;


  if price.pg1.ActivePageIndex=1 then
   price.chpack.ParamByName('cust_id').asinteger:=-1
  else
  price.chpack.ParamByName('cust_id').asinteger:=integer(integer(cust_com.Items.Objects[cust_com.ItemIndex]));

  price.chpack.ParamByName('unittype_id').AsInteger:=integer(integer(unitcom.Items.Objects[unitcom.ItemIndex]));

  price.chpack.ParamByName('ptitle').AsString:=trim(ptitle.Text);
  price.chpack.Prepare;
  price.chpack.ExecProc;
   end
   else
   begin
  price.newpack.Params[0].Value:=trim(packname.Text);
  price.newpack.Params[1].Value:=now();
  price.newpack.Params[2].Value:=trim(oemcode.Text);
  price.newpack.Params[3].AsFloat:=strtofloat(packprice.Text);
  price.newpack.ParamByName('duty').value:=strtofloat(duty.Text);
  price.newpack.ParamByName('load').value:=strtofloat(load.Text);
  price.newpack.ParamByName('packprice_weight').value:=Strtofloat(packprice_weight.Text);
  price.newpack.ParamByName('packprice_cust').value:=Strtofloat(custsumm.Text);
  price.newpack.ParamByName('packtypename_long').AsString:=trim(packtypename_long.Text);
  price.newpack.ParamByName('packtypename_ch').AsString:=trim(title_ch.Text);
  price.newpack.ParamByName('user_id').value:=user_id_global;

  if sertcom.ItemIndex=0 then
   price.newpack.ParamByName('sert').value:=1
   else
  price.newpack.ParamByName('sert').value:=0;


  if price.pg1.ActivePageIndex=1 then
   price.newpack.ParamByName('cust_id').asinteger:=-1
  else
  price.newpack.ParamByName('cust_id').asinteger:=integer(integer(cust_com.Items.Objects[cust_com.ItemIndex]));

  if price.pg1.ActivePageIndex=1 then
   price.newpack.ParamByName('cnf_id').asinteger:=-1
  else
  price.newpack.ParamByName('cnf_id').Value:=dm.config.fieldByname('cnf_id').Value;

  price.newpack.ParamByName('unittype_id').AsInteger:=integer(integer(unitcom.Items.Objects[unitcom.ItemIndex]));
  price.newpack.ParamByName('ptitle').AsString:=trim(ptitle.Text);
  price.newpack.Prepare;
  price.newpack.ExecProc;
  end;
 price.pricetran.CommitRetaining;
 price.pricetran.Active:=false;
 price.pricetran.Active:=true;
 price.packtypes.Active:=true;
 price.dbgrid1.DataSource.DataSet.GotoBookmark(bmark);
 price.dbgrid1.DataSource.DataSet.FreeBookmark(bmark);
 price.dbgrid1.DataSource.DataSet.EnableControls;
 packpos.Close;

end;
end;

procedure Tpackpos.oemcodeKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then
 begin
  key:=#0;
  beep;
 end;
end;

procedure Tpackpos.packpriceEnter(Sender: TObject);
begin
//packprice.Alignment:=taLeftJustify;
end;

procedure Tpackpos.packpriceExit(Sender: TObject);
begin
 Tedit(sender).Alignment:=taRightJustify;
end;

procedure Tpackpos.packpriceKeyPress(Sender: TObject; var Key: Char);
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

procedure Tpackpos.packnameChange(Sender: TObject);
begin
if packname.Text<>'' then actionmanager1.ActionBars[0].Items[0].Visible:=true
 else actionmanager1.ActionBars[0].Items[0].Visible:=false;
end;



procedure Tpackpos.custsummKeyPress(Sender: TObject; var Key: Char);
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

procedure Tpackpos.dutyEnter(Sender: TObject);
begin
// Tedit(sender).Alignment:=taLeftJustify;
 duty.SelectAll;

end;

procedure Tpackpos.dutyExit(Sender: TObject);
begin
//  Tedit(sender).Alignment:=taRightJustify;
end;

procedure Tpackpos.dutyKeyPress(Sender: TObject; var Key: Char);
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

procedure Tpackpos.dxEdit1KeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in ['0'..'9',',','.']) then
begin
key:=#0;
beep;
end;
 if key='.' then key:=',';

 end;

procedure Tpackpos.packprice_weightKeyPress(Sender: TObject; var Key: Char);
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
