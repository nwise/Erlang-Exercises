-module(basic).
-export([mirror/1]).

% Erlang is dynamic typed, this function simply returns what it is passed
mirror(Anything) -> Anything.