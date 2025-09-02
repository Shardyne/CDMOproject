include "globals.mzn";

% --- Parameters: requires preprocessed file "preprocessed_data.dzn"
int: n;
int: max_m = ((n*n) div 2)-(n div 2); % maximum number of matches possible
array[int, 1..2] of int: matches; % all possible matches between two different teams (two teams are matched only one time)
int: weeks = n-1;
int: periods = n div 2;
set of int: TEAMS = 1..n;

% --- Decision Variables
array[1..periods, 2..weeks] of var periods+1..max_m: calendar; 
array[1..periods] of 1..periods: first_week = [p | p in 1..periods];

constraint forall(p in 1..periods) (
    first_week[p] == p
);

% --- Constraints
constraint
    calendar[1,2] == periods+1
    /\
    forall(w in 2..weeks-1)(
        lex_lesseq([calendar[p,w] | p in 1..periods], [calendar[p,w+1] | p in 1..periods])
    )
    /\
    % 1. Each team plays once per week
    forall(w in 2..weeks)(
        alldifferent([ matches[ calendar[p,w] ,1] | p in 1..periods]++[ matches[ calendar[p,w] ,2] | p in 1..periods])
    )
    /\
    % 2. Each team plays at most twice in the same period over the tournament
    forall(t in TEAMS, p in 1..periods)(
        sum([ matches[ calendar[p,w] ,1] == t \/ matches[ calendar[p,w] ,2] == t | w in 2..weeks ]
         ++ [matches[ first_week[p] ,1] == t \/ matches[ first_week[p] ,2] == t]) <= 2
    )
    /\
    % 3. Every pair of teams meets exactly once
    alldifferent([calendar[p,w] | p in 1..periods, w in 2..weeks])
    ;

% --- Solve
solve satisfy;

% --- Output 
output [
  "{",
  "\"optimal\":false,",
  "\"obj\":\"None\",",
  "\"sol\":[",
    join(",",
         [ "[" ++ join(",",
                       [ "[" ++ show(matches[ first_week[p] ,1]) ++ "," ++ show(matches[ first_week[p] ,2]) ++ "]"] ++ 
                       [ "[" ++ show(matches[ calendar[p,w] ,1]) ++ "," ++ show(matches[ calendar[p,w] ,2]) ++ "]"
                       | w in 2..weeks]) ++ "]"
         | p in 1..periods]),
  "]}"
];