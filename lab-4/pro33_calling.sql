set serveroutput on
declare
id number:=&id;
nm char(50);
begin
search_emp(id,nm);
dbms_output.put_line('Ename:'||nm);
end;
/