unit funcUnit;

interface
uses Windows,Messages, SysUtils, Variants,Classes, Graphics, Controls, Forms,
  Dialogs;
procedure openPriceForm(opentype,cust_id: integer);
implementation
 uses PriceUnit, dmunit;
procedure openPriceForm(opentype,cust_id: integer);
 begin
   screen.Cursor:=crHourGlass;
   price:=tprice.create(Application);
   price.actiontoolbar1.ActionControls[2].Visible:=true;
   price.cust_id:=cust_id;

   if opentype=3 then
    price.Panel2.Visible:=true;

   price.packtypes.SQL.Clear;
   price.packtypes.SQL.add('select pc.sert,pc.packprice_weight, pc.packprice_cust, pc.packtypename_long,pc.duty,pc.load,pc.oemcode,p.packtypename,pc.packtypename_eng as ptitle, pc.packtypename_ch as title_ch, pc.packprice, c.client_name, p.packtype_id,');
   price.packtypes.SQL.Add('c.client_id,pc.ptp_id,pc.send_id as cust_id,u.unittitle,p.unittype_id');
   price.packtypes.SQL.Add( ' from PACKTYPES p,packtype_price pc,clients c,unittypes u');
   price.packtypes.SQL.Add(' where p.packtype_id=pc.packtype_id and ptype=0 and pc.delflag=0 and pc.send_id=c.client_id and c.status=1 ' );
   price.packtypes.SQL.Add(' and c.client_id='+inttostr(cust_id));
   price.packtypes.SQL.Add(' and p.unittype_id=u.unttype and pc.cnf_id='+dm.config.fieldbyname('cnf_id').AsString+' order by packtypename, pc.oemcode');

   price.packtypes.Active:=true;
   price.cust_com.Enabled:=false;
   price.actiontoolbar1.ActionControls[3].Visible:=false;
   price.Caption:='Товары  '+price.packtypes.FieldByName('client_name').AsString;

   price.FormStyle:=fsstayontop;
   price.Visible:=false;
   case opentype of
     3: price.Caption:='Разделение позиции';
     5: price.Caption:='Объединение позиций';
     6: price.Caption:='Замена позиции';
     2: price.Caption:='Добавление позиции';
   end;
   price.showmodal;
   screen.Cursor:=crDefault;
 end;
end.
