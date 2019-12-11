unit ShowColumnUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst;

type
  Tchoosefield = class(TForm)
    Button1: TButton;
    lb: TCheckListBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  choosefield: Tchoosefield;

implementation

uses FlyListUnit;

{$R *.dfm}

procedure Tchoosefield.Button1Click(Sender: TObject);
 var
  i: integer;
begin
   for i:=0 to lb.Items.Count-1
  do
  begin
   if lb.checked[i] then
   flyform.fly_pos_grid.Columns[i+1].Visible:=true
    else
   flyform.fly_pos_grid.Columns[i+1].Visible:=false;
  end;
    //flyform.fly_pos_grid.Columns[10].Width:=158;
    //flyform.fly_pos_grid.Columns[15].Width:=172;
    //flyform.fly_pos_grid.Columns[16].Width:=89;
close;
end;

procedure Tchoosefield.FormDeactivate(Sender: TObject);
 var
  i: integer;
begin


  end;

procedure Tchoosefield.CheckBox1Click(Sender: TObject);
 var
  i: integer;
begin
 if checkbox1.Checked then
  begin
    for i:=0 to lb.Items.Count-1
  do lb.state[i]:=cbchecked;
  checkbox2.Checked:=false;

  end;
end;

procedure Tchoosefield.CheckBox2Click(Sender: TObject);
 var
 i: integer;
begin
  if checkbox2.Checked then
  begin
    for i:=0 to lb.Items.Count-1
  do lb.checked[i]:=false;
  checkbox1.Checked:=false;

  end;
end;

end.
