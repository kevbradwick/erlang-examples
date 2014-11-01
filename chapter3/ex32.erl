-module(ex32).

-compile(export_all).

% Create a list from 1 to N
create(N) when N >= 1 -> create(N - 1) ++ [N];
create(N) when N < 1 -> [].

% Create a list in reverse N..1
create_reverse(N) when N >= 1 -> [N | create_reverse(N - 1)];
create_reverse(N) when N < 1 -> [].
