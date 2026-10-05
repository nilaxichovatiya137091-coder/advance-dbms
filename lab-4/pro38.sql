
create
 or replace procedure search_emp(
    p_eid in emp.eid%type,
    p_name out emp.ename%type
)
is
begin
    select ename
    into p_name
    from emp
    where eid = p_eid;

exception
    when no_data_found then
        p_name := 'employee not found';
end;
/
