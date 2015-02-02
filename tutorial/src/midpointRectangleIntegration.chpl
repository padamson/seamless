proc midpointRectangleIntegration(
  a: real, b: real, N: int, f): real{
  var h: real = (b - a)/N; 
  var sum: real = 0.0;
  var x_n: real;
  for n in 0..N-1 {
    x_n = a + (n + 0.5) * h;
    sum = sum + f(x_n);
  }
  return h * sum;
}
