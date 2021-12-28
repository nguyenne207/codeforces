uses math;
var
	a: Array[1..4] of Longint;
	i, res, k: Longint;
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
procedure sort(l, r: Longint);
var
	i, j, mid, t: Longint;
begin
	mid:=a[(l + r) div 2];
	i:=l;
	j:=r;
	while i <= j do
	begin
		while a[i] < mid do inc(i);
		while a[j] > mid do dec(j);
		if i <= j then 
		begin
			t:=a[i];
			a[i]:=a[j];
			a[j]:=t;
			inc(i);
			dec(j);
		end;
	end;
	if i < r then sort(i, r);
	if l < j then sort(l, j);
end;
begin
	for i:=1 to 4 do read(a[i]);
	sort(1, 4);

	res:=0;
	k:=0;
	for i:=1 to 3 do 
		if a[i] = a[i + 1] then inc(k)
		else
		begin
			res:=res + k;
			k:=0;
		end;
	res:=res + k;
	write(res);
end.				