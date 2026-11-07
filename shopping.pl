% ARTI 303 - Programming for AI
% Lab 7 - Lists (part 1)
% Lab Activity - Shopping Program


% Start the shopping program

shopping :-
    Basket = [coffee, milk, chocolate, apple, juice],
    shopping_menu(Basket).


% Display the menu

shopping_menu(Basket) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    handle_choice(Choice, Basket).


% Handle choice d: Display all items

handle_choice(d, Basket) :-
    nl,
    display_items(Basket),
    shopping_menu(Basket).


% Handle choice a: Add an item

handle_choice(a, Basket) :-
    write('Enter the item you want to add: '),
    read(Item),
    add_at_the_end(Item, Basket, NewBasket),
    writeln('The item has been added'),
    shopping_menu(NewBasket).


% Handle choice e: Exit

handle_choice(e, _) :-
    writeln('Goodbye!').


% Handle invalid choice

handle_choice(_, Basket) :-
    writeln('Invalid choice!'),
    shopping_menu(Basket).


% Display items using recursion

display_items([]).

display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).


% Add an item at the end of the list

add_at_the_end(X, [], [X]).

add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
