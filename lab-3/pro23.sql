set serveroutput on

DECLARE
    v_empnm  empl.empnm%TYPE := '&employee_name';
    v_salary empl.salary%TYPE;
BEGIN
    SELECT salary 
    INTO v_salary 
    FROM empl 
    WHERE empnm = v_empnm;

    DBMS_OUTPUT.PUT_LINE('Basic Salary: ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/