set serveroutput on

declare
	n1 number:=&n1;
	n2 number:=&n2;
	d number;
begin
	dbms_output.put_line('value 1:'||n1);
	dbms_output.put_line('value 2:'||n2);
	d:=n1/n2;
	dbms_output.put_line('answer:'||d);

EXCEPTION

	WHEN ZERO_DIVIDE THEN
	dbms_output.put_line('You are trying to divide no by zero');
	dbms_output.put_line(' the number you are enter is must be   > 0');

end;
/