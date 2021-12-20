create or replace procedure prime(n in number) is
i number;
c number := 0;
begin
for i in 2..n-1
loop
if(mod(n, i) = 0) then
c := 1;
end if;
end loop;
if(c = 0) then
dbms_output.put_line('Prime');
else
dbms_output.put_line('Not Prime');
end if;
end;
/
