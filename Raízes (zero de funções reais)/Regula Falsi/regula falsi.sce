exec('regula falsi.sci');
a = -1;
b = 2;
Toler = 0.01;
IterMax = 100;
[Raiz, Iter, CondErro] = RegulaFalsi(a, b, Toler, IterMax);
printf("Raiz = %f\nIter = %d\nCondErro = %d\n", Raiz, Iter, CondErro);
