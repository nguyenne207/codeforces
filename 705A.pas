uses math;
var
	n, i: Byte;
	res: AnsiString;
function max(a, b: Int64):Int64;
begin
	if a > b then exit(a);
	exit(b);
end;
function min(a, b: Int64):Int64;
begin
	if a < b then exit(a);
	exit(b);
end;
begin
	read(n);
	res:='I hate';
	for i:=2 to n do 
		if i mod 2 = 0 then res:=res + ' that I love'
		else res:=res + ' that I hate';
	res:= res + ' it';
	write(res);
end.