function [VetX, VetY] = Euler(a, b, m, y0)
    //Objetivo: Resolver um PVI pelo método de Euler
    //Parâmetros de entrada: a, b, m, y0
    //Parâmetros de saída: VetX, VetY
    deff ('z = f(x,y)',' z = x - 2*y + 1')
    h = (b-a)/m
    x = a
    y = y0
    Fxy = f(x, y)
    VetX(1) = x
    VetY(1) = y
    printf(" i         x           y            Fxy\n")
    printf("%2d\t%f\t%f\t%f\n", 0, x, y, Fxy)
    for i = 1:m
       x = a + i*h
       y = y + h*Fxy
       Fxy = f(x,y)
       printf("%2d\t%f\t%f\t%f\n", i, x, y, Fxy)
       VetX(i+1) = x
       VetY(i+1) = y
    end
endfunction
