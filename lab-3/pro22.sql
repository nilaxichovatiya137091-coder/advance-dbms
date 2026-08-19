set serveroutput on

DECLARE
    v_name stud.name%TYPE := '&student_name';
    v_rlno stud.rlno%TYPE;
    v_div  stud.div%TYPE;
BEGIN
    SELECT rlno, div 
    INTO v_rlno, v_div
    FROM stud
    WHERE name = v_name;

    DBMS_OUTPUT.PUT_LINE('Roll No: ' || v_rlno || ', Division: ' || v_div);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student not found.');
END;
/