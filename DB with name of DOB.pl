
dob(john, date(1990, 5, 15)).
dob(susan, date(1985, 8, 23)).
dob(mike, date(1995, 2, 10)).
dob(lisa, date(1980, 11, 7)).


get_dob(Person, DateOfBirth) :-
    dob(Person, DateOfBirth).


born_in_year(Person, Year) :-
    dob(Person, date(Year, _, _)).


born_in_month(Person, Month) :-
    dob(Person, date(_, Month, _)).



