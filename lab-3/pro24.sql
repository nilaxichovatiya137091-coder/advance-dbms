set serveroutput on

DECLARE
    
    v_salary empl.salary%TYPE;
    v_age    NUMBER := &age;
    e_invalid_age EXCEPTION;

BEGIN
    IF v_age <> 50 THEN
        RAISE e_invalid_age;
    END IF;

    SELECT salary INTO v_salary FROM empl  WHERE ROWNUM = 1;

    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);

EXCEPTION
    
WHEN e_invalid_age THEN
      
  DBMS_OUTPUT.PUT_LINE('Employee age is not 50 years.');
    
WHEN NO_DATA_FOUND THEN
    
    DBMS_OUTPUT.PUT_LINE('No employee record found.');

END;
/