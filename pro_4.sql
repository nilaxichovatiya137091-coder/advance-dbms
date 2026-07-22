-- capture user input
SET SERVEROUTPUT ON;

DECLARE
    
    feet    NUMBER := &feet;
    inches  NUMBER;
    cm      NUMBER;
    meters  NUMBER;
BEGIN
   
    inches := feet * 12;
    cm     := feet * 30.48;
    meters :=feet * 0.3048;

    
  
    DBMS_OUTPUT.PUT_LINE('Measurement in feet: ' ||feet );

    DBMS_OUTPUT.PUT_LINE('Inches      : '||inches);
    DBMS_OUTPUT.PUT_LINE('Centimeters : ' ||  cm);
    DBMS_OUTPUT.PUT_LINE('Meters      : ' ||  meters);
   
END;
/