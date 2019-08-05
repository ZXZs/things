var k1, k2, m: Integer;

begin

 read(k1, k2, m);

 while 1 = 1 do begin
 
   if k1 < m then inc(k1, 1);
   if k1 > m then dec(k1, 1);
   if (k1 = m) and (k1 <> k2) then begin writeln('1'); break; end;
   
   if k2 < m then inc(k2, 1);
   if k2 > m then dec(k2, 1);
   if (k2 = m) and (k2 <> k1) then begin writeln('2'); break; end;
   
   if k1 = k2 then begin writeln('3'); break; end;
   
 end;

end.