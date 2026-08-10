BEGIN
    UPDATE empl
    SET salary = salary * 1.05
    WHERE deptno = 20;

    IF SQL%ISOPEN THEN
        NULL;
    ELSIF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No records found in Department 20.');
    ELSE
        INSERT INTO empl_update (empid, old_sal, new_sal, update_date)
        SELECT empid, salary / 1.05, salary, SYSDATE
        FROM empl
        WHERE deptno = 20;

        DBMS_OUTPUT.PUT_LINE('Salary updated for ' || SQL%ROWCOUNT || ' employee(s).');
    END IF;
END;
/