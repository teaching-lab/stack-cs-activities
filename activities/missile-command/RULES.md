# Rules of Missile Command

There are two kinds of rules. Some of them just describe the inner workings of the program: you don't need to pay attention to them, but it's good to know how the game works. Others are fully in your hands.

## Objective

1. The players try to defend the five cities depicted in the lower part of the screen.
2. If all five cities are destroyed, the players lose.
3. The way to win is dependent on [configuration](CONFIG.md). Typically, the players will win if they endure for a set amount of time, or if they manage to destroy a ship marked as a "boss".

## Rules performed by the program

1. There are five cities on the bottom of the screen. Each city has some amount of health and shield, measured in percent. All cities start with 100% health and 100% shield.
2. Each city has a "column" of space above it. Each alien ship is in certain column.
3. Alien ships arrive from top according to the [configuration](CONFIG.md), and they attack the cities. This is handled automatically by the program. There are two notable facts about this:
    * Aliens never arrive into a column without a city. (So, if a city is destroyed, the aliens will concentrate on the remaining ones.)
    * Newly arriving aliens are placed into a random column. However, columns with many aliens have slightly higher probabilities than columns with few.
4. Some alien ships descend gradually from the top. These aliens have *strength*: when they hit a city, their strength is deducted from the city's shield. If the strength is greater than the shield, the shield drops to zero but there are no further consequences. If the city had zero shield already, the strength is deducted from the health instead.
5. If the health of a city is ever less than or equal to zero, the city is destroyed and removed from the game.
6. Shields are constantly regenerating with rate of 0.5% per second. If the shield in a city drops to zero, the regeneration stops for one minute. Next time the shield drops to zero, it stops for two minutes, then for four minutes, etc. Health can never be regenerated.
7. Some aliens do not descend on the cities. They rather remain on the top of the screen, performing some other activities.
8. Some aliens can spawn other aliens or throw bombs. Some can make all aliens in the same column go faster. See the alien ship list below.
9. Each alien has some number of lives. If it is hit by the players (see below), it loses some amount of the lives. If an alien loses all lives, it is destroyed and removed from the game.

## Rules performed by the teacher

1. All students cooperate together to try to win the game. Students solve the questions that the teacher has provided. The answers can be turned in at any time.
2. If a student wants to shoot at the aliens, they come to the teacher. First, they name an alien that they want to hit. Next, they give answers for any number of questions. All these questions together form one *shot* aimed at the specified alien.
3. The *strength* of a shot is equal to the sum of strengths of all questions that the student answered correctly. If the target alien is not the lowermost alien in its column, the strength is reduced by 1. Then, the alien loses that many lives (the teacher clicks it that many times, each click takes 1 life).
4. All questions can be used at most once. After a shot is performed, the teacher takes all the used questions (regardless of whether they have been answered correctly or incorrectly) and puts them into a discard pile. They may never be used again.

## Alien ship list

Here are all the aliens that come with the game:

| Alien | Internal name | Lives | Strength | Time to fall | Special abilities |
| ----- | ------------- | ----- | -------- | ------------ | ----------------- |
| Transport | `basic transport` | 1 | 100% | 5 min | |
| Bomber | `bomber` | 1 | — | — | *on top*; they drop a 10%-strength bomb each 20 sec |
| Elite transport | `elite transport` | 2 | 100% | 4 min | |
| Command ship | `command ship` | 2 | — | — | *on top*; *command* |
| Mother ship | `mother ship` | 2 | — | — | *on top*; *command*; spawns transport/bomber each minute |
| Leviathan | `leviathan` | 3 | — | 10 min | *boss*; spawns transport each minute; 1-strength shots do not harm it |

*On top* means that the alien does not fall down and stays on top of the screen at all times.

*Command* means that all aliens in the same column are moving and performing special abilities 15% faster.

*Boss*: if it hits a city, the players lose. If it is destroyed, the players win.
