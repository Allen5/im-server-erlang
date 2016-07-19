%%%-------------------------------------------------------------------
%% @doc im_server public API
%% @end
%%%-------------------------------------------------------------------
-module(im_server_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================
start(_StartType, _StartArgs) ->
    im_server_sup:start_link().
%%--------------------------------------------------------------------
stop(_State) ->
    ok.
