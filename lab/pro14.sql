set serveroutput on

declare

Cursor s2 IS select eid,ename, salary from emp1 order by salary desc;

c number := 0;

begin

for d in s2 loop

c := c + 1;

dbms_output.put_line('id: ' || d.eid || 'name:'||d.ename||' Salary: ' || d.salary);

exit when c = 3;

end loop;

end;
/