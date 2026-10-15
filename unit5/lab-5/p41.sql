--Write a trigger to restrict users from accessing the
--table on weekends.
create or replace trigger tri_thursday
before insert or update or delete
On Account
for each row
begin
if trim(To_char(sysdate,'Day'))='Thursday' then
Raise_application_error(-20001,'You cant access
table on thursday');
end if;

end tri_thursday;
/