function [raiz, inter, condErro] = bissecao(a, b, toler, inter_max)
    cond_erro = 0
    fa = F(a)
    fb = F(b)
    if fa*fb > 0 then
        disp("Função não muda de sinal nos extremos do intervalo dado")
        return 0
    end
    deltaX = abs(b-a)/2;
    iter = 0
    while(1) do
        x = (a+b)/2
        fx = polinomio(x)
        disp(iter, a, fa, b, fb, x, fx, deltax)
        if deltaX <= toler & abs(fx) <= toler | iter >= inter_max then
            break
        end
        if fa*fx > 0 then
            a = x
            fa = fx
        else
            b = x
        end
        deltaX = deltaX/2
        iter = iter + 1
    end
    raiz = x
    if deltaX  <= toler & abs(fx) <= toler then
        cond_erro = 0
    else
        cond_erro = 1
    end
endfunction

deff('y = F(x)', 'y = ')
