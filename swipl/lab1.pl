parent(phillipe_Eugene,albert_The_First).
parent(marie_Luise,albert_The_First).
parent(albert_The_First,leopold_The_Third).
parent(carl_Theodor,elisabeth_Of_Bavaria).
parent(maria_Josepha,elisabeth_Of_Bavaria).
parent(elisabeth_Of_Bavaria,leopold_The_Third).
parent(leopold_The_Third,albert_The_Second).
parent(carl_Av_Sverige,astrid_Av_Sverige).
parent(ingeborg_Charlotta,astrid_Av_Sverige).
parent(astrid_Av_Sverige,albert_The_Second).
parent(fulko,paola).
parent(luiza,paola).
parent(albert_The_Second,filip).
parent(paola,filip).
parent(filip,prince_Gabriel).
parent(filip,princess_Elisabeth).
parent(filip,prince_Emmanuel).
parent(filip,princess_Eleonore).
parent(mathilde,prince_Gabriel).
parent(mathilde,princess_Elisabeth).
parent(mathilde,prince_Emmanuel).
parent(mathilde,princess_Eleonore).
parent(princess_Elisabeth,prince_Phillipe).

spouse(phillipe_Eugene,marie_Luise).
spouse(carl_Theodor,maria_Josepha).
spouse(albert_The_First,elisabeth_Of_Bavaria).
spouse(carl_Av_Sverige,ingeborg_Charlotta).
spouse(leopold_The_Third,astrid_Av_Sverige).
spouse(fulko,luiza).
spouse(albert_The_Second,paola).
spouse(filip,mathilde).

male(phillipe_Eugene).
female(marie_Luise).
male(albert_The_First).
male(carl_Theodor).
female(maria_Josepha).
female(elisabeth_Of_Bavaria).
male(leopold_The_Third).
male(carl_Av_Sverige).
female(ingeborg_Charlotta).
female(astrid_Av_Sverige).
male(albert_The_Second).
male(fulko).
female(luiza).
female(paola).
male(filip).
female(mathilde).
male(prince_Gabriel).
female(princess_Elisabeth).
female(princess_Eleonore).
male(prince_Emmanuel).

father(X,Y):- parent(X,Y), male(X).
mother(X,Y):- parent(X,Y), female(X).
wife(X,Y):- spouse(Y,X), female(X).
husband(X,Y):- spouse(X,Y), male(X).
child(X,Y):- parent(Y,X).
grandparent(X,Y):- parent(X,Z),parent(Z,Y).
sibling(X,Y):- parent(Z,X), parent(Z,Y), X\==Y.
brother(X,Y):- parent(Z,X), parent(Z,Y), X\==Y, male(X).
sister(X,Y):- parent(Z,X), parent(Z,Y), X\==Y, female(X).
uncle(X,Y):- parent(Z,Y), brother(X,Z).
aunt(X,Y):- parent(Z,Y), sister(X,Z).
grandfather(X,Y):- grandparent(X,Y), male(X).
grandmother(X,Y):- grandparent(X,Y), female(X).
