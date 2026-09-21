
SET SERVEROUTPUT ON
DECLARE
    xempid    empl.empid%TYPE := &xempid;
    xsalary   empl.salary%TYPE;
    null_sal  EXCEPTION;
BEGIN
    SELECT salary INTO xsalary 
    FROM empl 
    WHERE empid = xempid;

    IF xsalary IS NULL THEN
        RAISE null_sal;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary is = ' || xsalary);
    END IF;

EXCEPTION
    WHEN null_sal THEN
        RAISE_APPLICATION_ERROR(-20202, 'Salary is not entered');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID not found.');
END;
/