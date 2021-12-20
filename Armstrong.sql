declare
n number;
t number;
r number;
s number;
begin
n := &n;
s := 0;
t := n;
while(n != 0)
loop
r := mod(n, 10);
s := s + r * r * r;
n := trunc(n / 10);
end loop;
if(s = t) then
dbms_output.put_line('Armstrong');
else
dbms_output.put_line('Not Armstrong');
end if;
end;
/