
SET SERVEROUTPUT ON;
DECLARE
    v_deptno      empl.deptno%TYPE := &deptno;
    v_count       NUMBER := 0;
    no_dept_found EXCEPTION;

    CURSOR emp_cursor IS   SELECT empid, empnm, deptno, salary   FROM empl   WHERE deptno = v_deptno;

BEGIN
    FOR rec IN emp_cursor LOOP
        INSERT INTO emp_backup (empid, empnm, deptno, salary) VALUES (rec.empid, rec.empnm, rec.deptno, rec.salary);
        
        v_count := v_count + 1;
    END LOOP;

    IF v_count = 0 THEN
        RAISE no_dept_found;
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_count || ' record(s) inserted into EMP_BACKUP.');
        COMMIT;
    END IF;

EXCEPTION
    WHEN no_dept_found THEN
        DBMS_OUTPUT.PUT_LINE('Error: NO_DEPT_FOUND. No records found for Department Number: ' || v_deptno);
        ROLLBACK;
END;
/