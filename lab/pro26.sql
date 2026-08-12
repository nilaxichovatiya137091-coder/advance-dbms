SET SERVEROUTPUT ON;

DECLARE
    enm CHAR(15);
    sal NUMBER(6);
    dept NUMBER := &dept;
BEGIN
    SELECT empnm, salary INTO enm, sal 
    FROM empl 
    WHERE deptno = dept;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || enm);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || sal);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Department No: ' || dept || ' not available in table');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Department No: ' || dept || ' contains multiple employees. Cannot fetch a single row.');
END;
/