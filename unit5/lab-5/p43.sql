create or replace trigger del_Trig
before
DELETE on Dept
for each row
begin
insert into dept2
values(:Old.deptno,:Old.dname,:Old.loc);
end del_trig;

/