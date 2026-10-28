
% ----------------------------------------
% Lab 8 - Task 2: Sum of a List
% ----------------------------------------

% Base case: The sum of an empty list is 0.
sumlist([], 0).

% Recursive case: Add the head to the sum of the tail.
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, TailSum),
    Sum is Head + TailSum.


% ----------------------------------------
% Lab 8 - Task 2: Expected Results
% ----------------------------------------

% Test 1:
% ?- sumlist([1,2,5,7], Sum).
% Sum = 15.

% Test 2:
% ?- sumlist([], Sum).
% Sum = 0.

% ----------------------------------------
% End of Task 2
% ----------------------------------------


% ----------------------------------------
% Lab 8 - Task 3: Total and Average
% ----------------------------------------

total_average :-
    write('Enter the first number: '),
    read(A),

    write('Enter the second number: '),
    read(B),

    write('Enter the third number: '),
    read(C),

    Total is A + B + C,
    Average is Total / 3,

    nl,
    write('Total = '),
    write(Total), nl,

    write('Average = '),
    write(Average), nl.


% ----------------------------------------
% Lab 8 - Task 3: Expected Results
% ----------------------------------------

% Test 1:
% ?- total_average.
%
% Enter the first number: 10.
% Enter the second number: 20.
% Enter the third number: 30.
%
% Total = 60
% Average = 20.0


% ----------------------------------------
% End of Task 3
% ----------------------------------------

