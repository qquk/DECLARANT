unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, DBCtrls, ExtCtrls,
  ToolWin, ComCtrls, Buttons, ActnList, XPStyleActnCtrls, ActnMan;

type
  Tpackingform = class(TForm)
    packtypes: TIBQuery;
    IBQuery2: TIBQuery;
    DataSource1: TDataSource;
    CoolBar1: TCoolBar;
    Panel1: TPanel;
    Panel2: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Edit1: TEdit;
    Panel3: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    ActionManager1: TActionManager;
    Action1: TAction;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure punitcomboSelect(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  packingform: Tpackingform;
  unittype_id: integer;
  notchangeunittype: boolean;
implementation

uses dmunit, BagPosUnit;

{$R *.dfm}

procedure Tpackingform.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tpackingform.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure Tpackingform.FormShow(Sender: TObject);
begin
if bagpos.addpacking.ParamByName('oper').Value=3 then
 edit4.SetFocus
 else
edit1.SetFocus;
end;

procedure Tpackingform.SpeedButton1Click(Sender: TObject);
begin

if bagpos.addpacking.ParamByName('oper').Value=3 then
 bagpos.addpacking.ParamByName('ptname').Value:=edit4.Text;

 bagpos.addpacking.ParamByName('packkol').Value:=strtoint(edit1.Text);
 bagpos.addpacking.ParamByName('tmname').asstring:=edit2.Text;
 bagpos.addpacking.Prepare;
 bagpos.addpacking.ExecProc;
 dm.IBTransaction2.CommitRetaining;
 bagpos.ibquery1.Active:=false;
 bagpos.ibquery1.Active:=true;
 bagpos.packing.Active:=false;
 bagpos.packing.Active:=true;
 close;


 end;

procedure Tpackingform.punitcomboSelect(Sender: TObject);
begin

//label4.Caption:=inttostr(integer(integer(punitcombo.Items.Objects[punitcombo.ItemIndex])));
end;

procedure Tpackingform.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
  edit2.SetFocus;
  edit2.SelectAll;
 //SpeedButton1Click(speedbutton1);
end;

procedure Tpackingform.Edit1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tpackingform.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
   SpeedButton1Click(speedbutton1);
end;

procedure Tpackingform.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if (length(edit2.Text) > 51) then
  begin
    key:=#0;
    beep;
  end;
end;

procedure Tpackingform.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 SpeedButton1Click(speedbutton1);
end;

procedure Tpackingform.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  edit1.SetFocus;
  edit1.SelectAll;
end;

procedure Tpackingform.Action1Execute(Sender: TObject);
begin
 close;
end;

end.
