--user cant access account table before 9 AM and after
10 Pm
create or replace trigger trig_time
before insert or update or delete on account
for each row
begin
if trim(to_Char(sysdate,'HH')) < 9 or
trim(to_Char(sysdate,'HH')) > 14 then
Raise_application_error(-20201,'Access Denied');
end if;
end trig_time;
/