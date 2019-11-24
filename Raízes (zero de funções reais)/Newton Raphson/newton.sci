/*
    Objetivo: Calcular a raiz de uma equação pelo método de Newton
    Parâmetros de entrada: x0, Toler, IterMax
    Parâmetros de saída: Raiz, Iter, CondErro
    Pierre Vieira
*/
function [Raiz, Iter, CondErro] = NewtonRaphson(xi, Toler, IterMax)
    deff('y = f(x)','y = x^4 + 2*x^3 - 13*x^2 - 14*x + 24')
    deff('y1 = g(x)', 'y1 = 4*x^3 + 6*x^2 - 26*x - 14') // Derivada da f
    Fx = f(xi)
    DFx = g(xi)
    x = xi
    Iter = 0
    printf("Iter\t    x\t\t    DFx\t\t    Fx\n")
    printf("%d\t%f\t%f\t%f\n", Iter, x, DFx, Fx)
    while 1 do
        DeltaX = - Fx/DFx
        x = x + DeltaX
        Fx = f(x)
        DFx = g(x)
        Iter = Iter + 1
        printf("%d\t%f\t%f\t%f\n", Iter, x, DFx, Fx)
        if abs(DeltaX) <= Toler & abs(Fx) <= Toler | DFx == 0 | Iter >= IterMax then
            break
        end
    end
    Raiz = x
    //Teste de convergência
    if abs(DeltaX) <= Toler & abs(Fx) <= Toler then
        CondErro = 0 //Raíz não foi encontrada
    else
        CondErro = 1//Raíz foi encontrada
    end
endfunction
