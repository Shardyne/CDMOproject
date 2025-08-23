
# To Do List of improvements:

## constraint check improvements 'naive_model' &rarr; 'constraint_v1_model'
- **constraint "1. Each match is between two different teams":** 
    instead of checking that each match has two different teams, we could create matches with a strategy that does the job out of the box.

- **constraint "2. Each team plays exactly once per week":** create a strategy to pick a team only once in a single week, can be done as an extraction of teams from a set without reinsertion with weekly granularity.

- **constraint "3. Every pair of teams meets exactly once":** in the naive model this check is done taking the sum of conditions for each period of each week, then iterated on each pair of different teams, so it seems pretty heavy. A better choice could be to find a math identifier that summarizes the fact that a team matches another, then put them in an array and do an alldifferent constraint. ? what 'mathematical id' is suitable for this task??

- **constraint "4. Each team plays at most twice in the same period over the tournament":** even for this constraint I think a better version could be implemented with an extraction strategy .?



> ?? should i create a module that implements a 'marble set' like approach?


## Adding the optional optimization task 'constraint_v..._model' &rarr; 'optimization_v1_model'

## TODO:
- [X] Create a time benchmarking system
- [~] Format correctly .json files results


