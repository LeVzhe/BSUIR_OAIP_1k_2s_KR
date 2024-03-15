program KR;

{$APPTYPE CONSOLE}

uses
  SysUtils, Windows,
  Integrals in 'Integrals.pas',
  RightRectangleInt in 'RightRectangleInt.pas',
  CentralRectangleInt in 'CentralRectangleInt.pas',
  CalculateIntegral in 'CalculateIntegral.pas';

const
  _E1 = 1e-2; // �������� �������� ��� ������� ������
  _E2 = 1e-3; // �������� �������� ��� ������� ������

begin
  SetConsoleOutputCP(1251);

  writeln(' ---------------------------------------------------------------------------------------');
  writeln(' |         |        ����� ������ �������.        |      ����� ���������. �������       |');
  writeln(' -         -----------------------------------------------------------------------------');
  writeln(' |         |      E = 0.1     |      E = 0.01    |      E = 0.1     |    E = 0.01      |');
  writeln(' -         -----------------------------------------------------------------------------');
  writeln(' |         | �������� |   N   | �������� |   N   | �������� |   N   | �������� |   N   |');
  writeln(' ---------------------------------------------------------------------------------------');
  write(' | ���-� 1 | ');

  //��� ������ �������
  CalculateIntegral.calc('RightRectangle', Integrals.f1, 1.3, 2.5, _E1);
  CalculateIntegral.calc('RightRectangle', Integrals.f1, 1.3, 2.5, _E2);
  CalculateIntegral.calc('CentralRectangle', Integrals.f1, 1.3, 2.5, _E1);
  CalculateIntegral.calc('CentralRectangle', Integrals.f1, 1.3, 2.5, _E2);
  writeln;
  writeln(' ---------------------------------------------------------------------------------------');
  write(' | ���-� 2 | ');
  //��� ������ �������
  CalculateIntegral.calc('RightRectangle', Integrals.f2, 0.4, 0.8, _E1);
  CalculateIntegral.calc('RightRectangle', Integrals.f2, 0.4, 0.8, _E2);
  CalculateIntegral.calc('CentralRectangle', Integrals.f2, 0.4, 0.8, _E1);
  CalculateIntegral.calc('CentralRectangle', Integrals.f2, 0.4, 0.8, _E2);
  writeln;
  writeln(' ---------------------------------------------------------------------------------------');
  write(' | ���-� 3 | ');
  //��� ������� �������
  CalculateIntegral.calc('RightRectangle', Integrals.f3, 0.4, 1.2, _E1);
  CalculateIntegral.calc('RightRectangle', Integrals.f3, 0.4, 1.2, _E2);
  CalculateIntegral.calc('CentralRectangle', Integrals.f3, 0.4, 1.2, _E1);
  CalculateIntegral.calc('CentralRectangle', Integrals.f3, 0.4, 1.2, _E2);
  writeln;
  writeln(' ---------------------------------------------------------------------------------------');
  write(' | ���-� 4 | ');
  //��� ��������� �������
  CalculateIntegral.calc('RightRectangle', Integrals.f4, 0.8, 1.2, _E1);
  CalculateIntegral.calc('RightRectangle', Integrals.f4, 0.8, 1.2, _E2);
  CalculateIntegral.calc('CentralRectangle', Integrals.f4, 0.8, 1.2, _E1);
  CalculateIntegral.calc('CentralRectangle', Integrals.f4, 0.8, 1.2, _E2);
  writeln;
  writeln(' ---------------------------------------------------------------------------------------');
  readln;
end.
