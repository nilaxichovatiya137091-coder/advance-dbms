-- o prompt the user for input
SET SERVEROUTPUT ON;


DECLARE
    v_num    NUMBER := &p_num;
    v_square NUMBER;
    v_cube   NUMBER;
BEGIN
    -- Calculating square and cube
    v_square := v_num * v_num;
    v_cube   := v_num * v_num * v_num;

    -- Displaying the results
    DBMS_OUTPUT.PUT_LINE('--- Results ---');
    DBMS_OUTPUT.PUT_LINE('Original Number: ' || v_num);
    DBMS_OUTPUT.PUT_LINE('Square         : ' || v_square);
    DBMS_OUTPUT.PUT_LINE('Cube           : ' || v_cube);
END;
/