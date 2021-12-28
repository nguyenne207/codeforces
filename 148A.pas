uses math;
const
	lim = round(1e5);
var
	a: Array[1..4] of Byte;
	d: Longint;
	checked: Array[1..lim] of Boolean;
	i, res: Longint;
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
procedure solve;
var
	i, j: Longint;
begin
	fillchar(checked, sizeof(checked), true);
	for i:=1 to 4 do
		if checked[a[i]] = true then
		begin
			j:=a[i];
			while j <= d do
			begin
				checked[j]:=false;
				j:=j + a[i];
			end;
		end;
	res:=0;
	for i:=1 to d do 
		if checked[i] = false then inc(res);
	write(res);
end;
begin
	for i:=1 to 4 do read(a[i]);
	read(d);
	solve;
end.