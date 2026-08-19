set serveroutput on

DECLARE
    a NUMBER := &num1;
    b NUMBER := &num2;
    c NUMBER;
BEGIN
    c := a / b;
    DBMS_OUTPUT.PUT_LINE('Result: ' || c);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Cannot divide by zero.');
END;
/