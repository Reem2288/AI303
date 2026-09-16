% ==========================================================
%  ARTI 303 - Programming for AI
%  Lab Assignment 01 - Family Tree Knowledge Base
%  Student: Reem
% ==========================================================


% ---------------- Facts ----------------

% male(X): X is male
male(ghanem).
male(abdullah).
male(mohammed).
male(khalid).

% female(X): X is female
female(hanan).
female(reem).
female(muhrah).
female(reema).

% parent(X, Y): X is the parent of Y
% Ghanem (father) and Hanan (mother) are the parents of 5 children
parent(ghanem, reem).
parent(ghanem, muhrah).
parent(ghanem, abdullah).
parent(ghanem, mohammed).
parent(ghanem, khalid).
parent(hanan, reem).
parent(hanan, muhrah).
parent(hanan, abdullah).
parent(hanan, mohammed).
parent(hanan, khalid).

% Abdullah is the father of Reema
parent(abdullah, reema).


% ---------------- Rules ----------------

% father(X, Y): X is the father of Y if X is a parent of Y and X is male
father(X, Y) :- parent(X, Y), male(X).
% Queries:
%   ?- father(ghanem, reem).        true .
%   ?- father(hanan, reem).         false.
%   ?- father(X, khalid).           X = ghanem .
%   ?- father(abdullah, reema).     true.

% mother(X, Y): X is the mother of Y if X is a parent of Y and X is female
mother(X, Y) :- parent(X, Y), female(X).
% Queries:
%   ?- mother(hanan, muhrah).       true.
%   ?- mother(ghanem, abdullah).    false.
%   ?- mother(X, reem).             X = hanan.
%   ?- mother(X, reema).            false.

% sister(X, Y): X is the sister of Y if they share a parent Z,
% X is female, and X is not the same person as Y
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), X \= Y.
% Queries:
%   ?- sister(muhrah, reem).        true .
%   ?- sister(reem, mohammed).      true .
%   ?- sister(abdullah, reem).      false.

% brother(X, Y): X is the brother of Y if they share a parent Z,
% X is male, and X is not the same person as Y
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X), X \= Y.
% Queries:
%   ?- brother(khalid, reem).       true .
%   ?- brother(mohammed, abdullah). true .
%   ?- brother(muhrah, khalid).     false.