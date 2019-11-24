exec('muller.sci');
a = -1;
c = 2;
Toler = 0.01;
IterMax = 100;
[Raiz, Iter, CondErro] = Muller(a, c, Toler, IterMax);
printf("\nRaiz = %f\nIter = %d\nCondErro = %d", Raiz, Iter, CondErro);
