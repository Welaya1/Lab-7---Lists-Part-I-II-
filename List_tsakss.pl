% ARTI 303 - Programming for AI
% Lab 7 - Lists (Part 2)


% Task 1 - Delete Every Occurrence

% Base case: empty list
deleteElement(_, [], []).

% If X is the head, remove it
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% If the head is not X, keep it
deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).


% Task 2 - Add at the End

% Base case: add X to an empty list
add_at_the_end(X, [], [X]).

% Recursive case: keep the head and add X at the end
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).

