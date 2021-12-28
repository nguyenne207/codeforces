uses math;
var
	a, b, res: String;
	i: Longint;
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
	readln(a);
	readln(b);
	res:='';
	for i:=1 to length(a) do 
		if a[i] <> b[i] then res:=res + '1'
		else res:=res + '0';
	write(res);
end.