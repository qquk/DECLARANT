unit CnvUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, IBSQL, IBStoredProc,
  IBDatabase, IBCustomDataSet, IBQuery, ActnList, XPStyleActnCtrls,
  ActnMan, ActnCtrls, ToolWin, ComCtrls, Buttons, StdCtrls, DBCtrls, Menus,
  AxCtrls, OleCtrls,  comobj, shellapi, math;

type
  Tcnvform = class(TForm)
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    ActionManager1: TActionManager;
    refersh: TAction;
    recieve_all: TAction;
    load_file: TAction;
    reports: TAction;
    close_act: TAction;
    view_act: TAction;
    archive_act: TAction;
    cnvpos: TIBQuery;
    cnvinfo: TIBQuery;
    cnvtran: TIBTransaction;
    choper: TIBStoredProc;
    updatetransstate: TIBSQL;
    Panel1: TPanel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    cnvall: TIBQuery;
    Panel2: TPanel;
    Splitter1: TSplitter;
    cnvstore: TIBQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    view1: TAction;
    view2: TAction;
    Panel3: TPanel;
    DBText1: TDBText;
    Bevel1: TBevel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    Bevel2: TBevel;
    Label3: TLabel;
    DBText3: TDBText;
    Bevel3: TBevel;
    refreshcnv: TIBStoredProc;
    Panel5: TPanel;
    Bevel4: TBevel;
    Panel6: TPanel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    com: TComboBox;
    SpeedButton2: TSpeedButton;
    Bevel7: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel8: TBevel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    Bevel9: TBevel;
    Label6: TLabel;
    com1: TComboBox;
    Bevel10: TBevel;
    Label7: TLabel;
    Edit2: TEdit;
    load_off_pos: TAction;
    packrep: TAction;
    packing_all: TIBQuery;
    town_rep: TAction;
    IBQuery1: TIBQuery;
    transpos: TIBQuery;
    pospack: TIBQuery;
    packing1: TIBQuery;
    DataSource5: TDataSource;
    pack_all: TAction;
    DataSource6: TDataSource;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Bevel11: TBevel;
    Label9: TLabel;
    load_off: TAction;
    incar_act: TAction;
    checkbarcode: TIBQuery;
    makeinvoice: TAction;
    newitems: TIBStoredProc;
    makeorder: TIBStoredProc;
    new_ot: TIBStoredProc;
    helper: TIBQuery;
    newtm: TIBStoredProc;
    CheckBox2: TCheckBox;
    procedure refershExecute(Sender: TObject);
    procedure recieve_allExecute(Sender: TObject);
   
    procedure reportsExecute(Sender: TObject);
    procedure view_actExecute(Sender: TObject);
    procedure archive_actExecute(Sender: TObject);
    procedure close_actExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure view1Execute(Sender: TObject);
    procedure view2Execute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);





    
    procedure DBListView1DblClick(Sender: TObject);
    procedure DBListView2DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure load_off_posExecute(Sender: TObject);
    procedure setfilter;
    procedure comChange(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure com1Change(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure packrepExecute(Sender: TObject);
    procedure town_repExecute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure load_offExecute(Sender: TObject);
    procedure setfilterstore;
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure incar_actExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBListView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBListView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure makeinvoiceExecute(Sender: TObject);
    procedure pack_allExecute(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cnvform: Tcnvform;

implementation

uses dmunit, BagPosUnit, MainUnit,   NewFlyUnit;
procedure tcnvform.setfilterstore;
 begin
  cnvstore.Active:=false;
     cnvstore.SQL.Clear;
     cnvstore.SQL.Add('select  "[" || transprefix || "]" || " " || bagnum1 as bagnum1, zag_id, xcode from zagruzka where outertrans_id='+cnvinfo.fieldbyname('trans_id').AsString+' and operstate=1');
   if (edit3.Visible) and (edit3.Text<>'')
    then begin
     cnvstore.SQL.Add(' and xcode='+edit3.Text);
        end;
   cnvstore.Active:=true;

 end;
{$R *.dfm}
procedure tcnvform.setfilter;
 begin

  if panel1.Visible=true
   then
    begin
   cnvall.Active:=false;
   cnvall.SQL.Clear;
   cnvall.SQL.Add('select z.*, tt.tname, tw.townname, tw.town_code, r.regname, c.client_name as clientname');
   cnvall.SQL.Add(' from zagruzka z, clients c, transtype tt, towns tw, regions r where z.outertrans_id='+cnvinfo.fieldbyname('trans_id').AsString+' and z.trt_id=tt.trt_id and z.destdiv_id=tw.town_id and tw.reg_id=r.reg_id and z.client_id=c.client_id');
     if com.ItemIndex<>0 then
   cnvall.SQL.Add(' and z.destdiv_id='+inttostr(integer(integer(com.Items.Objects[com.ItemIndex]))));
    if edit1.Text<>'' then
     cnvall.SQL.Add('and z.xcode='+edit1.Text);

    if CheckBox2.Checked then
     cnvall.SQL.Add('and z.packcount=0');


     cnvall.SQL.Add(' order by xcode, inside_num ');
     cnvall.Active:=true;
    end
   else
    begin

   cnvpos.Active:=false;
   cnvpos.SQL.Clear;
   cnvpos.SQL.Add('select "["||transprefix|| "]" || " " || bagnum1 as bagnum1, zag_id, xcode from zagruzka where outertrans_id='+cnvinfo.fieldbyname('trans_id').AsString+' and operstate=0');



     if com1.ItemIndex<>0 then
      cnvpos.SQL.Add(' and destdiv_id='+inttostr(integer(integer(com1.Items.Objects[com.ItemIndex]))));
    if edit2.Text<>'' then
      cnvpos.SQL.Add('and xcode='+edit2.Text);
    cnvpos.SQL.Add(' order by xcode, inside_num ');
    cnvpos.Active:=true;
    end;


 end;

procedure Tcnvform.refershExecute(Sender: TObject);
begin
screen.Cursor:=crHourglass;

   refreshcnv.ParamByName('trans_id').Value:=cnvinfo.fieldbyname('trans_id').Value;;
     refreshcnv.Prepare;
     refreshcnv.ExecProc;
     cnvtran.CommitRetaining;
 if panel1.Visible=true
  then
   begin
   cnvall.Active:=false;
   cnvall.Active:=true;
   end
   else
    begin
   cnvpos.Active:=false;
   cnvpos.Active:=true;
   cnvstore.Active:=false;
   cnvstore.Active:=true;
    end;
    cnvinfo.Active:=false;
    cnvinfo.Active:=true;

 screen.Cursor:=crdefault;
 {}
end;

procedure Tcnvform.recieve_allExecute(Sender: TObject);
begin
{}
 screen.Cursor:=crHourglass;
 updatetransstate.SQL.Clear;
 updatetransstate.SQL.Add('update zagruzka set operstate=1 where ');
 updatetransstate.SQL.Add('outertrans_id='+cnvinfo.fieldbyname('trans_id').AsString+' and operstate<2');
 updatetransstate.Prepare;
 updatetransstate.ExecQuery;

 updatetransstate.SQL.Clear;
 updatetransstate.SQL.Add('update transport set poscame='+cnvinfo.fieldbyname('poscount').AsString+' where ');
 updatetransstate.SQL.Add('trans_id='+cnvinfo.fieldbyname('trans_id').AsString);
 updatetransstate.Prepare;
 updatetransstate.ExecQuery;
 cnvtran.CommitRetaining;
  if panel1.Visible=true
   then
    begin
     cnvall.Active:=false;
     cnvall.Active:=true;
    end
   else
   begin
     cnvpos.Active:=false;
     cnvpos.Active:=true;
     cnvstore.Active:=false;
     cnvstore.Active:=true;
   end;
  screen.Cursor:=crdefault;
 end;



procedure Tcnvform.reportsExecute(Sender: TObject);
begin
{}
end;

procedure Tcnvform.view_actExecute(Sender: TObject);
begin
{}
end;

procedure Tcnvform.archive_actExecute(Sender: TObject);
begin
screen.Cursor:=crHourglass;

 updatetransstate.SQL.Clear;
if cnvinfo.FieldByName('operstate').Value=0 then
 updatetransstate.SQL.Add('update transport set operstate=4 where ')
 else
  updatetransstate.SQL.Add('update transport set operstate=0 where ');

 updatetransstate.SQL.Add('trans_id='+cnvinfo.fieldbyname('trans_id').AsString);
 updatetransstate.Prepare;
 updatetransstate.ExecQuery;
 cnvtran.CommitRetaining;
   if panel1.Visible=true
   then
    begin
     cnvall.Active:=false;
     cnvall.Active:=true;
    end
   else
   begin
     cnvpos.Active:=false;
     cnvpos.Active:=true;
     cnvstore.Active:=false;
     cnvstore.Active:=true;
   end;
 cnvinfo.Active:=false;
 cnvinfo.Active:=true;
  if cnvinfo.FieldByName('operstate').Value=0
   then
  actionmanager1.ActionBars[0].Items[5].Caption:='Архивировать'
  else
  actionmanager1.ActionBars[0].Items[5].Caption:='В работу';
 screen.Cursor:=crdefault;
end;

procedure Tcnvform.close_actExecute(Sender: TObject);
begin
 close;
end;

procedure Tcnvform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure Tcnvform.view1Execute(Sender: TObject);
begin
 panel1.Visible:=true;
 cnvall.Active:=true ;
 panel2.Visible:=false;
 cnvpos.Active:=false;
 cnvstore.Active:=false;
 end;

procedure Tcnvform.view2Execute(Sender: TObject);
begin
 panel1.Visible:=false;
 cnvall.Active:=false;
 panel2.Align:=alclient;
 panel2.Visible:=true;
 cnvpos.Active:=true;
 cnvstore.Active:=true;
end;

procedure Tcnvform.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  IF  gdSelected   IN State
	Then Begin
    if cnvall.FieldByName('packcount').Value=0 then
         TDBGrid(Sender).Canvas.Brush.Color:=clmaroon
       else
    TDBGrid(Sender).Canvas.Brush.Color:=RGB(148,162,181);
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
  	 //TDBGrid(Sender).Canvas.Font.Color := clblack;
   TDBGrid(Sender).Canvas.FillRect(rect);
   TDBGrid(Sender).Canvas.brush.Style:=bsclear;
   TDBGrid(Sender).Canvas.pen.Color:=clblack;

   TDBGrid(Sender).Canvas.pen.Style:=pssolid;
   TDBGrid(Sender).Canvas.pen.Width:=1;
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Top);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Top);
   TDBGrid(Sender).Canvas.MoveTo(rect.Left,rect.Bottom);
   TDBGrid(Sender).Canvas.LineTo(rect.Right,rect.Bottom);
   		End
   else
      begin
       if cnvall.FieldByName('packcount').Value=0 then
        TDBGrid(Sender).Canvas.Brush.Color:=rgb(255,220,220)
       else
        TDBGrid(Sender).Canvas.Brush.Color:=clwhite;

       TDBGrid(Sender).Canvas.Font.Color := clblack;
   end;


	// А теперь пусть он рисует сам !
	TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;













procedure Tcnvform.DBListView1DblClick(Sender: TObject);
begin
// dblistview1.BeginDrag(false);
  bagpos:=tbagpos.create(application);
bagpos.IBQuery1.Params[0].Value:=cnvpos.fieldbyname('zag_id').Value;
bagpos.packing.Params[0].Value:=cnvpos.fieldbyname('zag_id').Value;
bagpos.IBQuery1.Active:=true;
bagpos.packing.Active:=true;
bagpos.edit2.Text:=inttostr(bagpos.ibquery1.fieldbyname('inside_num').value);
bagpos.edit3.Text:=floattostr(bagpos.ibquery1.fieldbyname('weight').value);
bagpos.edit4.Text:=floattostr(bagpos.ibquery1.fieldbyname('volume').value);


//bagpos.dxedit1.Text:=bagpos.ibquery1.fieldbyname('size_3').AsString;
//bagpos.edit6.Text:='0';
//bagpos.edit7.Text:='0';
//bagpos.dxedit1.Text:='0';

//bagpos.edit8.Text:=inttostr(bagpos.ibquery1.fieldbyname('ocenka').value);
//bagpos.edit9.Text:=inttostr(bagpos.ibquery1.fieldbyname('strahovka').value);
//bagpos.edit10.Text:=inttostr(bagpos.ibquery1.fieldbyname('totalsumm').value);
//bagpos.edit11.Text:=inttostr(bagpos.ibquery1.fieldbyname('summdept').value);
bagpos.Caption:='Место № '+cnvpos.fieldbyname('bagnum1').Value+' ['+inttostr(cnvpos.fieldbyname('xcode').Value)+']';
bagpos.Height:=528;
bagpos.Width:=733;
modif_bag:=false;
bagpos.showmodal;
end;

procedure Tcnvform.DBListView2DblClick(Sender: TObject);
begin
   bagpos:=tbagpos.create(application);
bagpos.IBQuery1.Params[0].Value:=cnvstore.fieldbyname('zag_id').Value;
bagpos.packing.Params[0].Value:=cnvstore.fieldbyname('zag_id').Value;
bagpos.IBQuery1.Active:=true;
bagpos.packing.Active:=true;
bagpos.edit2.Text:=inttostr(bagpos.ibquery1.fieldbyname('inside_num').value);
bagpos.edit3.Text:=floattostr(bagpos.ibquery1.fieldbyname('weight').value);
bagpos.edit4.Text:=floattostr(bagpos.ibquery1.fieldbyname('volume').value);


//bagpos.dxedit1.Text:=bagpos.ibquery1.fieldbyname('size_3').AsString;
//bagpos.edit6.Text:='0';
//bagpos.edit7.Text:='0';
//bagpos.dxedit1.Text:='0';

//bagpos.edit8.Text:=inttostr(bagpos.ibquery1.fieldbyname('ocenka').value);
//bagpos.edit9.Text:=inttostr(bagpos.ibquery1.fieldbyname('strahovka').value);
//bagpos.edit10.Text:=inttostr(bagpos.ibquery1.fieldbyname('totalsumm').value);
//bagpos.edit11.Text:=inttostr(bagpos.ibquery1.fieldbyname('summdept').value);
bagpos.Caption:='Место № '+cnvstore.fieldbyname('bagnum1').Value+' ['+inttostr(cnvstore.fieldbyname('xcode').Value)+']';
bagpos.Height:=528;
bagpos.Width:=733;
modif_bag:=false;
bagpos.showmodal;
end;

procedure Tcnvform.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then begin
   DBGrid1DblClick(DBGrid1);
end;
end;

procedure Tcnvform.FormCreate(Sender: TObject);
begin
dm.towns.Active:=true;
           dm.towns.First;
  while not dm.towns.Eof do begin
com.Items.AddObject(dm.towns.fieldbyname('townname').Value ,pointer(integer(dm.towns.FieldByName('town_id').Value)));
com1.Items.AddObject(dm.towns.fieldbyname('townname').Value ,pointer(integer(dm.towns.FieldByName('town_id').Value)));
   dm.towns.Next;
   end;
   com.ItemIndex:=0;
   com1.ItemIndex:=0;
end;

procedure Tcnvform.SpeedButton1Click(Sender: TObject);
begin
  updatetransstate.SQL.Clear;
 updatetransstate.SQL.Add('update zagruzka set datecame='+'"'+datetostr(datetimepicker1.date)+'"'+' where ');
 updatetransstate.SQL.Add('outertrans_id='+cnvinfo.fieldbyname('trans_id').AsString);
 updatetransstate.Prepare;
 updatetransstate.ExecQuery;

 updatetransstate.SQL.Clear;
 updatetransstate.SQL.Add('update transport set transcame='+'"'+datetostr(datetimepicker1.date)+'"'+' where ');
 updatetransstate.SQL.Add('trans_id='+cnvinfo.fieldbyname('trans_id').AsString);
 updatetransstate.Prepare;
 updatetransstate.ExecQuery;
 cnvtran.CommitRetaining;
  if panel1.Visible=true
   then
    begin
     cnvall.Active:=false;
     cnvall.Active:=true;
    end
   else
   begin
     cnvpos.Active:=false;
     cnvpos.Active:=true;
     cnvstore.Active:=false;
     cnvstore.Active:=true;
   end;
end;

procedure Tcnvform.load_off_posExecute(Sender: TObject);
begin
  {}
end;

procedure Tcnvform.comChange(Sender: TObject);
begin
 setfilter;
end;

procedure Tcnvform.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then setfilter;
end;

procedure Tcnvform.com1Change(Sender: TObject);
begin
 setfilter;
end;

procedure Tcnvform.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
  then setfilter;
end;

procedure Tcnvform.packrepExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    avgweight: double;
    avgtotal: double;
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
begin
 packing_all.SQL.Clear;
 packing_all.SQL.Add('select  sum(packkol), pt.packtype_id,');
 packing_all.SQL.Add('pt.packtypename, u.unittitle, pt.oemcode from packing_origin p, zagruzka z,');
 packing_all.SQL.Add('packtypes pt, unittypes u  where u.unttype=p.unittype and');
 packing_all.SQL.Add('z.zag_id=p.bag_id and z.outertrans_id=:trans_id and p.packtype_id=pt.packtype_id');
 packing_all.SQL.Add('group by pt.packtype_id, pt.packtypename, u.unittitle, pt.oemcode order by pt.packtypename');


 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Application.EnableEvents := false;
 Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');


 Screen.Cursor:=crHourGlass;

   n:=5;
   WorkBook.WorkSheets[1].Columns[2].ColumnWidth := 10;
   WorkBook.WorkSheets[1].Columns[3].ColumnWidth := 50;


 WorkBook.WorkSheets[1].Cells[2, 1]:='Сводный пакинг по транспорту: '+cnvinfo.fieldbyname('transinfo').AsString+' [ Мест: '+cnvinfo.fieldbyname('poscount').AsString+' Вес: '+cnvinfo.fieldbyname('posweight').AsString+' ]';
 cell1:=WorkBook.WorkSheets[1].Cells[2,1];
 cell2:=WorkBook.WorkSheets[1].Cells[2,1];
 range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 range.font.name:='Arial';
 range.font.size:=12;
 range.font.bold:=true;
 WorkBook.WorkSheets[1].Rows[2].rowheight:=20;






    WorkBook.WorkSheets[1].Cells[N-1, 2]:='№';
    WorkBook.WorkSheets[1].Cells[N-1, 3]:='Наименование';
    WorkBook.WorkSheets[1].Cells[N-1, 4]:='Ед изм';
    WorkBook.WorkSheets[1].Cells[N-1, 5]:='Кол-во';



      packing_all.Active:=false;
      packing_all.Params[0].Value:=cnvinfo.fieldbyname('trans_id').value;
      packing_all.Active:=true;
      packing_all.First;
      i:=1;
      avgtotal:=0;
      avgweight:=cnvinfo.fieldbyname('posweight').Value/cnvinfo.fieldbyname('poscount').Value;
      while not packing_all.Eof do begin
        WorkBook.WorkSheets[1].Cells[N, 2].font.name:='arial';
        WorkBook.WorkSheets[1].Cells[N, 2].font.size:=8;

         WorkBook.WorkSheets[1].Cells[N, 2]:=i;
         WorkBook.WorkSheets[1].Cells[N, 3]:=packing_all.Fields[2].asstring;
         WorkBook.WorkSheets[1].Cells[N, 4]:=packing_all.Fields[3].asstring;
         WorkBook.WorkSheets[1].Cells[N, 5]:=packing_all.Fields[0].asfloat;
         inc(n);
         inc(i);
         packing_all.Next;
    //   avgtotal:=avgtotal+round(packing_all.Fields[0].asfloat/avgweight);
     end;
     //f1.NumberRC[3,8]:=avgtotal;
     //f1.SelStartRow:=4;
     //f1.SelEndRow:=n;
    // f1.SelStartCol:=2;
     //f1.SelEndCol:=8;
    // F1.SetBorder(2, 1, 1, 1, 1, 0, clBlack, clBlack, clBlack, clBlack, clBlack);
 packing_all.Active:=false;
 ExcelApp.visible:=true;
 Screen.Cursor:=crDefault;

end;

procedure Tcnvform.town_repExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    totalweight: double;
    totalpos: double;
    totalvolume: double;
    transpos: double;
    transweight: double;
    transvolume: double;

begin

 {totalpos:=0;
 totalweight:=0;
 totalvolume:=0;
 f1.Read(out_dir+'packing.xls',SM);
 Screen.Cursor:=crHourGlass;
// f1.TextRC[8,6]:='2';

  f1.SetColWidth(2,2,3500,false);
    f1.SetColWidth(3,3,1000,false);
     f1.SetColWidth(4,4,1500,false);
    f1.SelStartCol:=2;
    F1.SelEndCol:=8;
 //   f1.setfont('arial',8,true,false,false,false,clblack,false,false);


 f1.SetActiveCell(1,1);
 f1.RowHeight[1]:=500;
 F1.setfont('arial',12,true,false,false,false,clblack,false,false);
 f1.TextRC[1,1]:='Загрузка по регионам: '+cnvinfo.fieldbyname('transinfo').Value;

 n:=3;


      i:=1;


         inc(n);
         inc(n);
      ibquery1.Active:=false;
      ibquery1.ParamByName('trans_id').Value:=cnvinfo.fieldbyname('trans_id').Value;
      ibquery1.Active:=true;
         inc(n);

      f1.SelStartRow:=n;
      f1.TextRC[n,2]:='Регион';
      f1.TextRC[n,3]:='Мест';
      f1.TextRC[n,4]:='Вес';
      f1.TextRC[n,5]:='Объём';
      inc(n);
        transpos:=0;
        transweight:=0;
        transvolume:=0;
          f1.SetColWidth(3,5,2000,false);
          while not ibquery1.Eof do
           begin
         // f1.SetActiveCell(N,2);

         //f1.setfont('arial',8,true,true,false,false,clnavy,false,false);
          f1.TextRC[n,2]:=ibquery1.Fields[4].AsString;
          f1.numberRC[n,3]:=ibquery1.Fields[0].AsFloat;
          f1.numberRC[n,4]:=ibquery1.Fields[1].AsFloat;
          f1.numberRC[n,5]:=ibquery1.Fields[2].AsFloat;
          inc(n);
          totalpos:=totalpos+ibquery1.Fields[0].Value;
          totalweight:=totalweight+ibquery1.Fields[1].Value;
          totalvolume:=totalvolume+ibquery1.Fields[2].Value;
          ibquery1.Next;
           end;
         inc(n);
         f1.TextRC[n,2]:='Итого:';
         f1.NumberRC[n,3]:=totalpos;
         f1.NumberRC[n,4]:=totalweight;
         f1.NumberRC[n,5]:=totalvolume;

      f1.SelEndRow:=n;
      f1.SelStartCol:=2;
      f1.SelEndCol:=5;
      F1.SetBorder(2, 1, 1, 1, 1, 0, clBlack, clBlack, clBlack, clBlack, clBlack);
          inc(n);

        inc(n); inc(n);
      f1.TextRC[n,2]:='Итого';
      f1.TextRC[n+1,2]:='Мест:';
      f1.NumberRC[n+1,3]:=totalpos;
      f1.TextRC[n+2,2]:='Вес:';
      f1.NumberRC[n+2,3]:=totalweight;
      f1.TextRC[n+3,2]:='Объём:';
      f1.NumberRC[n+3,3]:=totalvolume;


  //   f1.SelStartRow:=8;
  //   f1.SelEndRow:=n;
  //   f1.SelStartCol:=2;
  //   f1.SelEndCol:=8;
  //   F1.SetBorder(2, 1, 1, 1, 1, 0, clBlack, clBlack, clBlack, clBlack, clBlack);

 FNAME:=temp_dir+'zb'+FormatdateTime('ddhhnnss', Now)+'.xls';
 F1.Write(FNAME, F1FileExcel5);
 ShellExecute(0, 'open', PCHAR(FNAME), '', '', sw_show);
 Screen.Cursor:=crDefault;   }

end;

procedure Tcnvform.CheckBox1Click(Sender: TObject);
begin

 if checkbox1.Checked=false then
  edit3.Text:='';
   label9.Visible:=checkbox1.Checked;
 edit3.Visible:=checkbox1.Checked;
end;

procedure Tcnvform.CheckBox2Click(Sender: TObject);
begin
 setfilter;
end;

procedure Tcnvform.load_offExecute(Sender: TObject);
var SM: smallint;
    FNAME: string;
    n, i, i1,i2,i3: integer;
    posweight: double;
    colpos: integer;
begin

 {f1.Read(out_dir+'packing.xls',SM);
 transpos.Active:=false;
 transpos.ParamByName('trans_id').Value:=cnvinfo.fieldbyname('trans_id').Value;
 transpos.Active:=true;
 transpos.First;
pospack.ParamByName('trans_id').Value:=cnvinfo.fieldbyname('trans_id').Value;
///pos.ParamByName('client_id').Value:=clientlist.fieldbyname('client_id').Value;
 pospack.Active:=true;
F1.TextRC[2,1]:='Выгрузка по транспорту: '+cnvinfo.fieldbyname('transinfo').Value+' Всего мест: '+ inttostr(cnvinfo.fieldbyname('poscount').Value);
 f1.SetActiveCell(2,1);
 f1.RowHeight[2]:=500;
 F1.setfont('arial',12,true,false,false,false,clblack,false,false);

 //f1.SelStartCol:=2;
 //F1.SelStartRow:=2;
 //F1.SelEndCol:=2;
 //F1.SelEndRow:=2;
 //F1.textRC[1,4]:=flylist.fieldbyname('tname').Value+'-'+inttostr(flylist.fieldbyname('flyno').Value);
 //f1.SetActiveCell(2,2);
 Screen.Cursor:=crHourGlass;
   n:=5;
    f1.SetColWidth(6,25,1000,false);
    f1.SelStartCol:=2;
    F1.SelEndCol:=9;
    f1.setfont('arial',8,true,false,false,false,clblack,false,false);
    F1.textRC[N-1,1]:='Регион';
    F1.textRC[N-1,2]:='Код';
    F1.textRC[N-1,3]:='Мест';
    F1.textRC[N-1,4]:='Вес';
    F1.textRC[N-1,5]:='Объём';

    f1.SelStartCol:=1;
    f1.SelEndCol:=5;
    f1.SelStartRow:=n-1;
    f1.SelEndRow:=n-1;
    F1.SetBorder(2, 1, 1, 1, 1, 0, clBlack, clBlack, clBlack, clBlack, clBlack);


   while not transpos.Eof do
    begin
  // poslist.Active:=false;
 //  poslist.ParamByName('trans_id').Value:=transinfo.fieldbyname('trans_id').Value;
// poslist.ParamByName('client_id').Value:=transpos.fieldbyname('client_id').Value;
// poslist.Active:=true;


//     F1.TextRC[N,1]:=clientlist.fieldbyname('destdiv_id').asstring;
     F1.TextRC[N,1]:=transpos.fieldbyname('town_code').asstring;
     f1.SetActiveCell(N,1);
     F1.setfont('arial',10,true,false,false,false,clblack,false,false);

     F1.TextRC[N,2]:=transpos.fieldbyname('xcode').asstring;
     F1.numberRC[N,3]:=transpos.fields[0].AsInteger;
     F1.numberRC[N,4]:=transpos.fields[1].Asfloat;
     F1.numberRC[N,5]:=transpos.fields[2].Asfloat;
     f1.SelStartCol:=2;
     f1.SelEndCol:=5;
     f1.SelStartRow:=n;
     f1.SelEndRow:=n;
     F1.SetBorder(1, 1, 1, 1, 1, 0, clBlack, clBlack, clBlack, clBlack, clBlack);

    posweight:=0;
    pospack.First;
        colpos:=6;
    while not pospack.Eof do begin

         f1.SetActiveCell(N,6);
         f1.RowHeight[n]:=330;
        // f1.setfont('arial',8,false,true,false,false,clblack,false,false);
         F1.numberRC[N,colpos]:=pospack.Fields[0].asinteger;
        pospack.Next;
        if colpos mod 20=0
         then
          begin
          inc(N);
          colpos:=6;
          end
           else
        inc(colpos);
     end;

 transpos.Next;
     inc(n);

end;
 FNAME:=temp_dir+'zb'+FormatdateTime('ddhhnnss', Now)+'.xls';
 F1.Write(FNAME, F1FileExcel5);
 ShellExecute(0, 'open', PCHAR(FNAME), '', '', sw_show);
 Screen.Cursor:=crDefault;
 transpos.Active:=false;
pospack.Active:=false;}

end;

procedure Tcnvform.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
  setfilterstore;
end;

procedure Tcnvform.incar_actExecute(Sender: TObject);
begin
   if cnvinfo.FieldByName('transout').AsString=''
 then
  MessageDlg('Введите дату прибытия', mtInformation, [mbOK],0)
  else
     begin
  showpacketform(3,cnvinfo.fieldbyname('trans_id').value);
  end;

end;

procedure Tcnvform.SpeedButton2Click(Sender: TObject);
begin
// newpos:=tnewpos.Create(application);
// newpos.ShowModal;
end;

procedure Tcnvform.DBCheckBox1Click(Sender: TObject);
begin
 setfilter;
end;

procedure Tcnvform.DBGrid1DblClick(Sender: TObject);
begin

bagpos:=tbagpos.create(application);
bagpos.IBQuery1.Params[0].Value:=cnvall.fieldbyname('zag_id').Value;
bagpos.packing.Params[0].Value:=cnvall.fieldbyname('zag_id').Value;
bagpos.IBQuery1.Active:=true;
bagpos.packing.Active:=true;
bagpos.edit2.Text:=inttostr(bagpos.ibquery1.fieldbyname('inside_num').value);
bagpos.edit3.Text:=floattostr(bagpos.ibquery1.fieldbyname('weight').value);
bagpos.edit4.Text:=floattostr(bagpos.ibquery1.fieldbyname('volume').value);


//bagpos.dxedit1.Text:=bagpos.ibquery1.fieldbyname('size_3').AsString;
//bagpos.edit6.Text:='0';
//bagpos.edit7.Text:='0';
//bagpos.dxedit1.Text:='0';

//bagpos.edit8.Text:=inttostr(bagpos.ibquery1.fieldbyname('ocenka').value);
//bagpos.edit9.Text:=inttostr(bagpos.ibquery1.fieldbyname('strahovka').value);
//bagpos.edit10.Text:=inttostr(bagpos.ibquery1.fieldbyname('totalsumm').value);
//bagpos.edit11.Text:=inttostr(bagpos.ibquery1.fieldbyname('summdept').value);
bagpos.Caption:='Место № '+cnvall.fieldbyname('bagnum1').Value+' ['+inttostr(cnvall.fieldbyname('xcode').Value)+']';
//bagpos.Height:=360;
//bagpos.Width:=360;
modif_bag:=false;
bagpos.showmodal;

end;

procedure Tcnvform.DBListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return
  then
   begin
    bagpos:=tbagpos.create(application);
bagpos.IBQuery1.Params[0].Value:=cnvpos.fieldbyname('zag_id').Value;
bagpos.packing.Params[0].Value:=cnvpos.fieldbyname('zag_id').Value;
bagpos.IBQuery1.Active:=true;
bagpos.packing.Active:=true;
bagpos.edit2.Text:=inttostr(bagpos.ibquery1.fieldbyname('inside_num').value);
bagpos.edit3.Text:=floattostr(bagpos.ibquery1.fieldbyname('weight').value);
bagpos.edit4.Text:=floattostr(bagpos.ibquery1.fieldbyname('volume').value);


//bagpos.dxedit1.Text:=bagpos.ibquery1.fieldbyname('size_3').AsString;
//bagpos.edit6.Text:='0';
//bagpos.edit7.Text:='0';
//bagpos.dxedit1.Text:='0';

//bagpos.edit8.Text:=inttostr(bagpos.ibquery1.fieldbyname('ocenka').value);
//bagpos.edit9.Text:=inttostr(bagpos.ibquery1.fieldbyname('strahovka').value);
//bagpos.edit10.Text:=inttostr(bagpos.ibquery1.fieldbyname('totalsumm').value);
//bagpos.edit11.Text:=inttostr(bagpos.ibquery1.fieldbyname('summdept').value);
bagpos.Caption:='Место № '+bagpos.ibquery1.fieldbyname('bagnum1').Value+' ['+inttostr(bagpos.ibquery1.fieldbyname('xcode').Value)+']';
bagpos.Height:=528;
bagpos.Width:=733;
modif_bag:=false;
bagpos.showmodal;
end;
end;

procedure Tcnvform.DBListView2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return
  then
   begin
    bagpos:=tbagpos.create(application);
bagpos.IBQuery1.Params[0].Value:=cnvstore.fieldbyname('zag_id').Value;
bagpos.packing.Params[0].Value:=cnvstore.fieldbyname('zag_id').Value;
bagpos.IBQuery1.Active:=true;
bagpos.packing.Active:=true;
bagpos.edit2.Text:=inttostr(bagpos.ibquery1.fieldbyname('inside_num').value);
bagpos.edit3.Text:=floattostr(bagpos.ibquery1.fieldbyname('weight').value);
bagpos.edit4.Text:=floattostr(bagpos.ibquery1.fieldbyname('volume').value);


//bagpos.dxedit1.Text:=bagpos.ibquery1.fieldbyname('size_3').AsString;
//bagpos.edit6.Text:='0';
//bagpos.edit7.Text:='0';
//bagpos.dxedit1.Text:='0';

//bagpos.edit8.Text:=inttostr(bagpos.ibquery1.fieldbyname('ocenka').value);
//bagpos.edit9.Text:=inttostr(bagpos.ibquery1.fieldbyname('strahovka').value);
//bagpos.edit10.Text:=inttostr(bagpos.ibquery1.fieldbyname('totalsumm').value);
//bagpos.edit11.Text:=inttostr(bagpos.ibquery1.fieldbyname('summdept').value);
bagpos.Caption:='Место № '+bagpos.ibquery1.fieldbyname('bagnum1').Value+' ['+inttostr(bagpos.ibquery1.fieldbyname('xcode').Value)+']';
bagpos.Height:=528;
bagpos.Width:=733;
modif_bag:=false;
bagpos.showmodal;
 end;
end;

procedure Tcnvform.makeinvoiceExecute(Sender: TObject);
begin
 helper.Active:=false;
 helper.SQL.Clear;
 helper.SQL.Add('select count(zag_id) from zagruzka where packcount=0 and outertrans_id='+cnvinfo.FieldByName('trans_id').AsString);
 helper.Active:=true;
 if helper.Fields[0].Value=0 then
  begin
 newfly:=tnewfly.create(application);
 newfly.color:=rgb(148,162,183);
 newfly.outno.Text:=cnvinfo.fieldbyname('gos_no').AsString;
 newordoper:=2;
 newfly.showmodal;
  end
 else
 ShowMessage('Для создания ивойса необходимо заполнить пакинг всех мест');
end;

procedure Tcnvform.pack_allExecute(Sender: TObject);
var SM: smallint;
    FNAME : string;
    n, i, i1,i2,i3,xcodeprev: integer;
    posweight: double;
    ExcelApp : Variant;
    Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
begin
 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Application.EnableEvents := false;
 Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');

 WorkBook.WorkSheets[1].Cells[2, 1]:='Сводный пакинг по транспорту: '+cnvinfo.fieldbyname('transinfo').AsString+' [ Мест: '+cnvinfo.fieldbyname('poscount').AsString+' Вес: '+cnvinfo.fieldbyname('posweight').AsString+' ]';
 cell1:=WorkBook.WorkSheets[1].Cells[2,1];
 cell2:=WorkBook.WorkSheets[1].Cells[2,1];
 range:=WorkBook.WorkSheets[1].range[cell1,cell2];
 range.font.name:='Arial';
 range.font.size:=12;
 range.font.bold:=true;
 WorkBook.WorkSheets[1].Rows[2].rowheight:=20;

 Screen.Cursor:=crHourGlass;
   n:=5;
 WorkBook.WorkSheets[1].Columns[8].ColumnWidth := 50;

  WorkBook.WorkSheets[1].Cells[n-2,5]:='Код';
  WorkBook.WorkSheets[1].Cells[n-1,6]:='Место';
  WorkBook.WorkSheets[1].Cells[n-1,7]:='Вес места';
  WorkBook.WorkSheets[1].Cells[n-1,8]:='Наименование';
  WorkBook.WorkSheets[1].Cells[n-1,9]:='Кол-во';



  cnvall.First;
  WorkBook.WorkSheets[1].Columns[6].ColumnWidth := 10;
  xcodeprev:=0;
      while not cnvall.Eof do
    begin
     if cnvall.fieldbyname('xcode').Value<>xcodeprev then
      begin
     WorkBook.WorkSheets[1].Cells[n,5]:=cnvall.fieldbyname('xcode').Value;
     xcodeprev:=cnvall.fieldbyname('xcode').Value;
      end;
     packing1.Active:=false;
     packing1.Active:=true;

     WorkBook.WorkSheets[1].Cells[N, 5].font.name:='arial';
     WorkBook.WorkSheets[1].Cells[N, 5].font.size:=9;
     WorkBook.WorkSheets[1].Cells[N, 5].font.bold:=true;
     WorkBook.WorkSheets[1].Cells[N, 5].font.colorindex:=3;

       posweight:=0;
       packing1.First;
       WorkBook.WorkSheets[1].Cells[N, 6]:=cnvall.Fieldbyname('bagnum1').asstring;
       WorkBook.WorkSheets[1].Cells[N, 7]:=cnvall.Fieldbyname('weight').value;
      while not packing1.Eof do begin
        WorkBook.WorkSheets[1].Cells[N, 6].font.name:='arial';
        WorkBook.WorkSheets[1].Cells[N, 6].font.size:=8;
        WorkBook.WorkSheets[1].Cells[N, 6].font.bold:=true;


         WorkBook.WorkSheets[1].Cells[N, 8]:=packing1.Fields[3].asstring;
         WorkBook.WorkSheets[1].Cells[N, 9]:=packing1.Fields[5].asfloat;

            inc(n);
         packing1.Next;
        end;
           inc(n);
         cnvall.Next;
     end;
    packing1.Active:=false;
  ExcelApp.visible:=true;
end;

end.
