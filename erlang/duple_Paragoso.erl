-module(duple_Paragoso).
-export([duple/2, duple_tail/2]).

duple(N,X) ->
if
 N==0 -> [];
 N>=1 -> [X|duple(N-1,X)]
end.

duple_tail(N,X)-> duple_helper(N,X,[]).

duple_helper(0,X,Acc) -> Acc;
duple_helper(1,X,Acc) -> [X];
duple_helper(N,X,Acc) -> [X|duple_helper(N-1,X,Acc)].


