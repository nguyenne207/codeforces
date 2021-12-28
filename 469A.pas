uses math;
var
	x, n, p, i: Byte;
	d: Array[1..100] of Byte;
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
begin
	for i:=1 to n do
		if d[i] = 0 then
		begin
			write('Oh, my keyboard!');
			exit;
		end;
	write('I become the guy.')
end;
begin
	read(n);
	read(p);
	fillchar(d, sizeof(d), 0);
	for i:=1 to p do 
	begin
		read(x);
		inc(d[x]);
	end;
		read(p);
	for i:=1 to p do 
	begin
		read(x);
		inc(d[x]);
	end;
	solve;
end.