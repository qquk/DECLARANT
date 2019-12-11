unit oemcodevokb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, StdCtrls, ExtCtrls, DBCtrls, Grids,
  DBGrids, ComCtrls;

type
  Toemcodevocb = class(TForm)
    PageControl1: TPageControl;
    pg1: TTabSheet;
    DBGrid9: TDBGrid;
    DBNavigator4: TDBNavigator;
    Label6: TLabel;
    DBGrid7: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigator3: TDBNavigator;
    DBGrid8: TDBGrid;
    oemcode2: TIBTable;
    oemcode1: TIBTable;
    oemcode3: TIBTable;
    dsOemcode3: TDataSource;
    dsOemcode1: TDataSource;
    dsOemcode2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  oemcodevocb: Toemcodevocb;

implementation

{$R *.dfm}

procedure Toemcodevocb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

end.
