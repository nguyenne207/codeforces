uses math;
var
	res: Array[1..100] of Longint;
	n, i, x: Longint;
begin
	read(n);
	fillchar(res, sizeof(res), 0);
	for i:=1 to n do 
	begin
		read(x);
		res[x]:=i;
	end;
	for i:=1 to 100 do
		if res[i] > 0 then write(res[i], #32);
end.