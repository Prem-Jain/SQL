create or replace trigger esal_changes
after delete or insert or update on employee593
for each row
when(new.esal > 15000)
declare
sal_diff number;
begin
sal_diff := :new.esal - :old.esal;
dbms_output.put_line('Old salary is ' || :old.esal);
dbms_output.put_line('New salary is ' || :new.esal);
dbms_output.put_line('Increased salary is ' || sal_diff);
end;
/
