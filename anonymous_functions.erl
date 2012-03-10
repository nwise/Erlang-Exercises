Negate = fun(I) -> -I end.
Negate(1).
Negate(-1).

Numbers = [1,2,3,4].
lists:foreach(fun(Number) -> io:format("~p~n", [Number]) end, Numbers).

lists:map(fun(X) -> X + 1 end, Numbers).

Small = fun(X) -> X < 3 end.
Small(4).
Small(1).

lists:filter(Small, Numbers).
lists:all(Small, [0,1,2]).
lists:all(Small, [1,2,3,4]).

lists:any(Small, [1,2,3,4]).
lists:any(Small, [0,1,2]).

lists:any(Small, []).
lists:all(Small, []).

lists:takewhile(Small, Numbers).
lists:dropwhile(Small, Numbers).
lists:takewhile(Small, [1,2,3,4,1]).
lists:dropwhile(Small, [1,2,3,4,1]).

lists:foldl(fun(X, Sum) -> X + Sum end, 0, Numbers).
Adder = fun(ListItem, SumSoFar) -> ListItem + SumSoFar end.
InitialSum = 0.
lists:foldl(Adder, InitialSum, Numbers).
