--defination 

create or replace trigger pro42
before insert on emp_sal

for each row

begin
 
if:NEW.SALARY > 50000 THEN
RAISE_APPLICATION_ERROR(-20022,'your  cant enter salary  above 50000');

END IF;
end  pro42;
/