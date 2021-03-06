The Original Hexagonal Rooms

This is a puzzle game masquerading as a text adventure game.  Part of the game is figuring your way around the rooms.  Then there are puzzles to play in each of them.

This project came out of an exercise in Learn Ruby The Hard Way.  I am learning Ruby via building this project, among other things.

To run it, collect all ten .rb files from the main directory into one directory, and type "ruby ex43engine.rb."  At the moment it is incomplete so it will crash if you try to visit certain parts of the blue and purple rooms, and does not have an ending.  The red, orange, yellow, and green rooms do have puzzles to play, however, and navigation throughout all rooms is doable.

In addition, the five puzzles that exist so far are also collected in the "ex43puzzles folder."  Each of those puzzles run on their own and only need the one file to make a complete game.

hangman.rb was extensively refactored thanks to Anshul's suggestions.  If you want to cheat, uncomment lines 70 and 71.

memory.rb is probably way too hard for the main game and has been scaled down to a 4x4 game for the main game, but I left this version at 6x6 as it is standalone.  I originally wanted themes of sixes for each puzzle but will probably not stick to that at this point).  If you want to cheat, uncomment line 59.

anagrams.rb is pretty hard, but there are now hints for every question thanks to my better understanding of regular expressions, and you have 6 categories of which you only have to solve 3 total.

friendlydragon.rb is now complete, including a rigorous testing of every branch of the "adventure".

battleships.rb is now in the finishing stages - it is playable and will need a lot of refactoring.  I removed battleships_coding_notes.txt as well, in order to keep comments inside .rb files (except for this readme).  I added the constraint to the standalone that the user has to find the ships in 7 turns - in the full game the user will get 7, then 6, then 5 guesses in each round.


So the most recent updates are as follows:

(4/27/14)
- Battleships minor bug fixed.  Fully playable now as a standalone.
- Added constraint on number of guesses to battleships.
- Began refactoring battleships.

(4/26/14)
- Battleships made playable with at least one minor bug.  Need to fix the bug and test a bit more, then ready for more refactoring.
- Documentation and file management.

(4/25/14)
- Further work on battleships.rb - it is not complete but mostly runs.  It needs much more testing and bug-fixing, and then will need much more refactoring.
- Began battleships.rb standalone and saved the early refactoring.

(4/24/14)
- Tested friendlydragon.rb and made the appropriate fixes
- Added shortcut functionality for choosing colors and directions - "r" now translates to "red," "f" to "forward," etc.
- Made adjustments to allow the door to the hubroom to stay open from the view of a color room if the color's puzzles solved, and to allow for entry to the hubroom.

(4/23/14)
- Extensive refactoring of ex43orangeroom.rb, which contains the memory game, to both improve the code in general and allow for a 4x4 grid instead of 6x6.
- Finished friendlydragon.rb and integrated it into the ex43greenroom.rb code.
- Sorted out the hints for anagrams.rb and integrated them into the ex43yellowroom.rb code as well.
- I also looked at the spacing of the game's text in general, which was getting pretty crowded to read as you played, and added a bunch of "puts" lines to the following files: ex43redroom.rb, ex43orangeroom.rb, ex43yellowroom.rb, ex43puzzleroom.rb, and ex43engine.rb, to give the text more "breathing room" as you play.  This is just the beginning of this particular aspect of the game design, but I wanted to get started on it and I think it makes play a lot less frustrating.

The current next set of tasks for the overall game remains the same as yesterday:

1) Continue battleships.rb.  DO NOT move on until the code is finished as a standalone game!  (Learned that from anagrams/ex43yellowroom.)
2) Integrate the battleships.rb code into ex43blueroom.rb.
3) Write tictactoe.rb (non AI, program plays poorly enough that a win is required from the player).  DO NOT move on until the code is finished as a standalone game!
4) Write a boss battle standalone (six questions whose answers include the six colors of the game, without the player knowing)!
5) Code the ending framework including integrating the boss battle, to be triggered when each room has 3 wins.
6) Clean up the indenting in all files.
7) Clean up the code, refactor it and test it extensively (ongoing projects).


That's it for now....