
parent(john, mary).
parent(john, jim).
parent(mary, ann).
parent(mary, peter).

siblings(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.


ancestor(X, Y) :-
    parent(X, Y).
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

