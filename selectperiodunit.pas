unit selectperiodunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, comobj,shellapi;

type
  TselectPeriod = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  selectPeriod: TselectPeriod;

implementation

uses PriceUnit,dmunit,mainunit;

{$R *.dfm}

procedure TselectPeriod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TselectPeriod.FormCreate(Sender: TObject);
 var
   y,m,d:word;
 begin
  decodeDate(now,y,m,d);
  DateTimePicker1.Date:=strtodate('01.01.'+inttostr(y));
  DateTimePicker2.Date:=now;
end;

procedure TselectPeriod.SpeedButton1Click(Sender: TObject);
 var
   n, i, i1,i2,i3: integer;
   ExcelApp : Variant;
   Workbook, Range, Cell1, Cell2, ArrayData  : Variant;
begin
 price.helper.SQL.Clear;
 price.helper.SQL.Add('select pc.oemcode,p.packtypename, pl.paramname,pl.oldvalue,pl.newvalue,pl.changedate, u.username ');
 price.helper.SQL.Add('from packtypes p, packtype_price pc, packpricelog pl, users u ');
 price.helper.SQL.Add('where p.packtype_id=pc.packtype_id and pl.ptp_id=pc.ptp_id and pl.user_id=u.user_id');
 price.helper.SQL.Add(' and pl.changedate>="'+datetostr(DateTimePicker1.Date)+'" and pl.changedate<="'+datetostr(DateTimePicker2.date+1)+'"');
 price.helper.Active:=true;

 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Application.EnableEvents := false;
 Workbook := ExcelApp.WorkBooks.Add(out_dir+'packing.xls');
 Screen.Cursor:=crHourGlass;
   n:=2;
   price.helper.First;
   WorkBook.WorkSheets[1].columns[1].columnwidth:=12;
   WorkBook.WorkSheets[1].Cells[N,1].value:='Код';
   WorkBook.WorkSheets[1].columns[2].columnwidth:=30;
   WorkBook.WorkSheets[1].Cells[N,2].value:='Наименование';
   WorkBook.WorkSheets[1].columns[3].columnwidth:=10;
   WorkBook.WorkSheets[1].Cells[N,3].value:='Параметр';
   WorkBook.WorkSheets[1].columns[4].columnwidth:=10;
   WorkBook.WorkSheets[1].Cells[N,4].value:='Старое зн.';
   WorkBook.WorkSheets[1].columns[5].columnwidth:=10;
   WorkBook.WorkSheets[1].Cells[N,5].value:='Новое зн.';
   WorkBook.WorkSheets[1].columns[6].columnwidth:=20;
   WorkBook.WorkSheets[1].Cells[N,6].value:='Время';
   WorkBook.WorkSheets[1].columns[7].columnwidth:=15;
   WorkBook.WorkSheets[1].Cells[N,7].value:='Пользователь';
   WorkBook.WorkSheets[1].rows[2].Font.Bold:=true;
   WorkBook.WorkSheets[1].columns[1].HorizontalAlignment:=3;//по центру
   n:=n+1;
    while not price.helper.Eof do begin
        WorkBook.WorkSheets[1].Cells[N,1].value:=price.helper.fieldbyname('oemcode').AsString;
        WorkBook.WorkSheets[1].Cells[N,2].value:=price.helper.fieldbyname('packtypename').AsString;
        WorkBook.WorkSheets[1].Cells[N,3].value:=price.helper.fieldbyname('paramname').asstring;
        WorkBook.WorkSheets[1].Cells[N,4].value:=price.helper.fieldbyname('oldvalue').AsString;
        WorkBook.WorkSheets[1].Cells[N,5].value:=price.helper.fieldbyname('newvalue').AsString;
        WorkBook.WorkSheets[1].Cells[N,6].value:=price.helper.fieldbyname('changedate').AsString;
        WorkBook.WorkSheets[1].Cells[N,7].value:=price.helper.fieldbyname('username').AsString;

        inc(n);
        price.helper.Next;
     end;
 price.helper.active:=false;
 ExcelApp.Visible:=true;
 Screen.Cursor:=crDefault;
 close;

 end;

end.
