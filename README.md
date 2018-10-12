# :x: tic tak toe :o:

Is a good problem to work through during learn tech as it touches on:
- TDD Skill
- ATDD
- (Clean) Architecture
- SOLID Principles

## Requirements

Using the discipline of TDD, build a game of tic tac toe.

* The game should allow a human to play against an AI.
* The AI should be unbeatable.
* The game should have a user interface of some kind.

**Rules**

1. The game is played on a 3x3 grid.

2. You are X, your opponent is O. Players take turns putting their marks in empty squares.

3. The first player to get 3 of their marks in a row (up, down, across, or diagonally) is the winner.

4. If all 9 squares are full and no player has 3 marks in a row, the game is over. 

### Mod session with Craig
- Test doubles
    - Fakes - `InMemory`
    - Spies - `to have_received(..)`
    - Stub - `double(game: …)`
- Acceptance Testing
- Clean Architecture
    - Request response hashes for use cases
- Mutable domain object _gateway(game)_
- Micro-design decisions + evolving architecture
    - Discussed difference between 2grid vs flat array
    - Discussed difference between positions vs coordinates x,y vs coordinates tuple
- Different data in acceptance tests vs unit tests
- Making note of unfinished stuff to come back to
- Lots of files (major drawback)
