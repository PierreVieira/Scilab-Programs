function  [Raiz, Iter, CondErro] = Bissecao(a, b, Toler, IterMax)
    /*
        Objetivo: Calcular a raiz de uma equação pelo método da bisseção
        Parâmetros de entrada: a, b, Toler, IterMax
        Parâmetros de saída: Raiz, Iter, CondErro
    */
    deff('y=f(x)', 'y = 2*x^3 - cos(x+1) - 3')
    Fa = f(a)
    Fb = f(b)
    if Fa*Fb > 0 then
        printf("Função não muda de sinal nos extremos do intervalo dado")
        exit(0)
    end
    DeltaX = abs(b-a)/2
    Iter = 0
    printf("\nI\ta\tFa\tb\tFb\tx\tFx\t      Delta_x\n")
    while 1 do
        x = (a+b)/2
        Fx = f(x)//Avaliar a função em x
        printf("%d %f %f %f %f %f %f %f\n", Iter, a, Fa, b, Fb, x, Fx, DeltaX)
        if DeltaX <= Toler & abs(Fx) <= Toler | Iter >= IterMax then
            break
        end
        if (Fa*Fx > 0) then
            a = x
            Fa = Fx
        else
            b = x
        end
        DeltaX = DeltaX/2
        Iter = Iter + 1
    end
    Raiz = x
    //Teste de convergência
    if DeltaX <= Toler & abs(Fx) <= Toler then
        CondErro = 0
    else
        CondErro = 1
    end
    printf("Raiz = %f\nIter = %d\nCondErro = %d\n", Raiz, Iter, CondErro)
endfunction
