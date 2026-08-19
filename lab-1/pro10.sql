--emp delete
set serveroutput on;
declare
eid number(10):=&eid;
begin
delete from empl where  EMPID=eid;

commit;
dbms_output.put_line('delete the data');

end;
/