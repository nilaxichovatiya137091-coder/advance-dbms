--User insert record in Dept the same data enter in
dept1
Create or replace trigger trig_copy
before INSERT on dept
for each row
begin
Insert into dept2
values(:New.deptno,:New.Dname,:New.LOC);
end trig_copy;
/