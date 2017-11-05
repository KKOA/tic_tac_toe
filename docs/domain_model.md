# User Stories to Domain model

## Scenario

### 1.
For 2 people to play a game of tic tac toe,<br>
we want an empty board.

### 2.
As a player,<br>
I would like to see the current state of the game<br>
in order to plan my next move.

### 3.
As a player,<br>
so that I can try and win,<br>
I would like to claim an unoccupied cell on the board with my marker.

### 4.
For the game to be fair,<br>
my opponent and I would like to take it in turns to place our markers on the board.

### 5.
As player,<br>
so that I know if I have won,<br>
I want to be notified of the game outcome.

### 6.
As a lonely player,<br>
so that I can keep my Tic Tac Toe skills up the scratch,<br>
I want to play a computerised opponent.

### 7.
As a player,<br>
so that I can enjoy my game of Tic Tac Toe,<br>
I want an engaging interface.


## Nouns in User stories
- player
- game
- board

## Verbs in User stories
- view_board
- place_piece
- switch_player
- game_over?
- win?
- full?
- available?
- on_board?
- result

## Functional representation of that story
| Objects | Messages                                                                                    |
|---------|---------------------------------------------------------------------------------------------|
| player  | name                                                                                        |
| game    | place_piece <br>view_board <br>switch_player <br>current_player <br>game_over <br>result    |
| board   | full? <br>available? <br>on_board <br>                                                       |

## How our objects will use messages to communicate  with one another

player  <-- name --> name

game    <-- place_piece --> piece capture or not
game    <-- view_board -->  board
game    <-- switch player
game    <-- current_player --> player
game    <-- game_over? --> true/false
game  <-- result --> outcome

board <-- full? --> true/false
board <-- available? --> true/false
board <-- on_board --> true/false
