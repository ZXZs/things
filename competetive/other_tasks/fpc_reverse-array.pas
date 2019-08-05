var n, i: Integer;
var a: array [0..100000] of Integer;

begin

  readln(n);
  
  for i := 1 to n do
  begin
    read(a[i]);
  end;
  
  for i := n downto 1 do write(a[i], ' ');
  
end.