proc leftRightRectangleIntegrationMaximumError(a: real, b: real, N: int, f){
  return ((b-a)/N)*abs(f(b)-f(a));
}
