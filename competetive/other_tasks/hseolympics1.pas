//fpc 3.0.0

function factorial(n: Integer): Integer; begin
  if n <> 1 
  then factorial := n * factorial(n-1) 
  else factorial := 1
end;

var 
  n1, n2, n3: Integer;
  m1, m2, m3: Integer;

begin

  readln(n1, m1);
  readln(n2, m2);
  readln(n3, m3);
  
  writeln(factorial(n1) mod m1);
  writeln(factorial(n2) mod m2);
  writeln(factorial(n3) mod m3);
  
end.