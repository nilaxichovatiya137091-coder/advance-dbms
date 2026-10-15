create or replace trigger p42_sal
before INSERT on emp_sal
for each row
begin
	if  :NEW.salary > 500000 then
	raise_application_error(-20010,'You cant enter salary above 500000');
	end if;
end p42_sal;
/