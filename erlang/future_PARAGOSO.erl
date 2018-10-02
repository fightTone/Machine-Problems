-module(future_PARAGOSO).
-export([fast_expo/2, fast_expon/2], [duple/2, duple_tail/2], [exists/2, listLength/1], [countOccurrences/2, append/2], [reverse/1], [filterList/2, even/1], [server/2, func/1]).


fast_expo(X,N)->

if
	(N==0)->1;
	(N==1)->X;
	(N rem 2 =/= 0) -> X*fast_expo(X*X,(N-1) div 2);
	(N rem 2 =:= 0) -> fast_expo(X*X,N div 2)
end.

fast_expon(X,N)-> func_help(X,N,1).

	func_help(X,0,Result)-> Result;
	func_help(X,1,Result)-> X;
	func_help(X,N,Result)->
		if
			(N rem 2 =/= 0) -> 
				X *func_help(X,(N-1),Result * X);
			(N rem 2 =:= 0) -> 
				func_help(X*X,N div 2, Result * X)
 end.

duple(N,X) ->
if
 N==0 -> [];
 N>=1 -> [X|duple(N-1,X)]
end.

duple_tail(N,X)-> duple_helper(N,X,[]).

duple_helper(0,X,Acc) -> Acc;
duple_helper(1,X,Acc) -> [X];
duple_helper(N,X,Acc) -> [X|duple_helper(N-1,X,Acc)]. 
exists(X,Y)->
	A = hd(Y),
	B = tl(Y),
if
	X =:= A -> true;
	B =:= [] -> false;
	X /= B -> exists(X,B)
end.

listLength([]) -> 0;
listLength(Q) ->
	Tail = tl(Q),
if
	Tail == [] -> 1;
	Tail /= [] -> 1 + listLength(Tail)
end.


countOccurrences(_,[]) ->0;
countOccurrences(X,Y) ->
A=hd(Y),
B=tl(Y),

if
 X==A -> 1+countOccurrences(X,B);
 X/=A  -> countOccurrences(X,B);
 B=:=[] -> 0
end.

append([],[]) -> [];
append(X,[]) -> X;
append([],Y) -> Y;


append(X,Y) -> [hd(X)|append(tl(X),Y)].


reverse(X) -> revhelp(X,[]).

revhelp([],Acc) -> Acc;
revhelp(X,Acc) -> revhelp(tl(X),[hd(X)|Acc]).

filterList(_,[]) ->[];
filterList(A,X) ->

Is = A(hd(X)),

if
	Is == true ->	[hd(X)|filterList(A,tl(X))];
	Is == false ->	filterList(A,tl(X))
end.


even(X) ->
if 
	X rem 2 == 0 -> true;
	X rem 2 /= 0 -> false
end.

server(Msg, M) ->
A = spawn (parg, func, ["Ping"]),
B = spawn (parg, func, ["Pong"]),
B ! {A, M*2, Msg}. 


func(Name) ->
	receive
	{A,1,Msg} -> 
                io:format("~s recieve ~p weeeh~n", [Name, 		Msg]), exit (A);
	
	{A,M,Msg} ->
                 io:format("~s recieve ~p pooh ~n", [Name,Msg]),
        A ! {self(), M-1, Msg},func(Name)

end.

