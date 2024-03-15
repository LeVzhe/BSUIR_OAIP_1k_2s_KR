program KR;

{$APPTYPE CONSOLE}

uses
  SysUtils, Windows,
  Integrals in 'Integrals.pas',
  RightRectangleInt in 'RightRectangleInt.pas',
  CentralRectangleInt in 'CentralRectangleInt.pas',
  CalculateIntegral in 'CalculateIntegral.pas';

const
  _E1 = 1e-2; // Заданная точность для первого случая
  _E2 = 1e-3; // Заданная точность для второго случая

begin
  SetConsoleOutputCP(1251);

  writeln(' ---------------------------------------------------------------------------------------');
  writeln(' |         |        Метод правых прямоуг.        |      Метод центральн. прямоуг       |');
  writeln(' -         -----------------------------------------------------------------------------');
  writeln(' |         |      E = 0.1     |      E = 0.01    |      E = 0.1     |    E = 0.01      |');
  writeln(' -         -----------------------------------------------------------------------------');
  writeln(' |         | Значение |   N   | Значение |   N   | Значение |   N   | Значение |   N   |');
  writeln(' ---------------------------------------------------------------------------------------');
  write(' | инт-л 1 | ');

  //для первой функции
  CalculateIntegral.calc('RightRectangle', Integrals.f1, 1.3, 2.5, _E1);
  CalculateIntegral.calc('RightRectangle', Integrals.f1, 1.3, 2.5, _E2);
  CalculateIntegral.calc('CentralRectangle', Integrals.f1, 1.3, 2.5, _E1);
  CalculateIntegral.calc('CentralRectangle', Integrals.f1, 1.3, 2.5, _E2);
  writeln;
  writeln(' ---------------------------------------------------------------------------------------');
  write(' | инт-л 2 | ');
  //для второй функции
  CalculateIntegral.calc('RightRectangle', Integrals.f2, 0.4, 0.8, _E1);
  CalculateIntegral.calc('RightRectangle', Integrals.f2, 0.4, 0.8, _E2);
  CalculateIntegral.calc('CentralRectangle', Integrals.f2, 0.4, 0.8, _E1);
  CalculateIntegral.calc('CentralRectangle', Integrals.f2, 0.4, 0.8, _E2);
  writeln;
  writeln(' ---------------------------------------------------------------------------------------');
  write(' | инт-л 3 | ');
  //для третьей функции
  CalculateIntegral.calc('RightRectangle', Integrals.f3, 0.4, 1.2, _E1);
  CalculateIntegral.calc('RightRectangle', Integrals.f3, 0.4, 1.2, _E2);
  CalculateIntegral.calc('CentralRectangle', Integrals.f3, 0.4, 1.2, _E1);
  CalculateIntegral.calc('CentralRectangle', Integrals.f3, 0.4, 1.2, _E2);
  writeln;
  writeln(' ---------------------------------------------------------------------------------------');
  write(' | инт-л 4 | ');
  //для четвертой функции
  CalculateIntegral.calc('RightRectangle', Integrals.f4, 0.8, 1.2, _E1);
  CalculateIntegral.calc('RightRectangle', Integrals.f4, 0.8, 1.2, _E2);
  CalculateIntegral.calc('CentralRectangle', Integrals.f4, 0.8, 1.2, _E1);
  CalculateIntegral.calc('CentralRectangle', Integrals.f4, 0.8, 1.2, _E2);
  writeln;
  writeln(' ---------------------------------------------------------------------------------------');
  readln;
end.
