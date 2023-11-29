
state(on_floor, at(monkey, middle), at(banana, ceiling), not_at(chair, middle)).

action(grab, state(on_floor, at(monkey, Position), at(monkey, Position), at(chair, Position)), state(on_chair, at(monkey, Position), at(monkey, Position), at(chair, Position))).
action(climb, state(on_floor, at(monkey, Position), at(monkey, Position), at(chair, Position)), state(on_chair, at(monkey, Position), at(monkey, Position), at(chair, Position))).
action(push(Position), state(on_floor, at(monkey, Position), at(banana, ceiling), not_at(chair, Position)), state(on_floor, at(monkey, Position), at(banana, ceiling), at(chair, Position))).


perform(Action, State, NewState) :-
    call(Action, Action, State, NewState).

goal_state(state(_, at(monkey, _), at(banana, _), _)).

plan(State, Plan) :-
    goal_state(State),
    Plan = [].

plan(State, [Action | RestOfPlan]) :-
    action(Action, State, NewState),
    plan(NewState, RestOfPlan).

