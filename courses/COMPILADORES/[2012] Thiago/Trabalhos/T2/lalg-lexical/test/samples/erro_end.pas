program correto;
var a, b, c:integer;


begin
	a:=2;
	b:=10;
	c:=11;
	a:=b+c;
	read(a);
	write(b);
	if b>5 then
	begin
		a:=20;
		b:=10*c;
		c:=a / b;
	   	while a>1 do
          	begin
             		if b>10 then
               		b:=2;
		     	a:=a-1;
	      	end;
end.
