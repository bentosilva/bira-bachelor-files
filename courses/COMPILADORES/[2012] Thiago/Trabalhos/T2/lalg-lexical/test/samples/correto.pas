program correto;
var a, b, c:integer;

procedure proc(a1 : integer);
var a, b, c:integer;
begin
	a:=1;
	if a<1 then
		a:=12;
end;


begin
	a:=-2;
	b:=10;
	c:=11;
	a:=b+c;
	read(a);
	write(b);
	if b>5 then
	   begin
         a:=+20;
         b:=10*c;
         c:=a / b;
       end
	else
	    begin
		   if a<1 then
			  a:=1
		   else
			  b:=2;
	    end;
	proc(a);
	proc(b);
	while a>1 do
        begin
      		if b>10 then
			   b:=2;
		    a:=a-1;
        end;
end.
