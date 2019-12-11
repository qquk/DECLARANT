unit EnterUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Buttons, StdCtrls, Mask, DBCtrls,
  Grids, DBGrids, ImgList, ztvRegister, ztvBase, ztvUnZIP;

type
  TForm18 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    MaskEdit1: TMaskEdit;
    SpeedButton1: TSpeedButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    ImageList1: TImageList;
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    UnZip1: TUnZip;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;


implementation

uses MainUnit, dmunit;

{$R *.dfm}

procedure TForm18.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 if access=false then
  begin
  //action:=cafree;
  mainform.close;
  end;
 
end;

procedure TForm18.SpeedButton1Click(Sender: TObject);
var i: integer;
begin
if dm.users.FieldByName('userpass').Value=maskedit1.Text
 then begin
 user_id_global:=dm.users.FieldByName('user_id').Value;
 cnf_id_global:=dm.config.fieldbyname('cnf_id').value;
 //dm.users.Locate('user_id',inttostr(dblookupcombobox1.KeyValue), [loCaseInsensitive ,loPartialKey]);
   form18.close;
 // if dm.users.FieldByName('userlevels').Value=2 then begin
// for i:=0 to 19 do
//  begin
     //mainform.dxBarManager1.Items[i].Visible:=ivNever;
// end;
// end;


   access:=true;
  end
 else
 begin
  maskedit1.Text:='';
  maskedit1.SetFocus;
  access:=false;
 end

end;

procedure TForm18.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
  then
  SpeedButton1Click(speedbutton1);
end;

procedure TForm18.DBLookupComboBox1Click(Sender: TObject);
begin
// label3.Caption:=inttostr(dm.users.fieldbyname('user_id').Value);
end;

procedure TForm18.DBLookupComboBox2CloseUp(Sender: TObject);
begin
 dm.users.Last;
end;

procedure TForm18.DBLookupListBox1Click(Sender: TObject);
begin
  dm.users.Last;
end;

procedure TForm18.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
  ImageIndex:=0;
  ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left+4,Rect.Top+5, ImageIndex );
  _Y:=Rect.Top+Round((Rect.Bottom-Rect.Top)/2)-Round(TDBGrid(Sender).canvas.TextHeight('W')/2);
  TDBGrid(Sender).Canvas.Font.Size := 12;
  TDBGrid(Sender).Canvas.Font.Color := RGB(7,7,7);
  TDBGrid(Sender).Canvas.Font.Name := 'Verdana';
  TDBGrid(Sender).Canvas.Font.Style:=[fsbold];
  TDBGrid(Sender).canvas.TextOut(Rect.Left+40,_y+2, Column.Field.Text);

  TDBGrid(Sender).Canvas.Font.Color := clgray;
  TDBGrid(Sender).Canvas.Font.Style:=[];
  TDBGrid(Sender).Canvas.Font.Size := 8;
  TDBGrid(Sender).Canvas.Font.Name := 'Verdana';
  TDBGrid(Sender).canvas.TextOut(Rect.Left+40,_y+18+1, Column.Field.Text);


end;

procedure TForm18.DBGrid1CellClick(Column: TColumn);
begin
   dm.users.last;
end;

procedure TForm18.SpeedButton2Click(Sender: TObject);
begin
 access:=false;
close;
 mainform.Close;
end;

end.
