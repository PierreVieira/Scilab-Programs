exec('pegaso.sci');
a = -1;
b = 2;
Toler = 0.01;
IterMax = 100;
[Raiz, Iter, CondErro] = Pegaso(a, b, Toler, IterMax);
printf("\nRaíz %f\nIter %d\nCondErro %d", Raiz, Iter, CondErro); 
