
diet_suggestion(heart_disease, low_fat).
diet_suggestion(diabetes, low_carb).
diet_suggestion(hypertension, low_salt).
diet_suggestion(cholesterol, low_cholesterol).


suggest_diet(Person, Disease, Diet) :-
    has_disease(Person, Disease),
    diet_suggestion(Disease, Diet),
    write('For '), write(Person), write(' with '), write(Disease),
    write(' we suggest a '), write(Diet), write(' diet.'),
    nl.

has_disease(john, heart_disease).
has_disease(susan, diabetes).
has_disease(mike, hypertension).

