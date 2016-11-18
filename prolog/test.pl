
:- ['easy_test/easy_test'].

:- include('main.pl').

:- initialization main.

test :-
    describe(test/0,
	     [
		 ""
	     ]).

main :-
    test, halt;
    halt.
