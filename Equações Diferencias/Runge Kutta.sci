function [VetX, VetY] = RungeKutta (a, b, m, yO)
    //Abscissas e solução do do PVI
    h = (b-a)/m
    xt = a
    yt = yO
    VetX(1) = xt
    VetY(1) = yt
    printf("0\t%f\t%f\n", xt, yt)
    for i = 1:m do
        x = xt
        y = yt
        k1 = f(x,y)//Avaliar f(x, y)
        x = xt + h/2
        y = yt +h/2*k1
        k2 = f(x, y)//Avaliar f(x, y)
        y = yt + h/2*k2
        k3 = f(x, y)//Avaliar f(x, y)
        x = xt + h
        y = yt + h*k3
        k4 = f(x,y)//Avaliar f(x, y)
        xt = a + i*h
        yt = yt + h/6*(k1+2*(k2+k3)+k4)
        printf("%d\t%f\t%f\n", i, xt, yt)
        VetX(i+1) = xt
        VetY(i+1) = yt
    end
endfunction
