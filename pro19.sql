set serveroutput on;

declare
    cursor c1 is
        select id, name, city
        from customer
        order by name;

    xid customer.id%type;
    xname customer.name%type;
    xcity customer.city%type;

begin
    open c1;

    loop
        fetch c1 into xid, xname, xcity;
        exit when c1%notfound;

        dbms_output.put_line(xid || ' ' || xname || ' ' || xcity);
    end loop;

    close c1;
end;
/