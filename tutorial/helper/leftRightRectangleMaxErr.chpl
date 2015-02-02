proc leftRightRectangleMaxErr(a: real, b: real, N: int, f): real{
  return ((b-a)/N)*abs(f(b)-f(a));
}
