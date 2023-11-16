% Facts
has_fur(dog).
has_fur(cat).
has_tail(cat).
chases(cat, mouse).

% Rules
mammal(X) :- has_fur(X).
predator(X) :- chases(X, Y), animal(Y).
animal(X) :- has_fur(X).
animal(X) :- has_tail(X).

% Forward chaining rule
forward_chaining(X) :- findall(Y, (clause(X, Y), \+fact(Y)), NewFacts), assert_all(NewFacts), member(X, NewFacts).

% Utility predicate to assert all elements in a list
assert_all([]).
assert_all([H | T]) :- assertz(fact(H)), assert_all(T).

% Example queries
:- forward_chaining(mammal(cat)).
:- forward_chaining(predator(cat)).
:- forward_chaining(animal(dog)).
