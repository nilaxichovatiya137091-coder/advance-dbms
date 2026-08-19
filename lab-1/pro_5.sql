--print celsius and fahrenheit

set serveroutput on
declare
celsius number:=&celsius;
fahrenheit number;

begin;
dbms_output.put_line('temprature in celsius:'||celsius);
dbms_output.put_line('temprature in fahrenheit:'||fahrenheit);
end;

/