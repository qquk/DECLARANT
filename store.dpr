program store;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {mainform},
  DmUnit in 'DmUnit.pas' {dm: TDataModule},
  clientlist in 'clientlist.pas' {Form5},
  ImgStartUnit in 'ImgStartUnit.pas' {ImgStartForm},
  PriceUnit in 'PriceUnit.pas' {price},
  PricePosUnit in 'PricePosUnit.pas' {packpos},
  FlyListUnit in 'FlyListUnit.pas' {flyform},
  BagPosUnit in 'BagPosUnit.pas' {bagpos},
  NewFlyUnit in 'NewFlyUnit.pas' {newfly},
  AddPackingUnit in 'AddPackingUnit.pas' {addpackingform},
  setformunit in 'setformunit.pas' {setform},
  EnterUnit in 'EnterUnit.pas' {EnterUnit},
  ImportUnit in 'ImportUnit.pas' {importform},
  CnvUnit in 'CnvUnit.pas' {cnvform},
  WaitTransListUnit in 'WaitTransListUnit.pas' {waittransportf},
  ZaklListUnit in 'ZaklListUnit.pas' {zakl},
  NewZaklUnit in 'NewZaklUnit.pas' {zaklpos},
  AddZaklUnit in 'AddZaklUnit.pas' {addzakl},
  ShowColumnUnit in 'ShowColumnUnit.pas' {choosefield},
  newconfunit in 'newconfunit.pas' {newconf},
  translateunit in 'translateunit.pas' {translateform},
  packetform_unit in 'packetform_unit.pas' {packetform},
  LoadUnit in 'LoadUnit.pas' {showform},
  Unit17 in 'Unit17.pas' {packingform},
  funcUnit in 'funcUnit.pas',
  selectperiodunit in 'selectperiodunit.pas' {selectPeriod},
  oemcodevokb in 'oemcodevokb.pas' {oemcodevocb};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DEKLARANT';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tmainform, mainform);
  Application.Run;
end.
