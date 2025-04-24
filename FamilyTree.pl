% Family Tree

% Defining the Relationship or Rule 

% parent(Parent, Child)
parent(john, mary).
parent(john, david).
parent(lisa, mary).
parent(lisa, david).
parent(mary, susan).
parent(mary, james).
parent(michael, susan).
parent(michael, james).
parent(david, emily).
parent(david, tom).
parent(sara, emily).
parent(sara, tom).

% Gender
male(john).
male(david).
male(james).
male(michael).
male(tom).

female(lisa).
female(mary).
female(susan).
female(sara).
female(emily).

% Derived Rules

% Grandparent Rule
grandparent(X, Y) :- 
    parent(X, Z), 
    parent(Z, Y).

% Sibling Rule
sibling(X, Y) :- 
    parent(P, X), 
    parent(P, Y), 
    X \= Y.

% Cousin Rule
cousin(X, Y) :- 
    parent(P1, X), 
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.

% Descendant Rule (Recursive)
descendant(X, Y) :- 
    parent(Y, X).
descendant(X, Y) :- 
    parent(Y, Z), 
    descendant(X, Z).