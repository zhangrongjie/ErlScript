%%自动生成,请不要修改
%%@datetime:{{2015,3,6}{18,59,26}}
-module(script_test4).

-compile([expert_all]).

execute() ->
    xscript_function_define:find_target(1,xscript_function_define:enemy_scope(1,0,0,0),170,40),
    case 
        xscript_function_define:check_target(1,num) > 0  andalso
        xscript_function_define:level() > 3  of 
        true ->
            xscript_function_define:apply(1,skill,1204),
            xscript_function_define:wait(2000, {xscript_function_define, 2, []});
        false ->
            xscript_function_define:find_target(xscript_function_define:enemy_scope(1,0,0,0,1000,1000)),
            case 
                xscript_function_define:check_target(2,num) > 0  of 
                true ->
                    xscript_function_define:move(3,10000,500),
                    xscript_function_define:wait(500, {xscript_function_define, 3, []});
                false ->
                    xscript_function_define:moverandom(1000),
                    xscript_function_define:wait(1000, {xscript_function_define, 4, []})
            end
    end.
script_function(1) ->
    script_function(5).
script_function(5) ->
    case 
        xscript_function_define:random_find(1,num) > 0  of 
        true ->
            xscript_function_define:attack_target(100),
            xscript_function_define:create_monster(1,500),
            script_function(5);
        _ ->
            ok
    end
script_function(4) ->
    xscript_function_define:apply(55,skill,66),
    script_function(1).
script_function(3) ->
    xscript_function_define:apply(12,skill,22),
    script_function(1).
script_function(2) ->
    xscript_function_define:moverandom(1500),
    script_function(1).