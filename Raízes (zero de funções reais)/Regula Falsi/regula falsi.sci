/*
    Objetivo: Clcular a raiz de uma equação pelo método da regula falsi
    Parâmetros de entrada: a, b, Toler, IterMax
    Parâmetros de saída: Raiz, Iter, CondErro
    Pierre Vieira
*/
function [Raiz, Iter, CondErro] = RegulaFalsi(a, b, Toler, IterMax)
    deff('y = f(x)', 'y = 2*x^3 - cos(x+1) - 3')
    Fa = f(a)
    Fb = f(b)
    if Fa * Fb > 0 then
        printf("Função não muda de sinal nos extremos do intervalo dado\n")
        exit(0)
    end
    if Fa > 0 then
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
    DeltaX = -Fx/(Fb-Fa)*(b-a)
    printf("Iter\ta\tFa\t\tb\tFb\tx\t\tFx\tDeltaX\n")
    while 1 do
        DeltaX = -Fx/(Fb-Fa)*(b-a)
        x = x + DeltaX
        Fx = f(x) //Avakiar a função em x
        printf("%d, %f, %f, %f, %f, %f, %f, %f\n", Iter, a, Fa, b, Fb, x, Fx, DeltaX)
        if abs(DeltaX) <= Toler & abs(Fx) <= Toler | Iter >= IterMax then
            break
        end
        if Fx < 0 then
            a = x
            Fa = Fx
        else
            b = x
            Fb = Fx
        end
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
