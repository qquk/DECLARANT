unit NewZaklUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ActnMan, ActnCtrls,
  XPStyleActnCtrls, ActnList, ToolWin, ComCtrls, Mask, DB, IBCustomDataSet,
  IBQuery;

type
  Tzaklpos = class(TForm)
    CoolBar1: TCoolBar;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    DBText2: TDBText;
    packname: TLabeledEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    safe: TAction;
    exit: TAction;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Label6: TLabel;
    price: TLabeledEdit;
    oemcode: TEdit;
    Label8: TLabel;
    zakl_name: TLabeledEdit;
    zakl_dog: TLabeledEdit;
    Label1: TLabel;
    zakl_date: TDateTimePicker;
    town_com1: TComboBox;
    punitcombo: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    procedure exitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure safeExecute(Sender: TObject);
    procedure oemcodeKeyPress(Sender: TObject; var Key: Char);
    procedure packpriceKeyPress(Sender: TObject; var Key: Char);
    procedure packnameChange(Sender: TObject);
    procedure dxEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure priceKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zaklpos: Tzaklpos;

implementation

uses dmunit, PriceUnit, ZaklListUnit;

{$R *.dfm}

procedure Tzaklpos.exitExecute(Sender: TObject);
begin
zaklpos.close;
end;

procedure Tzaklpos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure Tzaklpos.safeExecute(Sender: TObject);
 var
   BMark: TBookmark;
begin
 if ((trim(oemcode.text)='') or (trim(packname.Text)='') or (trim(packname.Text)='') or (trim(zakl_name.Text)='') or (trim(zakl_dog.Text)=''))
  then
   begin
    showmessage('Заполните все поля ввода');
   end
  else
   begin
    dm.newzaklpos.ParamByName('packtypename').asstring:=packname.Text;
    dm.newzaklpos.ParamByName('createdate').value:=now();
    dm.newzaklpos.ParamByName('oemcode').asstring:=oemcode.Text;
    dm.newzaklpos.ParamByName('packprice').asfloat:=strtofloat(price.Text);
    dm.newzaklpos.ParamByName('cust_id').asinteger:=integer(integer(town_com1.Items.Objects[town_com1.ItemIndex]));
    dm.newzaklpos.ParamByName('oemcode_long').asstring:=oemcode.Text;
    dm.newzaklpos.ParamByName('unittype_id').asinteger:=integer(integer(punitcombo.Items.Objects[punitcombo.ItemIndex]));
    dm.newzaklpos.ParamByName('zakl_name').asstring:=zakl_name.Text;
    dm.newzaklpos.ParamByName('zakl_dog').asstring:=zakl_dog.Text;
    dm.newzaklpos.ParamByName('zakl_date').asstring:=datetostr(zakl_date.Date);

    dm.newzaklpos.Prepare;
    dm.newzaklpos.ExecProc;
    dm.IBTransaction2.CommitRetaining;
    zakl.packtypes.Active:=false;
    zakl.packtypes.Active:=true;
    close;
    end;
{}
{}


end;

procedure Tzaklpos.oemcodeKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then
begin
key:=#0;
beep;
end;
end;

procedure Tzaklpos.packpriceKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',',','.']) then
begin
key:=#0;
beep;
end;
 if key=',' then key:='.';
end;

procedure Tzaklpos.packnameChange(Sender: TObject);
begin
if packname.Text<>'' then actionmanager1.ActionBars[0].Items[0].Visible:=true
 else actionmanager1.ActionBars[0].Items[0].Visible:=false;
end;



procedure Tzaklpos.dxEdit1KeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in ['0'..'9',',','.']) then
begin
key:=#0;
beep;
end;
 if key='.' then key:=',';

 end;

procedure Tzaklpos.priceKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9',',','.']) then
begin
key:=#0;
beep;
end;
 if key='.' then key:=',';  
end;

end.
