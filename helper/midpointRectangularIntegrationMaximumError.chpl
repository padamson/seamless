proc midpointRectangularIntegrationMaximumError(a: real, b: real, N: int, fppxi){
  var h:real = (b-a)/N;
  return ((b-a)*h**2/24) * fppxi;
}
