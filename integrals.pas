unit Integrals;

interface

uses
  Math;

function f1(x:real):real;
function f2(x:real):real;
function f3(x:real):real;
function f4(x:real):real;

implementation

function f1(x:real):real;
  begin
    f1 := (sqrt(power(x, 2) + 0.6)/(1.4 + sqrt(0.8 * power(x, 2) + 1.3);
  end;

function f2(x:real):real;
  begin
    f2 := (cos(power(x, 2) + 0.6)/(0.7 + sin(0.8 * x + 1);
  end;

function f3(x:real):real;
  begin
    f3 := (1)/(sqrt(2 + 0.5 * power(x, 2));
  end;

function f4(x:real):real;
  begin
    f4 := (sin(2 * x)/(power(x, 2));
  end;
end.
