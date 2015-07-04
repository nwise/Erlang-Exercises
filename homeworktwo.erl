-module(homeworktwo).
-export([matcher/2]).

%-- List of k,v pairs, TargetKey is to be used to return value
matcher(List, TargetKey) ->

  %-- Values is an array
  %-- (Key == TargetKey) assigns input to Key
  %-- {Key, Value} <- List creates a list of k,v pairs where Key is TargetKey
  %-- Value || {Key, Value} takes the value
  Values = [ Value || {Key, Value} <- List, (Key == TargetKey) ],
  case Values of
    %-- matches the first value of the Values array and throws away the rest
    [ FirstValue | _ ] ->
      FirstValue;
    %-- matches an emtpty set so that if there were no matches in the prior step, we can still match.
    [] ->
      false
    end
.
