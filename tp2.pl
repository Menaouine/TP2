member(X, [X|_]).  
member(X, [_|T]) :- member(X, T).  



first(E, [E|_]).


last(E, [E]).            
last(E, [_|T]) :-     
    last(E, T).         



penultimate(E, [E, _]).  
penultimate(E, [_|T]) :- penultimate(E, T).  


del_k(X, [X|T], 1, T).  
del_k(X, [H|T], K, [H|R]) :-
    K > 1,
    K1 is K - 1,
    del_k(X, T, K1, R).


length([], 0).
length([_|T], N) :-
    length(T, N1),
    N is N1 + 1.


even(L) :-
    length(L, N),
    0 is N mod 2.



concat([], L, L).
concat([H|T], L2, [H|R]) :-
   concat(T, L2, R).


palindrome(L) :-
    reverse(L, L).



