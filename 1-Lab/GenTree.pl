parent(rustam, fatima).
parent(fatimas_mom, fatima).
parent(hakims_dad, hakim).
parent(hakims_mom, hakim).
parent(farrukh, nuri).
parent(hayat, nuri).
parent(farrukh, rasul).
parent(hayat, rasul).
parent(muhammad, barat).
parent(zebo, barat).
parent(muhammad, ismail).
parent(zebo, ismail).
parent(hakim, halim).
parent(fatima, halim).
parent(hakim, umeda).
parent(fatima, umeda).
parent(hakim, sharif).
parent(fatima, sharif).
parent(barat, firuze).
parent(nuri, firuze).
parent(barat, farhad).
parent(nuri, farhad).
parent(barat, dilfuze).
parent(nuri, dilfuze).
parent(halim, amir).
parent(firuze, amir).
parent(halim, aziza).
parent(firuze, aziza).
parent(farhad, firdavs).
parent(dilfuza, islam).
parent(sharif, malika).

male(hakims_dad).
male(rustam).
male(muhammad).
male(farrukh).
male(hakim).
male(barat).
male(rasul).
male(halim).
male(sharif).
male(farhad).
male(amir).
male(firdavs).
male(islam).

female(hakims_mom).
female(fatimas_mom).
female(zebo).
female(hayat).
female(fatima).
female(nuri).
female(dilnaz).
female(umeda).
female(firuze).
female(dilfuze).
female(aziza).
female(malika).


predecessor(X, Y) :- parent(X, Y).
predecessor(X, Y) :- parent(X, Z), predecessor(Z, Y).
grandfather(X, Y) :- male(X), parent(X, Z), parent(Z, Y).
grandgrandfather(X,Y) :- male(X), parent(X, Z), grandparent(Z, Y).
grandmother(X, Y) :- female(X), parent(X, Z), parent(Z, Y).
grandgrandmother(X,Y) :- female(X), parent(X, Z), grandparent(Z, Y).
grandson(X, Y) :- male(Y), grandparent(X, Y).
granddaughter(X, Y) :- female(Y), grandparent(X, Y).
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
uncle_or_aunt(X, Y) :- sibling(X, Z), parent(Z, Y).
uncle(X, Y) :- male(X), uncle_or_aunt(X, Y).
aunt(X, Y) :- female(X), uncle_or_aunt(X, Y).
son(X, Y) :- male(X), parent(Y, X).
daughter(X, Y) :- female(X), parent(Y, X).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- male(X), sibling(X, Y).
sister(X, Y) :- female(X), sibling(X, Y).
cousin(X, Y) :- parent(Z, X), parent(K, Y), sibling(Z, K).