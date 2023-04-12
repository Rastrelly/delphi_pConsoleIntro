program pConsoleIntro;

//put uses here to include required modules

uses ourFunctions;

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

