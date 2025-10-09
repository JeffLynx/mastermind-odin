# mastermind-odin
Mastermind on the command line.
In it's current state, the game:

Introduces the game to the player and lets them choose whether or not to play with repeats in the secret combination.
Generates a four color combination by sampling an array of 6 possible colors.

Validates input and re-prompts the player for input if they enter an invalid color and/or an invalid amount of colors.

Counts and displays exact matches (right color in the right place) and partial matches (right color in the wrong place) each turn.

If max turns are reached without the player cracking the code, displays a loss message and shows the secret code.

If player cracks the code, displays a win message.

TODO: Implement a computer player and let the player choose if they want to be the code maker or the code breaker.
