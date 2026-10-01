% ARTI 303 - Lab 5 - Rules
% Name: reem alrumaihi | ID: 2230001686
% Convention: parent(Parent, Child)

% ---------------- facts ----------------
male(abraham).  male(clancy).  male(herb).
male(homer).    male(bart).

female(mona).   female(jackie). female(marge).
female(patty).  female(selma).  female(lisa).
female(maggie). female(ling).

parent(abraham, herb).   parent(mona, herb).
parent(abraham, homer).  parent(mona, homer).
parent(clancy, marge).   parent(jackie, marge).
parent(clancy, patty).   parent(jackie, patty).
parent(clancy, selma).   parent(jackie, selma).
parent(homer, bart).     parent(marge, bart).
parent(homer, lisa).     parent(marge, lisa).
parent(homer, maggie).   parent(marge, maggie).
parent(selma, ling).


% ---------------- rules ----------------
father(X, Y) :- parent(X, Y), male(X).     % X is the father of Y
mother(X, Y) :- parent(X, Y), female(X).   % X is the mother of Y

son(X, Y)      :- parent(Y, X), male(X).      % X is the son of Y
daughter(X, Y) :- parent(Y, X), female(X).    % X is the daughter of Y

sibling(X, Y)  :- parent(P, X), parent(P, Y), X \= Y.
brother(X, Y)  :- sibling(X, Y), male(X).     % X is the brother of Y
sister(X, Y)   :- sibling(X, Y), female(X).   % X is the sister of Y

grandfather(X, Y) :- father(X, Z), parent(Z, Y).   % X is the grandfather of Y

uncle(X, Y) :- parent(P, Y), brother(X, P).        % X is the uncle of Y
aunt(X, Y)  :- parent(P, Y), sister(X, P).         % X is the aunt of Y

cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2).

ancestor(X, Y) :- parent(X, Y).                    % base case
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).    % recursive case


/* ---------------- test queries and answers ----------------
   (Some answers repeat when pressing ; because siblings share
    two parents - each distinct answer is listed once here.)

father:
?- father(homer, bart).          true.
?- father(F, lisa).              F = homer.

mother:
?- mother(marge, maggie).        true.
?- mother(M, ling).              M = selma.

son:
?- son(S, abraham).              S = herb ; S = homer.
?- son(bart, X).                 X = homer ; X = marge.

daughter:
?- daughter(D, marge).           D = lisa ; D = maggie.
?- daughter(lisa, homer).        true.

brother:
?- brother(B, lisa).             B = bart.
?- brother(herb, homer).         true.

sister:
?- sister(S, marge).             S = patty ; S = selma.
?- sister(lisa, bart).           true.

grandfather:
?- grandfather(G, bart).         G = abraham ; G = clancy.
?- grandfather(clancy, ling).    true.

aunt:
?- aunt(A, bart).                A = patty ; A = selma.
?- aunt(patty, ling).            true.

uncle:
?- uncle(U, lisa).               U = herb.
?- uncle(herb, ling).            false.

cousin:
?- cousin(C, ling).              C = bart ; C = lisa ; C = maggie.
?- cousin(bart, lisa).           false.   (they are siblings, not cousins)

ancestor:
?- ancestor(A, maggie).          A = homer ; A = marge ; A = abraham ;
                                 A = mona ; A = clancy ; A = jackie.
?- ancestor(jackie, ling).       true.
------------------------------------------------------------ */