DECLARE
    CURSOR c_empl IS
        SELECT empid, salary FROM empl WHERE deptno = 20 FOR UPDATE;
    v_empid   empl.empid%TYPE;
    v_salary  empl.salary%TYPE;
    v_new_sal empl.salary%TYPE;
BEGIN
    OPEN c_empl;
    IF c_empl%ISOPEN THEN
        LOOP
            FETCH c_empl INTO v_empid, v_salary;
            EXIT WHEN c_empl%NOTFOUND;

            v_new_sal := v_salary * 1.05;

            UPDATE empl SET salary = v_new_sal WHERE CURRENT OF c_empl;

            INSERT INTO empl_update (empid, old_sal, new_sal, update_date)
            VALUES (v_empid, v_salary, v_new_sal, SYSDATE);
        END LOOP;

        IF c_empl%ROWCOUNT = 0 THEN
            DBMS_OUTPUT.PUT_LINE('No records found in Department 20.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Salary updated for ' || c_empl%ROWCOUNT || ' employee(s).');
        END IF;

        CLOSE c_empl;
    END IF;
END;
/