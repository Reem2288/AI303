
% Lab 7 - Shopping Program

% Start with five shopping items
start :-
    shopping_menu([coffee, milk, chocolate, apple, juice]).

% Shopping menu
shopping_menu(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. Display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. Exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),

    ( Choice == d ->
        display_items(Basket),
        shopping_menu(Basket)

    ; Choice == a ->
        write('Enter the item you want to add: '),
        read(Item),
        append(Basket, [Item], NewBasket),
        write('The item has been added.'), nl,
        shopping_menu(NewBasket)

    ; Choice == e ->
        write('Goodbye!'), nl

    ;
        write('Invalid choice. Try again.'), nl,
        shopping_menu(Basket)
    ).

% Display items using recursion
display_items([]).

display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).
