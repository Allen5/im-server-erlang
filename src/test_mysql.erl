%% test mysql driven
-module(test_mysql).
-export([test/0]).

test()->
    {ok, Pid} = mysql:start_link([
    {host, "localhost"},
    {user, "root"},
    {password, "allensql"},
    {database, "test"}]),

    {ok, ColumnNames, Rows} = mysql:query(
        Pid,
        <<"SELECT * FROM tb_user WHERE id = ?">>, [1]),

    ok = mysql:query(
        Pid,
        "INSERT INTO tb_user (id, name, age) VALUES (?, ?, ?)",
        [1, "张三", 10]),

    ColumnNames,
    Rows.
