Feature: TicTacToe

A short summary of the feature

@tag1
Scenario: add two player
	Given add player one
	And add player two
	Then we have two player

Scenario: start the game
	Given add player one
	And add player two
	And start the game
	Then the game as start

Scenario: verrify player turn
	Given add player one
	And add player two
	And start the game
	And one play on A1
	Then it is two turn

Scenario: verrify cheat
	Given add player one
	And add player two
	And start the game
	And one play on A1
	And one play on A2
	Then error player one play two time

Scenario: player win vertically
	Given add player one
	And add player two
	And start the game
	And one play on A1
	And two play on B2
	And one play on A2
	And two play on C1
	And one play on A3
	Then player one win the game

Scenario: player win horizontally
	Given add player one
	And add player two
	And start the game
	And one play on A1
	And two play on B2
	And one play on b1
	And two play on C3
	And one play on C1
	Then player one win the game

Scenario: player win diagonally
	Given add player one
	And add player two
	And start the game
	And one play on B2
	And two play on C1
	And one play on A1
	And two play on C2
	And one play on C3
	Then player one win the game

	
Scenario: draw game
	Given add player one
	And add player two
	And start the game
	And one play on B2
	And two play on C1
	And one play on A1
	And two play on C3
	And one play on C2
	And two play on A2
	And one play on B1
	And two play on B3
	And one play on A3
	Then the game is a draw

Scenario: verrify play on the same row
	Given add player one
	And add player two
	And start the game
	And one play on A1
	And one play on A1
	Then error player two play on the same row