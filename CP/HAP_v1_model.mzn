include "globals.mzn";

% --- Parameters: requires partial solution "partial_output.dzn"
int: n;
set of int: TEAMS = 1..n;
int: weeks = n-1;
int: periods = n div 2;
array[1..periods, 1..weeks, 1..2] of var TEAMS: sol;


% --- Decision Variables
% home team mask
array[1..periods, 1..weeks] of var 1..2: home_team_index;


% --- Constraints
constraint 
    home_team_index[1,1] == 1;


int: exp_base = 5;
int: away_games_target = ((weeks div 2) * sum([pow(exp_base, t) | t in TEAMS]));
var int: objective_function = abs( sum([ pow(exp_base, sol[p,w ,home_team_index[p,w]]) | p in 1..periods, w in 1..weeks ]) - away_games_target );
% --- Solve optimizing balance between home and away matches for each team
solve minimize objective_function;

% --- Output 
output [
  "{",
  "\"optimal\":true,",
  "\"obj\":" ++ show(objective_function) ++ ",",
  "\"sol\":[",
    join(",",
         [ "[" ++ join(",",                                                                 % 3-home_team_index is like negating the index value "1 or 2"
                       [ "[" ++ show(sol[p,w ,home_team_index[p,w]]) ++ "," ++ show(sol[p,w ,3-home_team_index[p,w]]) ++ "]"
                       | w in 1..weeks]) ++ "]"
         | p in 1..periods]),
  "]}"
];