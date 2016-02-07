    proc trapezoidIntegration(a: real(64), b: real(64), N: int(64), f): real{
      var h: real(64) = (b - a)/N; 
      var sum: real(64) = f(a) + f(b);
      var x_n: real(64);
      for n in 1..N-1 {
        x_n = a + n * h;
        sum = sum + 2.0 * f(x_n);
      }
      return (h/2.0) * sum;
    }
