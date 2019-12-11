unit LoadUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tshowform = class(TForm)
    but1: TSpeedButton;
    StaticText2: TStaticText;
    statictext1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure but1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  showform: Tshowform;

implementation

uses PriceUnit;

{$R *.dfm}

procedure Tshowform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure Tshowform.FormPaint(Sender: TObject);
var
  reg :HRGN;
begin
  with canvas do begin
   brush.Style:=bssolid;
   brush.Color:=$00C66931;
   rectangle(0, 0, showform.Width, 20);
   reg:=createroundrectrgn(0,0,showform.Width,showform.Height,20,20);
   setwindowrgn(showform.Handle,reg,true);
   pen.Color:=clblack;
   brush.Style:=bsclear;
   pen.Width:=1;
   RoundRect(0,0, clientwidth-1, clientheight-1,20,20);
    if but1.Visible then
     begin
     end;

 end;

end;

procedure Tshowform.but1Click(Sender: TObject);
begin
 close;
end;

end.
