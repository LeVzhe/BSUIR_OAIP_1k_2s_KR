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

      n := n * 2; // ”дваиваем количество интервалов дл€ повышени€ точности
    until Abs(result - prevResult) < E;

    writeln('»нтеграл использует ', method, ' метод с точностью ', E:0:3, ': ', result:0:3);
  end;
end.
