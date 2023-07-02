# Calcul des fêtes mobiles

***

## Pâques

Les fêtes qui n'ont pas de date fixe se calculent en référence à la fête de Pâques. Celle-ci, comme l'a arrêté le concile de Nicée, se célèbre le dimanche après la pleine lune qui suit le 21 mars. [^1]

[^1]: Lefèbvre 1924.

Il y a plusieurs manières de calculer la date exacte de la fête de Pâques, la plus connue étant la méthode de Gauss, dont voici l'algorithme [^2]^, [^3] :

[^2]: De Saint-German 1884, p. 3.
[^3]: Bernard 1887, t. 1. p. 212.

> a = année % 19

> b = année % 4

> c = année % 7

> d = (19a + M) % 30

> e = (2b + 4c + 6d + N) % 7

> f = d + e

> Si f <= 9, alors la date de la fête de Pâques est au mois de mars et le jour s'obtient en ajoutant 22 à f. 

> Si f > 9, alors Pâques est au mois d'avril, et le jour est f - 9, avec M et N variant en fonction de l'année. Pour des années allant de 2000 à 2099, M = 24 et N = 5.

## Mercredi des cendres

46 jours avant Pâques.

## Ascension

39 jours après Pâques.

## Pentecôte

49 jours après Pâques.
