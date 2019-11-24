exec('secante.sci');
a = -1;
b = 2;
Toler = 0.01;
IterMax = 100;
[Raiz, Iter, CondErro] = Secante(a, b, Toler, IterMax);
printf("\nRaiz = %f\nIter = %d\nCondErro = %d\n", Raiz, Iter, CondErro);
