-module(tr_app).
-behavior(application).

-export([ start/2, stop/1 ]).

start(_Type, _StartArgs) ->
    case tr_sup:start_link() of
	{ok, Pid} ->
	    {ok, Pid};
	Error ->
	    Error
    end.

stop(_State) ->
    ok.
