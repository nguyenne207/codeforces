uses math;
const lim = round(1e5);
var
	n, i, res, k: Longint;
	a: Array[1..lim] of String;
function max(a, b: Longint):Longint;
begin
	if a > b then exit(a);
	exit(b);
end;
begin
	readln(n);
	for i:=1 to n do readln(a[i]);
	res:=1;
	k:=1;
	for i:=1 to n - 1 do 
	begin
		if a[i][2] = a[i + 1][1] then inc(res)
		else 
		begin
			res:=max(res, k);		
			k:=0;
		end;
	end;
	write(res);
end.