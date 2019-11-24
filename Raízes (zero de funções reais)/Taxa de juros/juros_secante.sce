exec('juros_secante.sci');
a = 0.05;
b = 1;
Toler = 0.01;
IterMax = 100;
printf("\n==================================================== PLANO 1 ===================================================\n")
funcprot(0)
deff('y = f(x)', 'y = 224.58*(1 - (1+x)^(-6)) - 1000*x')
[Raiz, Iter, CondErro] = Secante(a, b, Toler, IterMax);
printf("\nRaiz = %f\nIter = %d\nCondErro = %d\n", Raiz, Iter, CondErro);
printf("\n=================================================== PLANO 2 ===================================================\n")
deff('y = f(x)', 'y = 163.19*(1 - (1+x)^(-10)) - 1100*x')
funcprot(0)
[Raiz, Iter, CondErro] = Secante(a, b, Toler, IterMax);
printf("\nRaiz = %f\nIter = %d\nCondErro = %d\n", Raiz, Iter, CondErro);
