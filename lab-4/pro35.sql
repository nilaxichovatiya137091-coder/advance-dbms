CREATE OR REPLACE FUNCTION fun_balance(p_acno NUMBER)
RETURN NUMBER
IS
    v_balance NUMBER;
BEGIN
    SELECT BALANCE
    INTO v_balance
    FROM ACCOUNT
    WHERE ACNO = p_acno;

    RETURN v_balance;
END fun_balance;
/