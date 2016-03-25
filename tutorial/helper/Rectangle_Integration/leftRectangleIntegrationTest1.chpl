use leftRightRectangleMaxErr;
use leftRectangleIntegration;

proc f(x:real):real {
  return x**3;
} 

var calculated:real;
var exact:real = 0.25;
var maximumError:real = leftRightRectangleMaxErr(
  a = 0.0, b = 1.0, N = 100, f = f);
var verified:bool;

calculated = leftRectangleIntegration(
  a = 0.0, b = 1.0, N = 100, f = f);
verified = (abs(calculated - exact) <= maximumError);
writeln(verified);
