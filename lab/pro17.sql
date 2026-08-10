set serveroutput on
declare

cursor c1 is select id,name,city from customer;

i customer.id%type;
n customer.name%type;
c customer.city%type;

begin
open c1;
loop
fetch c1 into i,n,c;

exit when c1%notfound;

dbms_output.put_line('id:'||i);
dbms_output.put_line('name:'||n);
dbms_output.put_line('city:'||c);
dbms_output.put_line('------------------------------');
end loop;
close c1;
end;
/