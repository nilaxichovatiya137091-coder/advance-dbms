
set serveroutput on
BEGIN
    UPDATE empl
    SET salary = salary * 1.05
    WHERE deptno = 20;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No records found to update.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Successfully updated ' || SQL%ROWCOUNT || ' employee record(s).');
    END IF;
END;
/