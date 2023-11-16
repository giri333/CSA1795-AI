% Facts about planets
planet(mercury, rocky, 57.9).
planet(venus, rocky, 108.2).
planet(earth, rocky, 149.6).
planet(mars, rocky, 227.9).
planet(jupiter, gas_giant, 778.3).
planet(saturn, gas_giant, 1427.0).
planet(uranus, ice_giant, 2871.0).
planet(neptune, ice_giant, 4497.1).

% Rules for categorizing planets
rocky_planet(X) :- planet(X, rocky, _).
gas_giant(X) :- planet(X, gas_giant, _).
ice_giant(X) :- planet(X, ice_giant, _).

% Rule to find planets within a certain distance range from the sun
planet_within_distance(X, Min, Max) :- planet(X, _, Distance), Distance >= Min, Distance =< Max.
