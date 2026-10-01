% ARTI 303 - Lab 6 - Prolog Programming


% ---- facts: car(Model, Price, Age, Colour, Mileage) -------------
car(chrysler, 130000, 3, red,   12000).
car(ford,      90000, 4, gray,  25000).
car(datsun,    80000, 1, red,   30000).

truck(ford,    80000, 6, blue,   8000).
truck(datsun,  50000, 5, orange,20000).
truck(toyota,  25000, 2, black, 25000).

can_buy(Cost) :-
    car(Model, C1, _, _, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the car '), write(Model), nl.

can_buy(Cost) :-
    truck(Model, C2, _, _, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the truck '), write(Model), nl.

% =================================================================
% LAB TASK 1 - MODEL ANSWER  (also consider the colour)
% Name: reem alrumaihi | ID: 2230001686
% can_buy(Cost, Colour): suggest only vehicles cheaper than Cost
% that have the given Colour. The original can_buy/1 is kept above.

can_buy(Cost, Colour) :-
    car(Model, C1, _, Colour, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the '), write(Colour),
    write(' car '), write(Model), nl.

can_buy(Cost, Colour) :-
    truck(Model, C2, _, Colour, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the '), write(Colour),
    write(' truck '), write(Model), nl.

/* ---------------- test queries ----------------
?- can_buy(200000, red).
With 130000 you can purchase the red car chrysler
true ;
With 80000 you can purchase the red car datsun
true ;
false.

?- can_buy(100000, blue).
With 80000 you can purchase the blue truck ford
true.

?- can_buy(200000, green).
false.
------------------------------------------------ */