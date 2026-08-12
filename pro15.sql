set serveroutput on

declare

Cursor s1 (p_dept empl.deptno%TYPE) IS 
  select * from empl where deptno = p_dept;

Cursor s2 IS 
  select distinct deptno from empl;

tot number;

begin

for d2 in s2 loop

tot := 0;

for d1 in s1(d2.deptno) loop

tot := tot + d1.salary;

dbms_output.put_line('id:'||d1.empid||'Name:'||d1.empnm||' Salary:'||d1.salary);

end loop;

dbms_output.put_line('Dept:'||d2.deptno||' Total:'||tot);

end loop;

end;
/