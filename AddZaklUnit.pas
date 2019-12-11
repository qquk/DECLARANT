unit AddZaklUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, DBCtrls, Grids, DBGrids,
  ExtCtrls, ActnList, XPStyleActnCtrls, ActnMan;

type
  Taddzakl = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1PACKTYPE_ID: TIntegerField;
    IBQuery1PUNIT: TSmallintField;
    IBQuery1SUNIT: TIBStringField;
    IBQuery1PTYPE: TSmallintField;
    IBQuery1OUTERID: TIntegerField;
    IBQuery1CREATEDATE: TDateTimeField;
    IBQuery1LUPDATE: TDateTimeField;
    IBQuery1OEMCODE: TIBStringField;
    IBQuery1PRNTORDER: TIntegerField;
    IBQuery1CN_ID: TIntegerField;
    IBQuery1PACKPRICE: TFloatField;
    IBQuery1PACKTYPEPRICE1: TFloatField;
    IBQuery1PACKTYPEPRICE2: TFloatField;
    IBQuery1MAYSALE: TSmallintField;
    IBQuery1GROUPID: TIntegerField;
    IBQuery1GOODK_ID: TIntegerField;
    IBQuery1FAST_ID: TIntegerField;
    IBQuery1BARCODE: TIBStringField;
    IBQuery1PACKTYPENAME: TIBStringField;
    IBQuery1PTITLE: TIBStringField;
    IBQuery1CUST_ID: TIntegerField;
    IBQuery1UNITTYPE_ID: TSmallintField;
    IBQuery1OEMCODE_LONG: TIBStringField;
    IBQuery1ZAKL_NAME: TIBStringField;
    IBQuery1ZAKL_DATE: TDateTimeField;
    IBQuery1ZAKL_DOG: TIBStringField;
    IBQuery1UNITTITLE: TIBStringField;
    IBQuery1CLIENT_NAME: TIBStringField;
    ActionManager1: TActionManager;
    Action1: TAction;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure findKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  addzakl: Taddzakl;

implementation

uses FlyListUnit;

{$R *.dfm}

procedure Taddzakl.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Taddzakl.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
  then
   begin
     flyform.updzakl_id.parambyname('zakl_id').value:=ibquery1.fieldbyname('packtype_id').value;
     flyform.updzakl_id.Prepare;
     flyform.updzakl_id.ExecProc;
     flyform.flytran.CommitRetaining;
     flyform.actionmanager1.Actions[0].Execute;
     close;
   end;
end;

procedure Taddzakl.findKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return
  then
  dbgrid1.SetFocus;
end;

procedure Taddzakl.Action1Execute(Sender: TObject);
begin
 close;
end;

procedure Taddzakl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

end.
