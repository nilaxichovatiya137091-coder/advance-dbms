SET SERVEROUTPUT ON;

DECLARE
    x NUMBER := &x;
    r CHAR(3);
BEGIN
    search_emp(x, r);

    IF r = 'YES' THEN
        DBMS_OUTPUT.PUT_LINE('Employee is present');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee is not present');
    END IF;
END;
/