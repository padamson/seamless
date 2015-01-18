      proc leftRectangleIntegration(a: real(64), b: real(64), N: int(64), f): real(64){
        var h: real(64) = (b - a)/N; 
        var sum: real(64) = 0.0;
        var x_n: real(64);
        for n in 0..N-1 {
          x_n = a + n * h;
          sum = sum + f(x_n);
        }
        return h * sum;
      }
