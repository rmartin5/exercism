--module(leap).
-export([is_leap_year/1, float_is_integer/1]).

is_leap_year(Year) ->
    DivBy4 = float_is_integer(Year / 4),
    DivBy100 = float_is_integer(Year / 100),
    DivBy400 = float_is_integer(Year / 400),

    if
        DivBy4 andalso not DivBy100 orelse DivBy400 ->
            true;
        true ->
            false
    end.
    
float_is_integer(N) ->
    Integer = trunc(N),
    case N == Integer of
        true ->
            true;
        false ->
            false
    end.