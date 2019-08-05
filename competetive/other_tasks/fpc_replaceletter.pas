var c: String;
var a, b: Char;
var i: Integer;

begin

  read(a, b, c);

  for i := 1 to length(c) do 
    if c[i] = a then 
      c[i] := b;

end.