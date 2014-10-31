-module(ex31).

-export([sum/1, sum/2]).

% Add the total of 1..N
sum(N) when N == 1 -> 1;
sum(N) when N > 1 -> N + sum(N - 1).


% calculate the sum of the range N..M but N must be less or equal to M
sum(N, M) when N < M -> N + sum(N + 1, M);
sum(N, M) when N == M -> N;
sum(N, M) when N > M -> throw("My bad, I don't know what to do").
