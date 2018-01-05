/*last(X,L), który jest spełniony, jeżeli X jest ostatnim elementem listy L.*/
last(X,[X]).
last(X,[_|L]) :- last(X,L).
/*delete(X,L1,L2), który jest spełniony, jeżeli L2 równa się L1 bez elementu X.*/
delete(X,[X],[]).
delete(X,[X|T],[_|L]) :- delete(_,T,L).
delete(X,[_|T],[_|L]) :- delete(X,T,L).
/*delete(L1,L2), który jest spełniony, jeżeli L2 równa się L1 bez ostatnich trzech elementów.*/
delete2([],[_,_,_]).
delete2([H|T],[H|L]) :- delete2(T,L).
/*reverse(L1,L2), który jest spełniony, jeżeli L2 jest listą L1 w odwrotnej kolejności.*/
reverse1([],_).
reverse1([X|T],Y) :- reverse1(T,Y), write(Y = X).
/*evenlength(L) oraz oddlength(L), które są spełnione, jeżeli długość listy L jest parzysta oraz nieparzysta.*/
evenlength1([]).
evenlength1([_,_|T]) :- evenlength1(T).
/* oddlength */
oddlength([]).
oddlength([_|T) :- oddlength(T).
/*shift(L1,L2), który jest spełniony, jeżeli L2 równa się L1 po jednej rotacji do lewej.*/
