unit setformunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls,StdCtrls, Grids,
  DBGrids, ExtCtrls, ComCtrls, IBSQL, ActnList, ToolWin, ActnMan,
  ActnCtrls, DB, IBCustomDataSet, IBQuery, IBStoredProc,
  IBTable, ImgList, XPStyleActnCtrls,comobj, Menus;

type
  Tsetform = class(TForm)
    ActionManager1: TActionManager;
    dstariff: TDataSource;
    ttariff: TIBQuery;
    culctypes: TIBQuery;
    dsculctypes: TDataSource;
    newtarif: TIBStoredProc;
    qupdate: TIBSQL;
    dsus: TDataSource;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    newus: TIBStoredProc;
    Panel1: TPanel;
    CoolBar1: TCoolBar;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    users: TIBQuery;
    new: TAction;
    SpeedButton1: TSpeedButton;
    Bevel1: TBevel;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    usertypes: TComboBox;
    Label8: TLabel;
    usersUSER_ID: TIntegerField;
    usersUSERNAME: TIBStringField;
    usersUSERPASS: TIBStringField;
    usersUSERLEVELS: TIntegerField;
    usersUTNAME: TIBStringField;
    ustypes: TIBQuery;
    ustypesID: TIntegerField;
    ustypesUTNAME: TIBStringField;
    Bevel2: TBevel;
    saveuser: TAction;
    savebut: TSpeedButton;
    newbut: TSpeedButton;
    delbut: TSpeedButton;
    sql: TIBSQL;
    usersUSERSTATUS: TSmallintField;
    upduser: TIBStoredProc;
    CheckBox1: TCheckBox;
    statuscheck: TCheckBox;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    ImageList1: TImageList;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    StaticText1: TStaticText;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    config: TIBQuery;
    configCNF_ID: TIntegerField;
    configCNFNAME: TIBStringField;
    configCNFNOTE: TIBStringField;
    configCREATEDATE: TDateTimeField;
    configDIV_ID: TIntegerField;
    configBLOCK: TSmallintField;
    dsconfig: TDataSource;
    cnfuser: TIBQuery;
    cnfuserUSER_ID: TIntegerField;
    cnfuserUSERNAME: TIBStringField;
    cnfuserUSERPASS: TIBStringField;
    cnfuserUSERLEVELS: TIntegerField;
    cnfuserUSERSTATUS: TSmallintField;
    cnfuserID: TIntegerField;
    dscnfusers: TDataSource;
    userall: TIBQuery;
    dsusall: TDataSource;
    userallUSER_ID: TIntegerField;
    userallUSERNAME: TIBStringField;
    userallUSERPASS: TIBStringField;
    userallUSERLEVELS: TIntegerField;
    userallUSERSTATUS: TSmallintField;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel10: TPanel;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    addcnfuser: TIBStoredProc;
    SpeedButton5: TSpeedButton;
    Splitter1: TSplitter;
    showdelcncheck: TCheckBox;
    userpass: TEdit;
    username: TEdit;
    od: TOpenDialog;
    proc1: TIBStoredProc;
    proc2: TIBStoredProc;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    regions: TIBTable;
    DataSource3: TDataSource;
    IBTable2: TIBTable;
    DataSource4: TDataSource;
    IBTable3: TIBTable;
    IBTable4: TIBTable;
    DataSource5: TDataSource;
    PopupMenu1: TPopupMenu;
    n1: TMenuItem;
    TabSheet2: TTabSheet;
    DBGrid5: TDBGrid;
    IBTable5: TIBTable;
    DataSource6: TDataSource;
    DBGrid6: TDBGrid;
    oemcode1: TIBTable;
    dsOemcode1: TDataSource;
    oemcode2: TIBTable;
    dsOemcode2: TDataSource;
    oemcode3: TIBTable;
    dsOemcode3: TDataSource;
    usert: TIBTable;
    usertDs: TDataSource;
    procedure x2KeyPress2(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Action1Execute(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    function ReplaceStr(const S, Srch, Replace: string): string;
    procedure Button1Click(Sender: TObject);
    procedure newExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure usernameChange(Sender: TObject);
    procedure userpassChange(Sender: TObject);
    procedure usertypesChange(Sender: TObject);
    procedure saveuserExecute(Sender: TObject);
    procedure savebutClick(Sender: TObject);
    procedure newbutClick(Sender: TObject);
    procedure delbutClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure statuscheckClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure showdelcncheckClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure n1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setform: Tsetform;
  pagenumber: Integer;
  actiontype: Smallint; // Изменить 1 или добавить 2
implementation

uses dmunit, newconfunit, MainUnit;

{$R *.dfm}
function tsetform.ReplaceStr(const S, Srch, Replace: string): string;

 var
 I: Integer;
 Source: string;
 begin
 Source := S;
 Result := '';
 repeat
  I := Pos(Srch, Source);
  if I <> 0 then
  begin
  Result := Result + Copy(Source, 1, I - 1) + Replace;
  Source := Copy(Source, I + Length(Srch), MaxInt);
  end
  else
  Result := Result + Source;
 until I=0;
 end;

procedure Tsetform.x2KeyPress2(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9', '.',',']) then
begin
key:=#0;
beep;
end;
if key='.' then key:=',';
end;

procedure Tsetform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.towns.Active:=false;
dm.divlist.Active:=false;
action:=cafree;

end;

procedure Tsetform.SpeedButton1Click(Sender: TObject);
var last_id: integer;
begin
 if (pagenumber=1)
  then begin
 pagenumber:=2;
 SpeedButton1.Caption:='Список';
 actiontype:=1;
 username.Text:=users.fieldbyname('username').AsString;
 userpass.Text:=users.fieldbyname('userpass').AsString;
 usertypes.ItemIndex:=usertypes.Items.IndexOfObject(pointer(integer(users.FieldByName('userlevels').Value)));
 DBNavigator1.Enabled:=false;
 panel3.Align:=alclient;
 panel3.Visible:=true;
 delbut.Enabled:=false;
 DBGrid1.Visible:=false;
 savebut.Enabled:=false;
 CheckBox1.Visible:=false;
 if users.FieldByName('userstatus').Value=0
  then
   statuscheck.Checked:=true
  else
   statuscheck.Checked:=false;

  end
   else
  begin
 pagenumber:=1;
 SpeedButton1.Caption:='Карточка';
 savebut.Enabled:=false;
 delbut.Enabled:=true;
 CheckBox1.Visible:=true;
 DBNavigator1.Enabled:=true;
 panel3.Align:=alclient;
 panel3.Visible:=false;
 users.Active:=false;
 users.Active:=true;
 DBGrid1.Visible:=true;
  end;


end;

procedure Tsetform.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
IF  gdSelected   IN State
	Then Begin
   if users.FieldByName('userstatus').Value=1 then
    TDBGrid(Sender).Canvas.Brush.Color:= RGB(216,216,216)
   else
    TDBGrid(Sender).Canvas.Brush.Color:= RGB(192,212,239);

	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   //TDBGrid(Sender).Canvas.Font.Size:=10;

    if users.FieldByName('userstatus').Value=1 then
   TDBGrid(Sender).Canvas.pen.Color:=RGB(111,111,111)
     else
   TDBGrid(Sender).Canvas.pen.Color:=RGB(100,100,255);

   TDBGrid(Sender).Canvas.pen.Style:=pssolid;
   TDBGrid(Sender).Canvas.pen.Width:=1;
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Top);
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom-1);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom-1);

		End
    else
     begin
        if users.FieldByName('userstatus').Value=0 then
         TDBGrid(Sender).Canvas.Brush.Color:=clWhite
        else
      TDBGrid(Sender).Canvas.Brush.Color:= RGB(216,216,216);

       TDBGrid(Sender).Canvas.Font.Color := clblack;
       TDBGrid(Sender).Canvas.FillRect(rect);
       TDBGrid(Sender).Canvas.brush.Style:=bsclear;
     end;


	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Tsetform.Action1Execute(Sender: TObject);
begin
if actiontype=2 then
 begin
  newus.Params.Clear;
  newus.ParamByName('username').Value:=username.Text;
  newus.ParamByName('userpass').Value:=userpass.Text;
  newus.ParamByName('userlevels').Value:=integer(usertypes.Items.Objects[usertypes.ItemIndex]);
  newus.Prepare;
  newus.ExecProc;
  dm.IBTransaction2.CommitRetaining;
 end;

 savebut.Enabled:=false;
{}
end;

procedure Tsetform.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9','.',',']) then
begin
key:=#0;
beep;
end;
 if key='.' then key:=',';
end;

procedure Tsetform.Button1Click(Sender: TObject);
begin
// users.Insert;
// users.FieldByName('username').Value:='';
// users.Post;
 newus.Prepare;
 newus.ExecProc;
 dm.IBTransaction2.CommitRetaining;
 users.Active:=false;
 users.Active:=true;
 users.Last;
end;

procedure Tsetform.newExecute(Sender: TObject);
begin
 pagenumber:=2;
 actiontype:=2;
 SpeedButton1.Caption:='Список';

 username.Text:='';
 label4.Caption:=inttostr(actiontype);
 userpass.Text:='';
 usertypes.ItemIndex:=0;
 panel3.Align:=alclient;
 savebut.Enabled:=false;
 panel3.Visible:=true;
 DBGrid1.Visible:=false;
end;

procedure Tsetform.FormShow(Sender: TObject);
begin
 pagenumber:=1;
end;

procedure Tsetform.FormCreate(Sender: TObject);
begin
dm.towns.Active:=true;
dm.divlist.Active:=true;
   ustypes.Active:=true;
 ustypes.First;
  while not ustypes.Eof do begin
    usertypes.Items.AddObject(ustypes.fieldbyname('utname').Value ,pointer(integer(ustypes.FieldByName('id').Value)));
    ustypes.Next;
   end;
  usertypes.ItemIndex:=0;

  if dm.users.FieldByName('userlevels').Value=2 then
   begin
     PageControl1.Pages[0].Enabled:=false;
     TabSheet2.Enabled:=false;
     TabSheet1.Enabled:=false;
     PageControl1.ActivePageIndex:=3;
   end;
end;

procedure Tsetform.usernameChange(Sender: TObject);
begin
 savebut.Enabled:=true;
end;

procedure Tsetform.userpassChange(Sender: TObject);
begin
  savebut.Enabled:=true;
end;

procedure Tsetform.usertypesChange(Sender: TObject);
begin
  savebut.Enabled:=true;
end;

procedure Tsetform.saveuserExecute(Sender: TObject);
begin
 if actiontype=2
  then
   begin
    label5.Caption:='asdgfdfg';
   end;
  savebut.Enabled:=false;
end;

procedure Tsetform.savebutClick(Sender: TObject);
begin
 if actiontype=2
  then
   begin
  newus.ParamByName('username').AsString:=username.Text;
  newus.ParamByName('userpass').AsString:=userpass.Text;
  newus.ParamByName('userlevels').Value:=integer(usertypes.Items.Objects[usertypes.ItemIndex]);
   if statuscheck.Checked then
  newus.ParamByName('userstatus').Value:=0
   else
  newus.ParamByName('userstatus').Value:=1;

  newus.Prepare;
  newus.ExecProc;
  dm.IBTransaction2.CommitRetaining;
  pagenumber:=1;
  SpeedButton1.Caption:='Карточка';
  savebut.Enabled:=false;
  username.Text:=users.fieldbyname('userpass').AsString;
  DBNavigator1.Enabled:=true;
  panel3.Align:=alclient;
  panel3.Visible:=false;
  users.Active:=false;
  users.Active:=true;
  DBGrid1.Visible:=true;
  delbut.Enabled:=true;
  CheckBox1.Visible:=true;
   end;

   if actiontype=1
  then
   begin
  upduser.ParamByName('user_id').Value:=users.fieldbyname('user_id').Value;
  upduser.ParamByName('username').AsString:=username.Text;
  upduser.ParamByName('userpass').AsString:=userpass.Text;
  upduser.ParamByName('userlevels').Value:=integer(usertypes.Items.Objects[usertypes.ItemIndex]);
   if statuscheck.Checked then
  upduser.ParamByName('userstatus').Value:=0
   else
  upduser.ParamByName('userstatus').Value:=1;

  upduser.Prepare;
  upduser.ExecProc;
  dm.IBTransaction2.CommitRetaining;
  savebut.Enabled:=false;
   end;


  savebut.Enabled:=false;
end;

procedure Tsetform.n1Click(Sender: TObject);
begin
 qupdate.SQL.Clear;
 qupdate.SQL.Add('update configurations set block=0 where cnf_id='+config.fieldbyname('cnf_id').AsString);
 qupdate.ExecQuery;
 dm.IBTransaction2.CommitRetaining;
 config.Active:=false;
 config.Active:=true;
end;

procedure Tsetform.newbutClick(Sender: TObject);
begin
 pagenumber:=2;
 actiontype:=2;
 SpeedButton1.Caption:='Список';

 username.Text:='';
 userpass.Text:='';
 usertypes.ItemIndex:=0;
 panel3.Align:=alclient;
 savebut.Enabled:=false;
 panel3.Visible:=true;
 delbut.Enabled:=false;
 DBGrid1.Visible:=false;
 CheckBox1.Visible:=false;
 statuscheck.Checked:=true;
end;

procedure Tsetform.delbutClick(Sender: TObject);
begin
 sql.SQL.Clear;
 sql.SQL.Add('update users set userstatus=1 where user_id='+users.fieldbyname('user_id').AsString);
 sql.Prepare;
 sql.ExecQuery;
 dm.IBTransaction2.CommitRetaining;
 users.Active:=False;
 users.Active:=True;
 end;

procedure Tsetform.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
  begin
   users.Active:=false;
   users.Params[0].Value:=1;
   users.Active:=true;
  end
   else
  begin
   users.Active:=false;
   users.Params[0].Value:=0;
   users.Active:=true;
  end;
end;

procedure Tsetform.statuscheckClick(Sender: TObject);
begin
 savebut.Enabled:=true;
end;

procedure Tsetform.DBGrid1DblClick(Sender: TObject);
begin
 SpeedButton1Click(SpeedButton1);
end;

procedure Tsetform.DBGrid2DblClick(Sender: TObject);
begin
  newconf:=tnewconf.create(Application);
  newconf.cnname.Text:=config.FieldByName('cnfname').AsString;
   newconf.cnnote.Text:=config.FieldByName('cnfnote').AsString;
   newconf.add_but.Caption:='Изменить';
   newconf.chconf.ParamByName('id').Value:=config.FieldByName('cnf_id').value;
 newconf.Height:=280;
 newconf.Width:=375;
 newconf.color:=rgb(148,162,183);
 newconf.ShowModal;
 cnfopertype:=2;
end;

procedure Tsetform.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 var
  ImageIndex, _Y: integer;
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
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top);
   TDBGrid(Sender).Canvas.LineTo(rect.Left,rect.Bottom);
   TDBGrid(Sender).Canvas.MoveTo(rect.Right-1,rect.Top);
   TDBGrid(Sender).Canvas.LineTo(rect.Right-1,rect.Bottom);

   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom-1);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom-1);

		End;
	// А теперь пусть он рисует сам !

 //	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
  TDBGrid(Sender).Canvas.FillRect(rect);

  if ((config.FieldByName('block').Value=0) or (config.FieldByName('block').Value=-1)) then
  ImageIndex:=0
   else
  ImageIndex:=1;

  ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left+4,Rect.Top+7, ImageIndex );
  _Y:=Rect.Top+Round((Rect.Bottom-Rect.Top)/2)-Round(TDBGrid(Sender).canvas.TextHeight('W')/2);
  TDBGrid(Sender).Canvas.Font.Size := 12;
  TDBGrid(Sender).Canvas.Font.Color := RGB(7,7,7);
  TDBGrid(Sender).Canvas.Font.Name := 'Tahoma';
  TDBGrid(Sender).Canvas.Font.Style:=[fsbold];
  TDBGrid(Sender).canvas.TextOut(Rect.Left+40,_y+2, Column.Field.Text);

  TDBGrid(Sender).Canvas.Font.Color := clgray;
  TDBGrid(Sender).Canvas.Font.Style:=[];
  TDBGrid(Sender).Canvas.Font.Size := 7;
  TDBGrid(Sender).Canvas.Font.Name := 'Tahoma';
  TDBGrid(Sender).canvas.TextOut(Rect.Left+40,_y+18+1, Column.Grid.DataSource.DataSet.Fields[2].asstring);


end;

procedure Tsetform.PageControl1Change(Sender: TObject);
begin
 if (PageControl1.ActivePageIndex=1)
  then   begin
   config.Active:=true;
   cnfuser.Active:=true;
   userall.Active:=true;
   end
   else
    begin
   config.Active:=false;
   cnfuser.Active:=false;
   userall.Active:=false;
    end;

end;

procedure Tsetform.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 IF  gdSelected   IN State
	Then Begin
   if users.FieldByName('userstatus').Value=1 then
    TDBGrid(Sender).Canvas.Brush.Color:= RGB(216,216,216)
   else
    TDBGrid(Sender).Canvas.Brush.Color:= RGB(192,212,239);

	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   //TDBGrid(Sender).Canvas.Font.Size:=10;

    if users.FieldByName('userstatus').Value=1 then
   TDBGrid(Sender).Canvas.pen.Color:=RGB(111,111,111)
     else
   TDBGrid(Sender).Canvas.pen.Color:=RGB(100,100,255);

   TDBGrid(Sender).Canvas.pen.Style:=pssolid;
   TDBGrid(Sender).Canvas.pen.Width:=1;
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Top);
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom-1);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom-1);

		End
    else
     begin
        if users.FieldByName('userstatus').Value=0 then
         TDBGrid(Sender).Canvas.Brush.Color:=clWhite
        else
      TDBGrid(Sender).Canvas.Brush.Color:= RGB(216,216,216);

       TDBGrid(Sender).Canvas.Font.Color := clblack;
       TDBGrid(Sender).Canvas.FillRect(rect);
       TDBGrid(Sender).Canvas.brush.Style:=bsclear;
     end;


	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Tsetform.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  IF  gdSelected   IN State
	Then Begin
   if users.FieldByName('userstatus').Value=1 then
    TDBGrid(Sender).Canvas.Brush.Color:= RGB(216,216,216)
   else
    TDBGrid(Sender).Canvas.Brush.Color:= RGB(192,212,239);

	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   //TDBGrid(Sender).Canvas.Font.Size:=10;

    if users.FieldByName('userstatus').Value=1 then
   TDBGrid(Sender).Canvas.pen.Color:=RGB(111,111,111)
     else
   TDBGrid(Sender).Canvas.pen.Color:=RGB(100,100,255);

   TDBGrid(Sender).Canvas.pen.Style:=pssolid;
   TDBGrid(Sender).Canvas.pen.Width:=1;
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Top);
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom-1);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom-1);

		End
    else
     begin
        if users.FieldByName('userstatus').Value=0 then
         TDBGrid(Sender).Canvas.Brush.Color:=clWhite
        else
      TDBGrid(Sender).Canvas.Brush.Color:= RGB(216,216,216);

       TDBGrid(Sender).Canvas.Font.Color := clblack;
       TDBGrid(Sender).Canvas.FillRect(rect);
       TDBGrid(Sender).Canvas.brush.Style:=bsclear;
     end;


	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Tsetform.SpeedButton2Click(Sender: TObject);
begin
 addcnfuser.ParamByName('user_id').Value:=userall.fieldbyname('user_id').Value;
 addcnfuser.ParamByName('cnf_id').Value:=config.fieldbyname('cnf_id').Value;
 addcnfuser.ParamByName('opertype').Value:=1;
 addcnfuser.ParamByName('id').Value:=-1;
 addcnfuser.Prepare;
 addcnfuser.ExecProc;
 cnfuser.Active:=false;
 cnfuser.Active:=true;
 cnfuser.Last;
end;

procedure Tsetform.SpeedButton3Click(Sender: TObject);
begin
 addcnfuser.ParamByName('user_id').Value:=userall.fieldbyname('user_id').Value;
 addcnfuser.ParamByName('cnf_id').Value:=config.fieldbyname('cnf_id').Value;
 addcnfuser.ParamByName('opertype').Value:=-1;
 addcnfuser.ParamByName('id').Value:=cnfuser.fieldbyname('id').Value;
 addcnfuser.Prepare;
 addcnfuser.ExecProc;
 cnfuser.Active:=false;
 cnfuser.Active:=true;
end;

procedure Tsetform.SpeedButton4Click(Sender: TObject);
begin
 newconf:=tnewconf.create(Application);
 newconf.Height:=280;
 newconf.Width:=375;
 newconf.color:=rgb(148,162,183);
 newconf.ShowModal;
 cnfopertype:=1;
end;

procedure Tsetform.SpeedButton5Click(Sender: TObject);
begin
if config.FieldByName('cnf_id').Value<>-1
 then begin
 qupdate.SQL.Clear;
 qupdate.SQL.Add('update configurations set block=1 where cnf_id='+config.fieldbyname('cnf_id').AsString);
 qupdate.ExecQuery;
 dm.IBTransaction2.CommitRetaining;
 config.Active:=false;
 config.Active:=true;
  end
 else
 Application.MessageBox('Невозможно удалить основную конфигурацию','Сообщение');

end;

procedure Tsetform.SpeedButton6Click(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile,str,str1 : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
begin
 if od.Execute
    then
     begin
   screen.Cursor:=crHourGlass;
   ExcelApp := CreateOleObject('Excel.Application');
   ExcelApp.Application.EnableEvents := false;
   ExcelApp.Application.visible:=false;
   Workbook := ExcelApp.WorkBooks.Add(od.filename);
   str:='%%';
   i:=1;
     while str<>'' do
      begin
      str:=WorkBook.worksheets[1].Cells[i,1];
      //str1:=WorkBook.worksheets[1].Cells[i,2];
      //ShowMessage(str1);
      proc1.Params[0].value:=WorkBook.worksheets[1].Cells[i,1];
      proc1.Params[1].value:=WorkBook.worksheets[1].Cells[i,2];
      proc1.Params[2].value:=WorkBook.worksheets[1].Cells[i,3];
      proc1.Params[3].value:=WorkBook.worksheets[1].Cells[i,4];
      proc1.Params[4].value:=WorkBook.worksheets[1].Cells[i,5];
      proc1.Params[5].value:=WorkBook.worksheets[1].Cells[i,6];
      proc1.Params[6].value:=WorkBook.worksheets[1].Cells[i,7];
      proc1.Prepare;
      proc1.ExecProc;
      dm.IBTransaction2.CommitRetaining;
      inc(i);
      end;

  dm.towns.Active:=false;
  dm.towns.Active:=true;
  screen.Cursor:=crDefault;
  end;
  ShowMessage('finish '+inttostr(i));

end;

procedure Tsetform.SpeedButton7Click(Sender: TObject);
var
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
    TemplateFile,str,str1 : String;
    BeginCol, BeginRow, i, j : integer;
    RowCount, ColCount : integer;
begin
 if od.Execute
    then
     begin
   screen.Cursor:=crHourGlass;
   ExcelApp := CreateOleObject('Excel.Application');
   ExcelApp.Application.EnableEvents := false;
   ExcelApp.Application.visible:=false;
   Workbook := ExcelApp.WorkBooks.Add(od.filename);
   str:='%%';
   i:=1;
     while str<>'' do
      begin
      str:=WorkBook.worksheets[1].Cells[i,1];
      //str1:=WorkBook.worksheets[1].Cells[i,2];
      //ShowMessage(str1);
      proc2.Params[0].value:=WorkBook.worksheets[1].Cells[i,1];
      proc2.Params[1].value:=WorkBook.worksheets[1].Cells[i,2];
      proc2.Params[2].value:=WorkBook.worksheets[1].Cells[i,3];
      proc2.Prepare;
      proc2.ExecProc;
      dm.IBTransaction2.CommitRetaining;
      inc(i);
      end;

  dm.divlist.Active:=false;
  dm.divlist.Active:=true;
  screen.Cursor:=crDefault;
  end;
  ShowMessage('finish '+inttostr(i));

end;

procedure Tsetform.showdelcncheckClick(Sender: TObject);
begin
 if showdelcncheck.Checked then
  config.Params[0].Value:=-2
  else
  config.Params[0].Value:=1;

  config.Active:=false;
  config.Active:=true;

end;

end.
