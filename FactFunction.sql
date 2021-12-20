create or replace function fact(a in number) return number is
i number;
f number;
begin
f := 1;
for i in 2..a
loop
f := f * i;
end loop;
return f;
end fact;
/
