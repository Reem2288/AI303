
% Lab 7 - Lists
% Task 1: Delete every occurrence of an element

deleteElement(_, [], []).

deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

deleteElement(X, [Head|Tail], [Head|Result]) :-
    X \= Head,
    deleteElement(X, Tail, Result).


% Task 2: Add an element at the end of a list

add_at_the_end(X, [], [X]).

add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).


% ----------------------------------------
% Lab 7 - Task 1: Results
% Delete Every Occurrence
% ----------------------------------------

% Test 1:
% ?- deleteElement(1, [1,2,1,3,1], List).
% List = [2, 3].

% Test 2:
% ?- deleteElement(3, [1,2,3,4], List).
% List = [1, 2, 4].


% ----------------------------------------
% Lab 7 - Task 2: Results
% Add an Element at the End
% ----------------------------------------

% Test 1:
% ?- add_at_the_end(5, [1,2,3,4], List).
% List = [1, 2, 3, 4, 5].

% Test 2:
% ?- add_at_the_end(d, [a,b,c], List).
% List = [a, b, c, d].

% ----------------------------------------
% All four test cases passed successfully.
% ----------------------------------------
