proc leftRectangleIntegrationWithErr(
  a: real, b: real, N: int, f): 2*real{
  var maxErr: real = ((b-a)/N)*abs(f(b)-f(a));
  var h: real = (b - a)/N; 
  var sum: real = 0.0;
  var x_n: real;
  for n in 0..N-1 {
    x_n = a + n * h;
    sum = sum + f(x_n);
  }
  return (h * sum, maxErr);
}
