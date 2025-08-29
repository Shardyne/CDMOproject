include "globals.mzn";

% --- Parameters: requires preprocessed file "preprocessed_data.dzn"
int: n;
int: max_m = ((n*n) div 2)-(n div 2); % maximum number of matches possible
array[int, 1..2] of int: matches; % all possible matches between two different teams (two teams are matched only one time)
int: weeks = n-1;
int: periods = n div 2;
set of int: TEAMS = 1..n;

% --- Decision Variables
set of int: MATCHES = 1..max_m; % identifier of a single match from 'matches' array
array[1..periods, 1..weeks] of var MATCHES: calendar; 
% home team mask
array[1..periods, 1..weeks] of var 1..2: home_team_index;


% --- Constraints
constraint 
    calendar[1,1] == 1
    /\
    home_team_index[1,1] == 1
    /\
    forall(w in 1..weeks-1)(
        lex_lesseq([calendar[p,w] | p in 1..periods], [calendar[p,w+1] | p in 1..periods])
    )
    /\
    % 1. Each team plays once per week
    forall(w in 1..weeks)(
        alldifferent([ matches[ calendar[p,w] ,1] | p in 1..periods]++[ matches[ calendar[p,w] ,2] | p in 1..periods])
    )
    /\
    % 2. Each team plays at most twice in the same period over the tournament
    forall(t in TEAMS, p in 1..periods)(
        sum([ matches[ calendar[p,w] ,1] == t \/ matches[ calendar[p,w] ,2] == t | w in 1..weeks ]) <= 2
    )
    /\
    % 3. Every pair of teams meets exactly once
    alldifferent([calendar[p,w] | p in 1..periods, w in 1..weeks])
    ;


var int: objective_function = abs( sum([ matches[ calendar[p,w] ,home_team_index[p,w]] == 1 | p in 1..periods, w in 1..weeks ]) - (weeks div 2) );
% --- Solve optimizing balance between home and away matches for each team
solve minimize objective_function;

% --- Output 
output [
  "{",
  "\"optimal\":true,",
  "\"obj\":" ++ show(objective_function) ++ ",",
  "\"sol\":[",
    join(",",
         [ "[" ++ join(",",                                                                                                 % 3-home_team_index is like negating the index value "1 or 2"
                       [ "[" ++ show(matches[ calendar[p,w] , home_team_index[p,w]]) ++ "," ++ show(matches[ calendar[p,w] ,3-home_team_index[p,w]]) ++ "]"
                       | w in 1..weeks]) ++ "]"
         | p in 1..periods]),
  "]}"
];