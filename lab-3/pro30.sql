set serveroutput on
declare
n1 number:=&n1;
n2 number:=&n2;
d number;
begin
dbms_output.put_line('value 1:'||n1);
dbms_output.put_line('value 2:'||n2);

d:=n1/n2;
dbms_output.put_line('answer:'||d);
EXCEPTION
WHEN ZERO_DIVIDE THEN
RAISE_APPLICATION_ERROR(-20001,'cant divide no by 0');
end;
/