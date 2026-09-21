CREATE OR REPLACE PROCEDURE search_emp(
    xempid IN NUMBER,
    result OUT CHAR
)
IS
    n NUMBER;
BEGIN
    SELECT emdid
    INTO n
    FROM emp
    WHERE emdid = xempid;

    result := 'YES';

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        result := 'NO';
END search_emp;
/