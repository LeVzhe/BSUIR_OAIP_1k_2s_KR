unit CentralRectangleInt;

interface
type
  TFunc = function(x: Real): Real;

function calc(func: TFunc; a, b: Real; n: Integer);

implementation
procedure calc();
  var
    h, sum: Real;
    i: Integer;
  begin
    h := (b - a) / n;
    sum := 0;

    for i := 0 to n - 1 do
    begin
      sum := sum + func(a + (i + 0.5) * h);
    end;

    calc  := h * sum;
  end;
end.
