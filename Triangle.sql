declare
n number := &n;
i number;
j number;
begin
for i in 1..n
loop
for j in 1..i
loop
dbms_output.put(i || ' ');
end loop;
dbms_output.put_line('');
end loop;
end;
/