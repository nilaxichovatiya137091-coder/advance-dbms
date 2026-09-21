create or replace procedure incr_sal(xdeptno IN
number,per IN number)
Is
begin
update emp set salary=salary + (salary *(per/100)) WHERE deptno=xdeptno;
commit;
end incr_Sal;
/