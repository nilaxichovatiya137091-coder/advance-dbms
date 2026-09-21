CREATE OR REPLACE PROCEDURE search_emp(
    xempid IN NUMBER,
    enm OUT CHAR
)
IS
BEGIN
    SELECT emname
    INTO enm
    FROM emp
    WHERE emdid = xempid;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('ID not found');
END search_emp;
/