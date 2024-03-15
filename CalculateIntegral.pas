unit CalculateIntegral;

interface

type
  TFunc = function(x: Real): Real;
procedure calc(method: string; func: TFunc; a, b: Real; E: Real);

implementation

uses RightRectangleInt, CentralRectangleInt;
procedure calc(method: string; func: TFunc; a, b: Real; E: Real);
  var
    n: Integer;
    result, prevResult: Real;
  begin
    n := 1;
    result := 0;
    repeat
      prevResult := result;
      if method = 'RightRectangle' then
        result := RightRectangleInt.calc(func, a, b, n)
      else if method = 'CentralRectangle' then
        result := CentralRectangleInt.calc(func, a, b, n);

      n := n * 2; // Удваиваем количество интервалов для повышения точности
    until Abs(result - prevResult) < E;

    write(result:8:3, ' | ', n:5, ' | ');
  end;
end.
