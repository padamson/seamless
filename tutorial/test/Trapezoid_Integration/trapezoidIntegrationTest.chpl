use trapezoidIntegration;
use testFunctions;

var exact:real;
var calculated:real;
var maxErr:real;

exact = 0.25;
maxErr = 0.00005;
calculated = trapezoidIntegration(
  a = 0.0, b = 1.0, N = 100, f = f1);
writeln((abs(calculated - exact) <= maxErr));

exact = 4.605170;
maxErr = 0.24257;
calculated = trapezoidIntegration(
  a = 1.0, b = 100.0, N = 1000, f = f2);
writeln((abs(calculated - exact) <= maxErr));

exact = 12500000;
maxErr = 0.00001;
calculated = trapezoidIntegration(
  a = 0.0, b = 5000.0, N = 5000000, f = f3);
writeln((abs(calculated - exact) <= maxErr));

exact = 18000000;
maxErr = 0.00001;
calculated = trapezoidIntegration(
  a = 0.0, b = 6000.0, N = 6000000, f = f3);
writeln((abs(calculated - exact) <= maxErr));
