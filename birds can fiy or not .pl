
can_fly(robin).
can_fly(sparrow).
can_fly(eagle).
can_fly(penguin) :- false. 


fly_ability(Bird) :-
    can_fly(Bird),
    write(Bird), write(' can fly.'),
    nl.

fly_ability(Bird) :-
    \+ can_fly(Bird),
    write(Bird), write(' cannot fly.'),
    nl.
