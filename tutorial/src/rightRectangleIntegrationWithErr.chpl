    proc rightRectangleIntegrationWithErr(a: real(64), b: real(64), N: int(64), f): 2*real{
      var maxErr: real = ((b-a)/N)*abs(f(b)-f(a));
      var h: real(64) = (b - a)/N; 
      var sum: real(64) = 0.0;
      var x_n: real(64);
      for n in 0..N-1 {
        x_n = a + (n + 1) * h;
        sum = sum + f(x_n);
      }
      return (h * sum, maxErr);
    }
