
declare
    v_eid emp.eid%type;
    v_name emp.ename%type;
begin
    v_eid := &eid;

    search_emp(v_eid, v_name);

    dbms_output.put_line('employee name: ' || v_name);
end;
/
