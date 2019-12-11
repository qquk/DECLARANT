unit WaitTransListUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, ComCtrls, ActnList, ToolWin, ActnMan, ActnCtrls,
  XPStyleActnCtrls, AppEvnts, IBDatabase, IBSQL, Menus, IBStoredProc;

type
  Twaittransportf = class(TForm)
    Panel1: TPanel;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    refresh: TAction;
    open: TAction;
    exit: TAction;
    CoolBar1: TCoolBar;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Bevel1: TBevel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    transport: TIBQuery;
    transtran: TIBTransaction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    updatetransstate: TIBSQL;
    N2: TMenuItem;
    N3: TMenuItem;
    packing_all: TIBQuery;
    makeorder: TIBStoredProc;
    newitems: TIBStoredProc;
    new_ot: TIBStoredProc;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure openExecute(Sender: TObject);
    procedure exitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    procedure refreshExecute(Sender: TObject);

    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure setfilter();
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  waittransportf: Twaittransportf;
  sql_transport: tstrings;

implementation

uses dmunit,   CnvUnit, NewFlyUnit, MainUnit;

procedure twaittransportf.setfilter();
 var tmpsql: string;
 begin
   tmpsql:='select poscount, posweight, posvolume, t.trans_id, t.transinfo, t.tdate, t.transout,t.operstate ,ts.toname, t.transno, t.gos_no, tt.tname, t.scomment, t.transcame, t.poscame, d.prefix from  transport t, toperstate ts, transtype tt, div d';
   transport.Active:=false;
   transport.SQL.Clear;
   transport.SQL.Add(tmpsql);
   transport.SQL.Add(' where d.div_id=t.sourcediv_id and ts.to_id=t.operstate and t.trt_id=tt.trt_id and t.operstate<>2 and t.operstate<>3');

   if checkbox2.Checked=false
    then
   transport.sql.add(' and t.operstate<>0');

    if checkbox3.Checked=false
    then
    transport.sql.add(' and t.operstate<>4');

  transport.SQL.Add(' and cnf_id='+dm.config.fieldbyname('cnf_id').AsString+' order by trans_id desc');
  transport.active:=true;

 {}
 end;
{$R *.dfm}
procedure Twaittransportf.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
   marked: boolean;
   index: integer;
begin
IF  gdSelected   IN State
	Then Begin
     if (transport.FieldByName('operstate').Value=0) then
   TDBGrid(Sender).Canvas.Brush.Color:= RGB(160,255,160)
    else
    TDBGrid(Sender).Canvas.Brush.Color:=rgb(160,160,255) ;


	 TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   //TDBGrid(Sender).Canvas.Font.Size:=10;
   if (transport.FieldByName('operstate').Value=0) then
   TDBGrid(Sender).Canvas.pen.Color:=clgreen
    else    TDBGrid(Sender).Canvas.pen.Color:=clnavy;
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
     if (transport.FieldByName('operstate').Value=0)then
   TDBGrid(Sender).Canvas.Brush.Color:=rgb(220,255,220)
   else  TDBGrid(Sender).Canvas.Brush.Color:= RGB(220,220,255);
   TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;

      Marked := TDBGrid(Sender).SelectedRows.Find(TDBGrid(Sender).Datasource.Dataset.Bookmark, index);
      if Marked then
        begin
     TDBGrid(Sender).Canvas.Brush.Color:=RGB(148,162,181);
     TDBGrid(Sender).Canvas.Font.Color :=clblack;
       end;


    end;
	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Twaittransportf.openExecute(Sender: TObject);
var
trans_id: integer;
begin
 screen.Cursor:=crHourglass;
 cnvform:=tcnvform.Create(application);
 cnvform.Panel2.Visible:=false;
 cnvform.Panel1.Align:=alclient;
 cnvform.cnvall.Params[0].Value:=transport.fieldbyname('trans_id').Value;
 cnvform.cnvinfo.Params[0].Value:=transport.fieldbyname('trans_id').Value;
 cnvform.cnvpos.Params[0].Value:=transport.fieldbyname('trans_id').Value;
 cnvform.cnvstore.Params[0].Value:=transport.fieldbyname('trans_id').Value;
 cnvform.cnvall.Active:=true;
 cnvform.cnvinfo.Active:=true;
 cnvform.DateTimePicker1.Date:=cnvform.cnvinfo.fieldbyname('transcame').value;
 cnvform.Caption:='Транспорт приход: '+cnvform.cnvinfo.fieldbyname('transinfo').AsString;
 if cnvform.cnvinfo.FieldByName('operstate').Value=4
  then cnvform.ActionManager1.ActionBars[0].Items[5].Caption:='В работу';
 cnvform.Show;
 screen.Cursor:=crDefault;


end;

procedure Twaittransportf.exitExecute(Sender: TObject);
begin
close;
end;

procedure Twaittransportf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Twaittransportf.FormShow(Sender: TObject);
begin
width:=755;
height:=437;
end;


procedure Twaittransportf.refreshExecute(Sender: TObject);
begin
//dm.zagtran.Active:=false;
//dm.zagtran.Active:=true;
transport.Active:=false;
transport.Active:=true;
end;



procedure Twaittransportf.DBGrid1DblClick(Sender: TObject);
begin
 actionmanager1.Actions[1].Execute;
end;

procedure Twaittransportf.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
actionmanager1.Actions[1].Execute;
end;

procedure Twaittransportf.FormActivate(Sender: TObject);
begin
 sql_transport:=transport.sql;

end;

procedure Twaittransportf.CheckBox2Click(Sender: TObject);
begin
 setfilter();
end;

procedure Twaittransportf.CheckBox1Click(Sender: TObject);
begin
 setfilter();
end;

procedure Twaittransportf.CheckBox3Click(Sender: TObject);
begin
  setfilter();
end;

procedure Twaittransportf.N1Click(Sender: TObject);
 var
  bmark: Tbookmark;
begin
 bmark:=dbgrid1.DataSource.DataSet.GetBookmark;
 dbgrid1.DataSource.DataSet.DisableControls;

 screen.Cursor:=crHourglass;
 updatetransstate.SQL.Clear;
 updatetransstate.SQL.Add('update transport set operstate=4 where ');
 updatetransstate.SQL.Add('trans_id='+transport.fieldbyname('trans_id').AsString);
 updatetransstate.Prepare;
 updatetransstate.ExecQuery;
 transtran.CommitRetaining;
 transport.active:=false;
 transport.active:=true;
 dbgrid1.DataSource.DataSet.GotoBookmark(bmark);
 dbgrid1.DataSource.DataSet.EnableControls;
 dbgrid1.DataSource.DataSet.FreeBookmark(bmark);
 screen.cursor:=crdefault;
end;

procedure Twaittransportf.N3Click(Sender: TObject);
 var
  fulltransport: string;
  n: integer;
begin
 newfly:=tnewfly.create(application);
 newfly.color:=rgb(148,162,183);
 newfly.outno.Text:='';
  translist_order:='(';
  for n:=0 to waittransportf.dbgrid1.SelectedRows.Count-1 do
   begin
   waittransportf.transport.GotoBookmark(pointer(waittransportf.dbgrid1.SelectedRows[n]));
     if n=0
       then
    translist_order:=translist_order+waittransportf.transport.fieldbyname('trans_id').AsString
     else
    translist_order:=translist_order+','+waittransportf.transport.fieldbyname('trans_id').AsString;
   end;
    translist_order:=translist_order+')';

 newfly.translist.SQL.Clear;
 newfly.translist.SQL.Add('select trans_id from transport where trans_id in '+translist_order);
 newfly.translist.Active:=true;



 newordoper:=3;
 newfly.showmodal;
end;

end.
