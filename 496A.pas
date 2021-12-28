uses math;
var
	n: Int64;
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
	if n mod 2 = 0 then write(n div 2)
	else write(-n div 2 - 1);
end.