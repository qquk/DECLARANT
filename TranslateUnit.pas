unit translateunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, ExtCtrls, ActnMan, ActnCtrls, ActnMenus,
  XPStyleActnCtrls, ToolWin, ComCtrls, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, Menus, IBStoredProc ;

type
  Ttranslateform = class(TForm)
    CoolBar1: TCoolBar;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    CoolBar2: TCoolBar;
    Panel1: TPanel;
    nametov: TLabeledEdit;
    exitbut: TAction;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Action1: TAction;
    CheckBox2: TCheckBox;
    DataSource1: TDataSource;
    packtypes: TIBQuery;
    packtypesPACKTYPENAME: TIBStringField;
    packtypesPTITLE: TIBStringField;
    oemcode: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    packtypesPACKTYPE_ID: TIntegerField;
    save_act: TAction;
    refresh_act: TAction;
    kol: TIBQuery;
    translate: TIBStoredProc;
    translate_act: TAction;
    packtypesTITLE_CH: TIBStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exitbutExecute(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Action1Execute(Sender: TObject);
    procedure nametovKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure save_actExecute(Sender: TObject);
    procedure refresh_actExecute(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure setfilter;
    procedure refreshkol;
    procedure oemcodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cust_comChange(Sender: TObject);
    procedure translate_actExecute(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure oemcodeEnter(Sender: TObject);
    procedure oemcodeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  translateform: Ttranslateform;

implementation

uses dmunit;

{$R *.dfm}
procedure ttranslateform.refreshkol();
 begin
  kol.Active:=false;
  kol.Active:=true;
  StatusBar1.Panels[1].Text:=kol.Fields[0].AsString+' записей';
 end;

procedure ttranslateform.setfilter();
 begin
   packtypes.sql.Clear;
   packtypes.SQL.Add('select p.packtype_id, p.packtypename, p.ptitle, p.title_ch from PACKTYPES p where ptype in (0)');
   if nametov.Text<>''
    then
   packtypes.SQL.ADD(' and packtypename like "%'+nametov.Text+'%"');

   if CheckBox2.Checked then    begin
       packtypes.SQL.ADD(' and ( ptitle = "" or ptitle is null ) ');
   end;

    if CheckBox1.Checked then    begin
       packtypes.SQL.ADD(' and ( title_ch = "" or title_ch is null )');
   end;

//   if oemcode.Text<>''
//    then
//   packtypes.SQL.ADD(' and pc.oemcode like "%'+oemcode.Text+'%"');

    packtypes.SQL.Add(' order by packtypename');


   packtypes.Active:=false;
   packtypes.Active:=true;
   dbgrid2.SetFocus;
   //nametov.Text:='';
 end;

procedure Ttranslateform.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dm.IBTransaction2.CommitRetaining;
 action:=caFree;
end;

procedure Ttranslateform.exitbutExecute(Sender: TObject);
begin
 close;
end;

procedure Ttranslateform.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
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

procedure Ttranslateform.Action1Execute(Sender: TObject);
begin
 nametov.SetFocus;
 nametov.SelectAll;

end;

procedure Ttranslateform.nametovKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
 then
   begin
    setfilter;
   end;
end;

procedure Ttranslateform.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (packtypes.CachedUpdates) then
   packtypes.ApplyUpdates;
   dm.IBTransaction2.CommitRetaining;
end;

procedure Ttranslateform.save_actExecute(Sender: TObject);
begin
 if (packtypes.CachedUpdates) then
   packtypes.ApplyUpdates;
   refreshkol;
   dm.IBTransaction2.CommitRetaining;

end;

procedure Ttranslateform.refresh_actExecute(Sender: TObject);
begin
 packtypes.Active:=false;
 packtypes.Active:=true;
 refreshkol;
end;

procedure Ttranslateform.CheckBox2Click(Sender: TObject);
begin
//if CheckBox1.Checked  then begin CheckBox1.Checked:=false;
 // end;

setfilter;
 end;

procedure Ttranslateform.oemcodeEnter(Sender: TObject);
begin
//if (text='КОД') then
//     text:='';
end;

procedure Ttranslateform.oemcodeExit(Sender: TObject);
begin
//if (trim(text)='') then
//        text:='КОД';
end;

procedure Ttranslateform.oemcodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_return
 then
   begin
    setfilter;
   end;
end;

procedure Ttranslateform.cust_comChange(Sender: TObject);
begin
 setfilter;
end;

procedure Ttranslateform.translate_actExecute(Sender: TObject);
var
 BMark: TBookMark;
begin
 Bmark:=DBGrid2.DataSource.DataSet.GetBookmark;
 translate.Params.Clear;
 translate.ParamByName('ptitle').Value:=packtypes.fieldbyname('ptitle').AsString;
 translate.ParamByName('title_ch').Value:=packtypes.fieldbyname('title_ch').AsString;
 translate.ParamByName('pname').Value:=packtypes.fieldbyname('packtypename').AsString;

  if DBGrid2.SelectedIndex=2 then
   translate.ParamByName('lang').Value:='en';
  if DBGrid2.SelectedIndex=3 then
   translate.ParamByName('lang').Value:='ch';

 translate.Prepare;
 translate.ExecProc;
 dm.IBTransaction2.CommitRetaining;

 if (packtypes.CachedUpdates) then
   packtypes.ApplyUpdates;

 packtypes.Active:=false;
 packtypes.Active:=true;
 refreshkol;

  with  DBGrid2.DataSource.DataSet
    do begin
     GotoBookmark(BMark);
     FreeBookmark(BMark);
     EnableControls;
   end;

 end;

procedure Ttranslateform.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


// if key=vk_return
//  then begin
//  if ssAlt in Shift then ShowMessage('3');
//  end;
end;

procedure Ttranslateform.CheckBox1Click(Sender: TObject);
begin
// if CheckBox2.Checked  then begin
//  CheckBox2.Checked:=false;
// end;
 setfilter;
 end;

procedure Ttranslateform.N2Click(Sender: TObject);
var
 BMark: TBookMark;
begin
 Bmark:=DBGrid2.DataSource.DataSet.GetBookmark;
 translate.Params.Clear;
 translate.ParamByName('ptitle').Value:=DBGrid2.Fields[2].AsString;
 translate.ParamByName('title_ch').Value:=DBGrid2.Fields[3].AsString;
 translate.ParamByName('pname').Value:=packtypes.fieldbyname('packtypename').AsString;
 translate.Prepare;
 translate.ExecProc;
 dm.IBTransaction2.CommitRetaining;

 if (packtypes.CachedUpdates) then
   packtypes.ApplyUpdates;

 packtypes.Active:=false;
 packtypes.Active:=true;
 refreshkol;

  with  DBGrid2.DataSource.DataSet
    do begin
     GotoBookmark(BMark);
     FreeBookmark(BMark);
     EnableControls;
   end;


end;

end.
