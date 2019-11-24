/*
    Objetivo: Calcular a raiz de uma equação pelo método de Muller
    Parâmetros de entrada: a, c, Toler, IterMax
    Parâmetros de saída: Raiz, Iter, CondErro
*/
function [Raiz, Iter, CondErro] = Muller(a, c, Toler, IterMax)
    deff('y = f(x)', 'y = 2*x^3 - cos(x+1) - 3')
    Fa = f(a)
    Fc = f(c)
    b = (a+c)/2
    Fb = f(b)
    x = b
    Fx = Fb
    DeltaX = c - a
    Iter = 0
    printf("\nIter\t     a\t           b\t          c\t          x\t            Fx\t         DeltaX\n")
    while 1 do
        h1 = c - b
        h2 = b - a
        r = h1/h2
        t = x
        A = (Fc - (r+1)*Fb + r*Fa)/(h1*(h1+h2))
        B = (Fc - Fb)/h1-A*h1
        C = Fb
        if B < 0 then
            sinal = - 1
        else
            sinal = 1
        end
        z = (-B + sinal*((B^2 -4*A*C))^0.5)/(2*A)
        x=b+z
        DeltaX = x - t
        Fx = f(x)
        printf("%d\t%f\t%f\t%f\t%f\t%f\t%f\n", Iter, a, b, c, x, Fx, DeltaX)
        if abs(DeltaX) <= Toler & abs(Fx) <= Toler | Iter >= IterMax then
            break
        end
        if x > b then
            a = b
            Fa = Fb
        else
            c = b
            Fc = Fb
        end
        b = x
        Fb = Fx
        Iter = Iter + 1
    end
    Raiz = x
    if abs(DeltaX) <= Toler & abs(Fx) <= Toler then
        CondErro = 0
    else
        CondErro = 1
    end
endfunction
