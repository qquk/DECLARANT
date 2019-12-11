unit ImgStartUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TImgStartForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImgStartForm: TImgStartForm;

procedure HideStartImg;
procedure ShowStartImg;

implementation

{$R *.DFM}
procedure ShowStartImg;
begin
 ImgStartForm:=TImgStartForm.Create(Application);
 ImgStartForm.Show;
 ImgStartForm.Refresh;
end;

procedure HideStartImg;
begin
 ImgStartForm.Free;
end;

procedure TImgStartForm.FormPaint(Sender: TObject);
var
  reg :HRGN;
begin


  reg:=createroundrectrgn(0,0,imgstartform.Width,imgstartform.Height,20,20);
  setwindowrgn(imgstartform.Handle,reg,true);
  with canvas do begin
   pen.Color:=clblack;
   pen.Width:=2;
   RoundRect(0,0, clientwidth-1, clientheight-1,20,20);
  end;
end;

procedure TImgStartForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=cafree;
end;

end.
