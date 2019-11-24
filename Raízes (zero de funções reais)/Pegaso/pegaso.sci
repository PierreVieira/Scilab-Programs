/*
    Objetivo: Calcular a raiz de uma equação pelo método pégaso
    Parâmetros de entrada: a, b, Toler, IterMax
    Parâmetros de saída: Raiz, Iter, CondErro
*/
function [Raiz, Iter, CondErro] = Pegaso(a, b, Toler, IterMax)
    deff('y = f(x)', 'y = 2*x^3 - cos(x+1) - 3')
    Fa = f(a)
    Fb = f(b)
    x = b
    Fx = Fb
    Iter = 0
    printf("Iter\ta\tFa\tb\tFb\tx\tFx\tDeltaX\n")
    while 1 do
        DeltaX = -Fx/(Fb - Fa)*(b-a)
        x = x + DeltaX
        Fx = f(x) // Avaliar a função em x 
        printf("%d\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n", Iter, a, Fa, b, Fb, x, Fx, DeltaX)
        if abs(DeltaX) <= Toler & abs(Fx) <= Toler | Iter >= IterMax then
            break
        end
        if Fx * Fb < 0 then
            a = b
            Fa = Fb
        else
            Fa = Fa * Fb /(Fb + Fx)
        end
        b = x
        Fb = Fx
        Iter = Iter + 1
    end
    Raiz = x
    //Teste de convergência
    if abs (DeltaX) <= Toler & abs(Fx) <= Toler then
        CondErro = 0
    else
        CondErro = 1
    end
endfunction
