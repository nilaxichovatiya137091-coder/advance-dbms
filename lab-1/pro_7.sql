--definition 7 with nested if
set serveroutput on
declare

xrlno NUMBER(2):=&xrlno;
xm1 NUMBER(3);
xm2 NUMBER(3);
xm3 NUMBER(3);
xm4 NUMBER(3);
xm5 NUMBER(3);
tot NUMBER(4);
p NUMBER(3);
 
begin

SELECT m1,m2,m3,m4,m5 INTO xm1,xm2,xm3,xm4,xm5 FROM mid1 WHERE RLNO = xrlno;
tot:=xm1 + xm3 + xm3 + xm4 + xm5;
p:=tot/5;
 
if xm1 > 40 and xm2 > 40 and xm3 > 40 and xm4 >40 and xm5 > 40

then
 
if p >= 40 and p < 50 then

update mid1 set total = tot,per = p,result = 'Pass',Grade = 'D' where RLNO = xrlno;

elsif p>= 50 and p< 60 then

update mid1 set total = tot,per = p,result = 'Pass',Grade = 'C' where RLNO = xrlno;

elsif p>= 60 and p< 70 then
update mid1 set total = tot,per = p,result = 'Pass',Grade = 'B' where RLNO = xrlno;

elsif p >= 70 and p <= 100 then
update mid1 set total = tot,per = p,result = 'Pass',Grade = 'A' where RLNO = xrlno;

else

update mid1 set total = tot,per = p,result = 'Fail',Grade = 'F' where RLNO = xrlno;

end if;

else
update mid1 set total = tot,per=p,result='Fail',Grade='F' where RLNO=xrlno;

end if;
end;
/