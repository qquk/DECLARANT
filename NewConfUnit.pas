unit newconfunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBStoredProc, StdCtrls, Buttons;

type
  Tnewconf = class(TForm)
    cnnote: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    newconf: TIBStoredProc;
    add_but: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cnname: TEdit;
    chconf: TIBStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure add_butClick(Sender: TObject);
  private
  procedure WMLButtonDown(var Msg: TMessage); message WM_LBUTTONDOWN;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  newconf: Tnewconf;

implementation

uses dmunit, setformunit,MainUnit;

{$R *.dfm}

procedure Tnewconf.WMLButtonDown(var Msg: TMessage);
begin
Perform(WM_NCLBUTTONDOWN, HTCAPTION, Msg.LParam);
end;

procedure Tnewconf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure Tnewconf.FormPaint(Sender: TObject);
begin
 with canvas do begin
pen.Color:=clwhite;
pen.Width:=1;
//brush.Style:=bsclear;
//moveto(sb1.left, sb1.top)

rectangle(add_but.left-2, add_but.Top-2, add_but.left+add_but.Width+2, add_but.Top+add_but.Height+2);
rectangle(1, 1, clientwidth-1, clientheight-1);

//rectangle(1, 1, clientwidth, clientheight);
//brush.Style:=bssolid;
//brush.Color:=clwhite;
//rectangle(0, 0, clientwidth, 18);


end;
end;

procedure Tnewconf.SpeedButton2Click(Sender: TObject);
begin
 close;
end;

procedure Tnewconf.add_butClick(Sender: TObject);
 var i: integer;
 strnote: string;
begin
 if trim(cnname.Text)=''
  then
 MessageDlg('заполните поле наименовани€ конфигурации', mtInformation, [mbOK],0)
  else
   begin

   if cnfopertype=1 then
                   begin
   newconf.ParamByName('cnfname').value:=trim(cnname.Text);
   newconf.ParamByName('div_id').Value:=dm.sysenter.fieldbyname('sourcediv_id').Value;
   newconf.ParamByName('createdate').Value:=now();
   strnote:='';
     for i:=0 to cnnote.Lines.Count-1
      do begin
       strnote:=strnote+' '+cnnote.Lines[i];
      end;
    newconf.ParamByName('cnfnote').value:=trim(strnote);
    newconf.Prepare;
    newconf.ExecProc;
                   end;
    if cnfopertype=2 then
                   begin
   chconf.ParamByName('cnfname').value:=trim(cnname.Text);
   chconf.ParamByName('div_id').Value:=dm.sysenter.fieldbyname('sourcediv_id').Value;
   strnote:='';
     for i:=0 to cnnote.Lines.Count-1
      do begin
       strnote:=strnote+' '+cnnote.Lines[i];
      end;
    chconf.ParamByName('cnfnote').value:=trim(strnote);
    chconf.Prepare;
    chconf.ExecProc;
                   end;



    dm.IBTransaction2.CommitRetaining;
    close;
    setform.config.Active:=false;
    setform.config.Active:=true;
    setform.config.Last;

   end


end;

end.
