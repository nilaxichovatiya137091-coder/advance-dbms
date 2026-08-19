--program 6

SET SERVEROUTPUT ON;

DECLARE

    n NUMBER := &n;
     i number:=1;

BEGIN

 LOOP
        DBMS_OUTPUT.PUT_line(i );
        i:=i+1;
exit when(i>n);

    END loop; 


END;
/