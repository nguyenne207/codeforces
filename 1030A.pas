uses math;
var
	n: Byte;
	sum, i, x: Byte;
begin
	read(n);
	sum:=0;
	for i:=1 to n do 
	begin
		read(x);
		sum:=sum + x;
	end;
	if sum = 0 then write('EASY')
	else write('HARD');
end.