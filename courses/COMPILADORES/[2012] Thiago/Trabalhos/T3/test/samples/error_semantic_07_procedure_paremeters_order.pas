program nome2; {exemplo 2}
var a: real;
var b: integer;

procedure nomep(x: real, y:integer); 
var a, c: integer;
begin
    readln(c, a);
    x := 10;

    if a < c then
    begin
        a := c;
        writeln(a);
    end
    else c := a + c;
end;

begin {programa principal} 
    readln(a);
    nomep(b,a);
end.
