    use leftRightRectangleMaxErr;
    use leftRectangleIntegration;

    proc f(x:real):real {
      return 1/x;
    } 

    var exact:real = 4.605170; 
    var maximumError:real = leftRightRectangleMaxErr(a = 1.0, b = 100.0, N = 1000, f = f);
    var calculated: real = leftRectangleIntegration(a = 1.0, b = 100.0, N = 1000, f = f);
    var verified: bool = (abs(calculated - exact) <= maximumError);
    writeln(verified);
