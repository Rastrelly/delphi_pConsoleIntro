program pConsoleIntro;

//put uses here to include required modules

function pow(val:real;cpower:integer):real;
var i:integer;
    r:real;
begin
  r:=val;
  if (cpower=0) then result:=1;
  if (cpower=1) then result:=val;
  if (cpower=-1) then result:=1/val;
  if (cpower>1) then
  begin
    for i:=0 to cpower-2 do r:=r*val;
    result:=r;
  end;
  if (cpower<-1) then
  begin
    for i:=0 to cpower-2 do r:=r*val;
    r:=1/r;
    result:=r;
  end;

end;

var a,b,c,d,x1,x2:real;
    ans:string;

begin

  writeLn('++ Square Equation Solver 1.0 ++');

  while(true)do
  begin

    writeLn('Input equation coefficients',#13#10);

    writeLn('Input a:');
    readLn(a);
    writeLn('Input b:');
    readLn(b);
    writeLn('Input c:');
    readLn(c);
    if (a<>0) then
    begin
      d:=pow(b,2)-4*a*c;
      if (d>0) then
      begin
        x1:=(-b+sqrt(d))/(2*a);
        x2:=(-b-sqrt(d))/(2*a);
        writeln('x1 = ', x1:0:3, '; x2 = ', x2:0:3, '.');
      end
      else
      begin
        writeln('Roots are complex!');
      end;
    end
    else
    begin
      writeLn('Not a sqaure equation!');
    end;

    writeLn('Continue? [Y/N]');
    readLn(ans);

    if ((ans='N') or (ans='n')) then break;

  end;
end.

