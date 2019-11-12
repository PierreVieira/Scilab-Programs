function[L] = achaLimites(n, c)
    //Parâmetros de entrada: n, c
    //Parâmetros de saída L
    if c(1) == 0 then
        disp("coeficiente c(1) nulo")
        L = 0
        return 0
    end
    t = n + 1
    c(t + 1) = 0
    //se c(n+1) for nulo, então o polinômio é deflacionado
    while c(t) <> 0
        t = t - 1
    end
    //Cálculo dos quatro limites das raízes
    for i = 1:4 do
        if i == 2 | i == 4 then //Inversão da ordem dos coeficientes
            for j = 1:t/2 do
                aux = c(j)
                c(j) = c(t-j+1)
                c(t-j+1) = aux
            end
        end
        else
            if i == 3 then
                for j = 1:t/2 do
                    aux = c(j)
                    c(j) = c(t - j + 1)
                    c(t - j + 1) = aux
                end
                for j = t - 1:-2:1 do
                    c(j) = -c(j)
                end
            end
        end
        //Se c(1) for negativo, então é trocado o sinal de todos os coeficientes
        if c(1) < 0 then
            for j = 1:t do
                c(j) == -c(j)
            end
        end
        k = 2// cálculo de K, o maior índice dos coeficientes negativos
        while c(k) < 0 ou k > t do
            k = k +1
        end
        if k <= t do
            b = 0
            for j = 2:t do
                if c(j) < 0 & abs(c(j)) > b then
                    b = abs(c(j))
                end
            end
           //Limite das raízes positivas de P(x) = 0 e das equações auxiliares
           L(i) = 1 + (B/c(1))^(1/k-1)
        else
            L(i)
    end
    L = 2
endfunction
