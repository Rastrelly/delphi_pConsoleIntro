unit ourFunctions;

{$mode ObjFPC}{$H+}

interface

//function interface declaration for external use
function pow(val:real;cpower:integer):real;

implementation

//actual function implementation
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

end.

