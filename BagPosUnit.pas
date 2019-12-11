unit BagPosUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ToolWin, ActnMan, ActnCtrls, XPStyleActnCtrls,
  ExtCtrls, IBCustomDataSet, IBUpdateSQL, DB, IBQuery, ComCtrls, Grids,
  DBGrids, StdCtrls, DBCtrls, Mask, Buttons, IBSQL,MainUnit, IBStoredProc,
  IBDatabase ;

type
  Tbagpos = class(TForm)
    IBQuery1: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    Action1: TAction;
    Action2: TAction;
    CoolBar1: TCoolBar;
    Panel5: TPanel;
    CoolBar3: TCoolBar;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel7: TPanel;
    packtypes: TIBQuery;
    DataSource2: TDataSource;
    Bevel3: TBevel;
    Label9: TLabel;
    Edit5: TEdit;
    packing: TIBQuery;
    DataSource3: TDataSource;
    IBSQL1: TIBSQL;
    Label12: TLabel;
    bagpostran: TIBTransaction;
    addpacking: TIBStoredProc;
    changebagsumm: TIBStoredProc;
    del_packing: TIBStoredProc;
    upd: TIBSQL;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel4: TPanel;
    CoolBar2: TCoolBar;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    CoolBar4: TCoolBar;
    Edit1: TEdit;
    CoolBar5: TCoolBar;
    Action4: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBText1: TDBText;
    Action5: TAction;
    CheckBox1: TCheckBox;
    DBText2: TDBText;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
   
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Action3Execute(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure x2KeyPress(Sender: TObject; var Key: Char);
    procedure edit6Change(Sender: TObject);
    procedure edit7Change(Sender: TObject);
    procedure edit4Change(Sender: TObject);
    procedure edit3Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bagpos: Tbagpos;

implementation

uses  dmunit, PriceUnit, Unit17;

{$R *.dfm}


procedure Tbagpos.Action1Execute(Sender: TObject);
begin
upd.SQL.Clear;
upd.SQL.Add('update zagruzka set scomment='+'"'+edit5.Text+'"'+' where zag_id='+ibquery1.fieldbyname('zag_id').AsString);
upd.Prepare;
upd.ExecQuery;
changebagsumm.ParamByName('zag_id').Value:=ibquery1.fieldbyname('zag_id').Value;
changebagsumm.ParamByName('oldweight').Value:=ibquery1.fieldbyname('weight').Value;
changebagsumm.ParamByName('oldvolume').Value:=ibquery1.fieldbyname('volume').Value;
changebagsumm.ParamByName('newweight').Value:=strtofloat(edit3.Text);
changebagsumm.ParamByName('newvolume').Value:=strtofloat(edit4.Text);
changebagsumm.ParamByName('trans_id').Value:=ibquery1.fieldbyname('trans_id').Value;
changebagsumm.ParamByName('tariff_type').Value:=ibquery1.fieldbyname('tarif_type').Value;
changebagsumm.ParamByName('oldsummdest').Value:=ibquery1.fieldbyname('summdest').Value;
//changebagsumm.ParamByName('tariff').Value:=strtofloat(edit6.Text);
changebagsumm.ParamByName('part_id').Value:=ibquery1.fieldbyname('part_id').Value;
changebagsumm.ParamByName('fly_id').Value:=ibquery1.fieldbyname('ibtfly').Value;
changebagsumm.ParamByName('client_id').Value:=ibquery1.fieldbyname('client_id').Value;
changebagsumm.ParamByName('insidenum').Value:=strtoint(edit2.Text);
changebagsumm.Prepare;
changebagsumm.ExecProc;
 if dm.changebagsumm.ParamByName('flok').Value=-1
  then
MessageDlg('Место с таким номером  уже существует', mtInformation, [mbOK],0)
 else
bagpostran.CommitRetaining;
bagpostran.Active:=false;
bagpostran.Active:=true;

IBQuery1.Active:=false;
IBQuery1.Active:=true;
packing.Active:=true;
edit2.Text:=inttostr(ibquery1.fieldbyname('inside_num').value);
edit3.Text:=floattostr(ibquery1.fieldbyname('weight').value);
edit4.Text:=floattostr(ibquery1.fieldbyname('volume').value);
//edit6.Text:=floattostr(ibquery1.fieldbyname('tariff').value);
//edit7.Text:=inttostr(ibquery1.fieldbyname('bagposcount').value);

edit5.Text:=ibquery1.fieldbyname('scomment').value;
actiontoolbar1.ActionControls[0].Enabled:=false;
modif_bag:=false;
modif_part:=true;
{
}
end;

procedure Tbagpos.Action2Execute(Sender: TObject);
begin
bagpos.Close;
end;



procedure Tbagpos.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
 then
  begin
   packtypes.Active:=false;
   packtypes.sql.Clear;
   packtypes.SQL.Add('select * from packtypes where ptype=1 and ');
   packtypes.SQL.Add('packtypename like "'+edit1.Text+'%" order by packtypename');
   //bagpostran.Active:=false;
   //bagpostran.Active:=true;
   packtypes.Active:=true;
   //ibquery1.Active:=true;
   //packing.Active:=true;
   dbgrid1.SetFocus;
  end;
end;

procedure Tbagpos.FormShow(Sender: TObject);
begin
//actiontoolbar1.ActionControls[0].Enabled:=false;
edit1.SetFocus;
edit1.SelectAll;
end;

procedure Tbagpos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tbagpos.DBGrid1DblClick(Sender: TObject);
begin
{addpackingform:=taddpackingform.create(application);
addpackingform.packtypes.ParamByName('packtype_id').Value:=packtypes.fieldbyname('packtype_id').Value;
addpackingform.packtypes.Active:=true;

 dm.unittypes.Active:=true;
 dm.unittypes.First;
  while not dm.unittypes.Eof do begin
  addpackingform.punitcombo.Items.AddObject(dm.unittypes.fieldbyname('unittitle').Value ,pointer(integer(dm.unittypes.FieldByName('unttype').Value)));
   dm.unittypes.Next;
   end;
addpackingform.punitcombo.ItemIndex:=0;
 addpackingform.showmodal;}
 //formaddpackexecute(1);
end;

procedure Tbagpos.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tbagpos.SpeedButton1Click(Sender: TObject);
begin
 Action5.Execute;
end;

procedure Tbagpos.SpeedButton2Click(Sender: TObject);
begin
 packingform:=tpackingform.create(Application);
    packingform.packtypes.Params[0].Value:=packing.FieldByName('packtype_id').Value;
    addpacking.ParamByName('pt_id').Value:=packing.FieldByName('packtype_id').Value;
    addpacking.ParamByName('ptname').Value:=packing.FieldByName('packtypename').Value;
    addpacking.ParamByName('oper').Value:=2;
    addpacking.ParamByName('bag_id').Value:=ibquery1.FieldByName('zag_id').Value;
    addpacking.ParamByName('cnv_id').Value:=ibquery1.FieldByName('cnv_id').Value;
    addpacking.ParamByName('pack_id').Value:=packing.FieldByName('pack_id').Value;
    packingform.Edit1.Text:=packing.FieldByName('packkol').AsString;
    packingform.Edit2.Text:=packing.FieldByName('tmname').AsString;
    packingform.packtypes.Active:=true;
    packingform.ShowModal;
end;

procedure Tbagpos.SpeedButton3Click(Sender: TObject);
begin
if MessageDlg('Удалить позицию?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin
 {ibsql1.ParamByName('pack_id').Value:=packing.fieldbyname('pack_id').Value;
 ibsql1.ExecQuery;
 bagpostran.CommitRetaining;
 packing.Active:=false;
 packing.Active:=true;}
 upd.SQL.Clear;
 upd.SQL.Add('update zagruzka set packcount=packcount-1 where zag_id='+IBQuery1.FieldByName('zag_id').AsString);
 upd.ExecQuery;

 upd.SQL.Clear;
 upd.SQL.Add('update zagruzka set pack_kol=pack_kol-'+packing.FieldByName('packkol').AsString+' where zag_id='+IBQuery1.FieldByName('zag_id').AsString);
 upd.ExecQuery;

 upd.SQL.Clear;
 upd.SQL.Add('delete from packing where pack_id='+packing.FieldByName('pack_id').AsString);
 upd.ExecQuery;
 //upd.SQL.Clear;
 //upd.SQL.Add('delete from packing_origin where pack_id='+packing.FieldByName('pack_id').AsString);
 //upd.ExecQuery;


 dm.IBTransaction2.CommitRetaining;
 IBQuery1.Active:=false;
 IBQuery1.Active:=true;
 bagpos.packing.Active:=false;
 bagpos.packing.Active:=true;
   end;
end;

procedure Tbagpos.DBGrid2DblClick(Sender: TObject);
begin
SpeedButton2Click(SpeedButton2);
// formaddpackexecute(2);
end;

procedure Tbagpos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
  begin
    packingform:=tpackingform.create(Application);
    packingform.packtypes.Params[0].Value:=packtypes.FieldByName('packtype_id').Value;
    addpacking.ParamByName('pt_id').Value:=packtypes.FieldByName('packtype_id').Value;
    addpacking.ParamByName('ptname').Value:=packtypes.FieldByName('packtypename').Value;
    addpacking.ParamByName('oper').Value:=1;
    addpacking.ParamByName('bag_id').Value:=ibquery1.FieldByName('zag_id').Value;
    addpacking.ParamByName('cnv_id').Value:=ibquery1.FieldByName('cnv_id').Value;
    addpacking.ParamByName('pack_id').Value:=-1;
    packingform.packtypes.Active:=true;
    packingform.ShowModal;
  end;
end;

procedure Tbagpos.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9']) then
begin
key:=#0;
beep;
end;
actiontoolbar1.ActionControls[0].Enabled:=true;
modif_bag:=true;
modif_part:=true;
end;

procedure Tbagpos.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9','.',',']) then
begin
key:=#0;
beep;
end;
 if key='.' then key:=',';
actiontoolbar1.ActionControls[0].Enabled:=true;
modif_part:=true;
modif_bag:=true;
end;

procedure Tbagpos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if modif_bag=true
  then
   case application.MessageBox('Сохранить изменения?','Подтверждение',MB_YESNOCANCEL+MB_ICONQUESTION) of
      IDYES: begin actionmanager1.Actions[0].Execute; modif_part:=true end;
      IDCANCEL: canclose:=false;
      IDNO: canclose:=true;
   end;
end;



procedure Tbagpos.Action3Execute(Sender: TObject);
begin
//SpeedButton1Click(speedbutton1);
end;

procedure Tbagpos.Action4Execute(Sender: TObject);
begin
 edit1.SetFocus;
 edit1.SelectAll;
end;

procedure Tbagpos.Action5Execute(Sender: TObject);
begin
    packingform:=tpackingform.create(Application);
    packingform.packtypes.Params[0].Value:=-1;
    addpacking.ParamByName('pt_id').Value:=-1;
    addpacking.ParamByName('ptname').Value:='';
    addpacking.ParamByName('oper').Value:=3;
    addpacking.ParamByName('bag_id').Value:=ibquery1.FieldByName('zag_id').Value;
    addpacking.ParamByName('cnv_id').Value:=ibquery1.FieldByName('cnv_id').Value;
    addpacking.ParamByName('pack_id').Value:=-1;
    packingform.Edit4.Visible:=true;
    //packingform.packtypes.Active:=true;
    packingform.ShowModal;
end;

procedure Tbagpos.CheckBox1Click(Sender: TObject);
 var after: string;
begin
 packing.Active:=false;
 if CheckBox1.Checked then
  begin
  after:=StringReplace(packing.SQL.Strings[1],'packing','packing_origin',[rfReplaceAll]);
  packing.SQL.Strings[1]:=after;
  end
  else
   begin
 after:=StringReplace(packing.SQL.Strings[1],'packing_origin','packing',[rfReplaceAll]);
 packing.SQL.Strings[1]:=after;
   end;
 packing.Active:=true;
end;

procedure Tbagpos.Edit2Change(Sender: TObject);
begin
   actiontoolbar1.ActionControls[0].Enabled:=true;
   modif_bag:=true;
end;

procedure Tbagpos.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9','.',',']) then
begin
key:=#0;
beep;
end;
 if key='.' then key:=',';
actiontoolbar1.ActionControls[0].Enabled:=true;
modif_part:=true;
modif_bag:=true;
end;

procedure Tbagpos.x2KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9','.',',']) then
begin
key:=#0;
beep;
end;
 if key='.' then key:=',';

end;

procedure Tbagpos.edit6Change(Sender: TObject);
begin
  actiontoolbar1.ActionControls[0].Enabled:=true;
   modif_bag:=true;
end;

procedure Tbagpos.edit7Change(Sender: TObject);
begin
  actiontoolbar1.ActionControls[0].Enabled:=true;
   modif_bag:=true;
end;

procedure Tbagpos.edit4Change(Sender: TObject);
begin
  actiontoolbar1.ActionControls[0].Enabled:=true;
   modif_bag:=true;
end;

procedure Tbagpos.edit3Change(Sender: TObject);
begin
  actiontoolbar1.ActionControls[0].Enabled:=true;
   modif_bag:=true;
end;

procedure Tbagpos.Edit5Change(Sender: TObject);
begin
    actiontoolbar1.ActionControls[0].Enabled:=true;
   modif_bag:=true;
end;

end.
