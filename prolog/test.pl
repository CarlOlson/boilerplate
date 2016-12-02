
user:file_search_path(git, Path) :-
    expand_file_name('~/git/', [Root]),
    directory_files(Root, GitDirs),
    member(Dir, GitDirs),
    string_concat(Root, Dir, Path).

:- include('main.pl').

:- use_module(git(easy_test)).

test :-
    describe("",
	     [
		 ""
	     ]).
