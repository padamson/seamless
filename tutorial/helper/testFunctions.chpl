proc leftRightRectangleMaxErr(a: real, b: real, N: int, f): real{
  return ((b-a)/N)*abs(f(b)-f(a));
}
proc f1(x:real):real {
  return x**3;
} 
proc f2(x:real):real {
  return 1/x;
} 
proc f3(x:real):real {
  return x;
} 
