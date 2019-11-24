/*
    Objetivo: Calcular a raiz de uma equação pelo método da secante
    Parâmetros de entrada: a, b, Toler, IterMax
    Parâmetros de saída: Raiz, Iter, CondErrro
    Pierre Vieira
*/
function [Raiz, Iter, CondErro] = Secante(a, b, Toler, IterMax)
    Fa = f(a)
    Fb = f(b)
    if abs(Fa) < abs(Fb) then
        t = a
        a = b
        b = t
        t = Fa
        Fa = Fb
        Fb = t
    end
    Iter = 0
    x = b
    Fx = Fb
    printf("\nI\t    a\t            Fa      \t      b\t           Fb\t              x\t          Fx\t        DeltaX\n")
    while 1 do
        DeltaX = -Fx/(Fb - Fa) * (b - a)
        x = x + DeltaX
        Fx = f(x) //Avaliar a função em x
        printf("%d\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n", Iter, a, Fa, b, Fb, x, Fx, DeltaX)
        if abs(DeltaX) <= Toler & abs(Fx) <= Toler | Iter >= IterMax then
            break
        end
        a = b
        Fa = Fb
        b = x
        Fb = Fx
        Iter = Iter + 1
    end
    Raiz = x
    //Teste de convergência
    if abs(DeltaX) <= Toler & abs(Fx) <= Toler then
        CondErro = 0
    else
        CondErro = 1
    end
endfunction
