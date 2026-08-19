--Write a PL/SQL block that uses a cursor attribute %ROWCOUNT
to display the name, department and basic salary of the first 5
employees getting the highest basic salary. (Use Explicit Cursor)

set serveroutput on

declare

Cursor s1 IS select * from empl order by salary desc;

d empl%ROWTYPE;

begin

open s1;

loop

fetch s1 INTO d;

exit when NOT s1%FOUND AND s1%ROWCOUNT > 5;

dbms_output.put_line( 'dept number:'||d.empid||'Name:'||d.empnm||'
Department:'||d.deptno||' Salary:'||d.salary);
end loop;

close s1;

end;
/