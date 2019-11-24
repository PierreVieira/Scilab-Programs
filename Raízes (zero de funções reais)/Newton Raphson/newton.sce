exec('newton.sci');
xi = 4;
Toler = 10^(-5);
IterMax = 100;
[Raiz, Iter, CondErro] = NewtonRaphson(xi, Toler, IterMax);
printf("Iter: %d\nRaiz: %f\n CondErro: %d", Iter, Raiz, CondErro);
