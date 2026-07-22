--pro_8

SET SERVEROUTPUT ON;

DECLARE
    v_eid        EMP1.EID%TYPE;
    v_ename      EMP1.ENAME%TYPE;
    v_basicsal   EMP1.BASICSAL%TYPE;
    v_hra        NUMBER;
    v_da         NUMBER;
    v_medical    NUMBER := 500;
    v_pf         NUMBER;
    v_gross_sal  NUMBER;
BEGIN
    v_eid := &Enter_EID;

    SELECT ENAME, BASICSAL
    INTO v_ename, v_basicsal
    FROM EMP1
    WHERE EID = v_eid;

    v_hra := v_basicsal * 0.15;
    v_da := v_basicsal * 0.50;
    v_pf := v_basicsal * 0.10;

    v_gross_sal := v_basicsal + v_da + v_hra + v_medical - v_pf;

    DBMS_OUTPUT.PUT_LINE('Employee ID   : ' || v_eid);
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_ename);
    DBMS_OUTPUT.PUT_LINE('Basic Salary  : ' || v_basicsal);
    DBMS_OUTPUT.PUT_LINE('Gross Salary  : ' || v_gross_sal);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS