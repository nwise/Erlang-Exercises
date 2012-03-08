-module(word_count).
-export([num_words/1]).
-export([count_spaces/1]).

num_words(N) ->
  count_spaces(N) + 1
.

count_spaces(" ") -> 1;
count_spaces(N) -> 
  Length = string:len(N),
  if
    Length>1 ->
     count_spaces(string:substr(N, 1, 1)) + count_spaces(string:substr(N, 2, string:len(N)));
    true ->
      0
  end
.
