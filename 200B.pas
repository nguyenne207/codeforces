uses math;
var
	n, i: Byte;
	a: Array[1..100] of Byte;
	sum: Longint;
	res: Real;
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
	sum:=0;
	for i:=1 to n do 
	begin
		read(a[i]);
		sum:=sum + a[i];
	end;
	res:=sum / n;
	writeln(res:0:12);
end.