CREATE OR REPLACE PROCEDURE increase_salary(
    p_deptno IN NUMBER,
    p_percent IN NUMBER
)
IS
BEGIN
    UPDATE emp
    SET salary = salary + (salary * p_percent / 100)
    WHERE deptno = p_deptno;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary increased successfully.');
END;
/