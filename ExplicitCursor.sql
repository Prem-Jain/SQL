declare
cursor c1 is select sno, m1, m2, m3 from stud593;
temp stud593%rowtype;
begin
open c1;
loop
fetch c1 into temp.sno, temp.m1, temp.m2, temp.m3;
exit when c1%notfound;
temp.tot := (temp.m1 + temp.m2 + temp.m3);
temp.avg := (temp.tot / 3);
if(temp.avg >= 75) then
temp.grade := 'Distinction';
elsif(temp.avg >= 60) then
temp.grade := 'First Class';
elsif(temp.avg >= 50) then
temp.grade := 'Second Class';
else
temp.grade := 'Third Class';
end if;
update stud593 set tot = temp.tot, avg = temp.avg, grade = temp.grade where sno = temp.sno;
end loop;
close c1;
end;
/
