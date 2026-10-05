set serveroutput on;

declare
    xanswer number;
begin
    xanswer := fun_square(&x);
    dbms_output.put_line('square = ' || xanswer);
end;
/