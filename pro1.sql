set serveroutput on;

begin
    update emp
    set salary = salary + (salary * 0.10)
    where deptno = 10;

    if sql%rowcount > 0 then
        dbms_output.put_line(sql%rowcount || ' employee(s) salary updated successfully.');
    else
        dbms_output.put_line('no employee found in department 10.');
    end if;
end;
/