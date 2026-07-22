SET SERVEROUTPUT ON;

DECLARE
    v_eid EMP1.EID%TYPE;
    v_salary EMP1.SALARY%TYPE;
BEGIN
    -- Enter Employee ID
    v_eid := &EID;

    -- Get salary from table
    SELECT SALARY
    INTO v_salary
    FROM EMP1
    WHERE EID = v_eid;

    -- Display result
    DBMS_OUTPUT.PUT_LINE('Employee ID : ' || v_eid);
    DBMS_OUTPUT.PUT_LINE('Salary      : ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');
END;
/