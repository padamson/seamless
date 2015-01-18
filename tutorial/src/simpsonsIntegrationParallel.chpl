    proc simpsonsIntegrationParallel(a: real(64), b: real(64), N: int(64), f): real{
      var h: real(64) = (b - a)/N; 
      var sum1$, sum2$: sync real = 0.0;
      var x_n1$, x_n2$: sync real;
      cobegin {
        for n1 in 1..N-1 by 2 {
          x_n1$ = a + n1 * h;
          sum1$ = sum1$ + 4.0 * f(x_n1$);
        }
        for n2 in 2..N-2 by 2 {
          x_n2$ = a + n2 * h;
          sum2$ = sum2$ + 2.0 * f(x_n2$);
        }
      }
      return (h/3.0) * (f(a) + sum1$ + sum2$ + f(b));
    }
