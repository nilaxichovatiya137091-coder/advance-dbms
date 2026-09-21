--invalid_number
set serveroutput on
declare

n1 number;
grno varchar2(20):='A123';

begin
dbms_output.put_line('grno:'||grno);
n1:=To_number(grno);
dbms_output.put_line('number 1:'||n1);
EXCEPTION
WHEN INVALID_NUMBER THEN
dbms_output.put_line('You cant store text into number');
when Value_Error then
dbms_output.put_line('You cant store text into number');
end;
/