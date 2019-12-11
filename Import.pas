unit import;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls;

type
  Timportform = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    pb1: TProgressBar;
    add_but: TSpeedButton;
    od1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure add_butClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  importform: Timportform;

implementation

{$R *.dfm}

procedure Timportform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure Timportform.FormPaint(Sender: TObject);
begin
 with canvas do
  begin
   pen.Width:=1;
   pen.Color:=clblack;
   rectangle(add_but.left-1, add_but.Top-1, add_but.left+add_but.Width+1, add_but.Top+add_but.Height+1);
  end;
end;

procedure Timportform.add_butClick(Sender: TObject);
begin
 if od1.Execute then
 begin
  pb1.Visible:=true;
 end;
end;

end.
