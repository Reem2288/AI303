
% Lab 9 - Task 1
% Boolean Expression: (A AND B) OR (NOT A AND NOT B)

% AND truth table
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% OR truth table
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% NOT truth table
neg(true, false).
neg(false, true).

% Boolean expression
logicGate(A, B, Output) :-
    and(A, B, X),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, Y),
    or(X, Y, Output).


% ----------------------------------------
% Lab 9 - Task 1: Results
% ----------------------------------------

% Test 1:
% ?- logicGate(true, true, Output).
% Output = true.

% Test 2:
% ?- logicGate(true, false, Output).
% Output = false.

% Test 3:
% ?- logicGate(false, true, Output).
% Output = false.

% Test 4:
% ?- logicGate(false, false, Output).
% Output = true.

% ----------------------------------------
% All four test cases passed successfully.
% ----------------------------------------
