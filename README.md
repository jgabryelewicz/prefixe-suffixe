# prefixe-suffixe


Il s'agit d'un code basique dont le but est de déterminer, à partir d'une base de connaissances, quels sont les préfixes et suffixes d'un mot ainsi que sa racine.

Pour utiliser ce programme, utilisez SWI-Prolog ou alors un autre interpréteur Prolog

?- [baseconnaissance].
true.

?- [prefixesuffixe].
true.

?- racine(RACINE,[i,m,m,a,n,g,e,a,b,l,e]).
Liste de tous les préfixes: 
[i,m]
Liste de tous les suffixes: 
[a,b,l,e]
RACINE = [m, a, n, g, e] 