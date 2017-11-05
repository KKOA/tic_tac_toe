### Objective
As part of week 10 (tech test week), I was tasked with creating an Object Oriented Tic Tac Toe game. The aim of this is to build the business logic for the game in such a way that it could be easily implemented in any user interface such as command line.

### Rules
- 2 Players share a single 3 by 3 board.
- Each player gets their own flag/mark
- Players take it in turns to claim a cell on the board.
- A player cannot claim a cell that has already been claimed
- After a player has claimed a cell, it is the other player's turn
- To win the game, a player must succeed in placing three of their markers in a line either
  - horizontally
  - vertically
  - diagonally
- A game ends if one player wins or if the grid is full with no clear winner.

### Technologies Used

- Flog
- Git
- Guard
- pry
- Ruby
- Rspec
- Ruboc op
- Simplecov

### Set up

Open the terminal/command line and type the following
```
git clone tic https://github.com/KKOA/tic_tac_toe.git
git cd tic_tac_toe
bundle install
```

### Run tests
Run the tests once you have navigated inside the 'tic_tac_toe' directory using terminal/command line, type the following
```
run rspec
```

### Test for complexities
Navigate inside 'tic_tac_toe' directory using the terminal/command line and type the following
```
find lib -name \*.rb | xargs flog
```
### My Approach
After reading up on the rules of the game. I started this challenge by creating an initial diagram using a flowchart to illustrate events as shown below.

[flow chart of game logic]

Afterwards, I created a [domain model](docs/doman_model.md) containing my user stories that I had pulled out of the game rules and set about writing my test.

I then setup writing my initial code and refactoring both the test and the code as I went along.
