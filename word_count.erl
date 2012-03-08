-module(word_count).
-export([word_count/1]).

word_count(" ") -> 1;
word_count(N) -> 
  Length = string:len(N),
  if
    Length>1 ->
     word_count(string:substr(N, 1, 1)) + word_count(string:substr(N, 2, string:len(N)));
    true ->
      0
  end.
