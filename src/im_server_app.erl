<<<<<<< HEAD
%%%-------------------------------------------------------------------
%% @doc im_server public API
%% @end
%%%-------------------------------------------------------------------

=======
>>>>>>> d136b3106abf3bcd03e93fffc6fccec57af8fbbc
-module(im_server_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

<<<<<<< HEAD
%%====================================================================
%% API
%%====================================================================
=======
%% ===================================================================
%% Application callbacks
%% ===================================================================
>>>>>>> d136b3106abf3bcd03e93fffc6fccec57af8fbbc

start(_StartType, _StartArgs) ->
    im_server_sup:start_link().

<<<<<<< HEAD
%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
=======
stop(_State) ->
    ok.
>>>>>>> d136b3106abf3bcd03e93fffc6fccec57af8fbbc
