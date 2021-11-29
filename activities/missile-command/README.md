# Missile Command

A little "game" useful for spicing up practice sessions. By solving problems, students try to shoot down alien ships attempting to destroy the last of humanity's cities. The game is subject-agnostic and can be used for practicing pretty much anything with well-defined correct answers. Everything is configurable (and **you will need to configure it to suit your needs** if you want to use it meaningfully).

| Parameters:        |                                     |
| -----------------: | :---------------------------------- |
| **Duration:**      | as long as you want, but 20-30 min is a reasonable minimum |
| **Participants:**  | any number of students, but the more the better; 10-20 is a minimum |
| **Instructors:**   | 1-2 teachers                        |
| **Class:**         | needs projector                     |
| **Resources:**     | a computer with a projector         |
| **Prerequisites:** | anything, depending on how you use it |

*All the outcomes, instructions etc. are highly dependent on how you want to use it. I just describe what seemed good for my use case: yours will be different and you will to adapt the thing for it.* **Be sure to read the [rules](RULES.md) and the [configuration specs](CONFIG.md).**

## Learning outcomes

They depend a lot on how you use it. The common point is that the students get to do exercises in a different and maybe sort-of-fun way (it's supposed to be a game!), which should help to strenghten the command of what they learn ("I know how to do this integral, we did it 5 seconds before the big ship killed our second-to-last city!").

The other point is that by including such a game, the students may stop considering the practice sessions to be a chore, and they may perhaps, eventually, even start looking forward to them. And they will surely remember more if they have a positive attitude about it.

## Setup and preparation

Download the program (grab one of the archives according to your platform -- sadly I have only Windows 64-bit build right now, which is an irony because the game was developed on Linux. AppImage should be coming shortly).

You need to prepare some questions beforehand. The questions should have precisely defined answers, so this is geared towards mathematics and similar sciences (this activity was designed to help practicing calculation of integrals). Each question should have a *strength* from 1 to 3 (according to its difficulty). Make a lot of the 1-questions and only a couple of the 3-questions.

The questions should be numbered with unique numbers, and you should make yourself a list of answers sorted by the numbers.

Ideally, each question should have its own "card" (a paper slip or anything like that), with its number, strength and text on it. If you prepare such cards, you should put them in a place in your classroom that everybody can easily reach. That may include moving some tables into the center of the classroom.

Right before you start, you will need to get your computer and projector running.

## Activity overview

1. You may start the game by a little intro to set up the general mood. Put on your best "dramatic narrator voice" and say something along the lines of: *"It is the year 2137 and the humanity has been under the alien attack for several years now. Wave after wave of alien ships and transports try to conquer the whole Earth. The defences that the humans have put up were too weak: everything that remains is five cities which still hold their ground, covered by shields and missile bases. However, one day a disaster struck: a whole power plant blacked out and all the computers used for aiming the missiles are down. The rest of the power is barely sufficient to hold up the shields and the missile launchers themselves. The technicians are working like mad, but even with that, the power plant will take __(insert game duration)__ to get it running again. In that time, someone must do the impossible and aim the missiles by manual calculations. And that someone — is you!"*
2. Once the game starts, the alien ships start to arrive (according to your configuration). The ships will automatically try to destroy the five towns according to the [rules](RULES.md). That is clearly visible on the game screen (which needs to be shown using a projector or a similar device).
3. You need to sit at the computer, with your answer list prepared. The students solve the questions. Any time, they can come to you and try to shoot at the alien ships by turning in the answers. Each correctly answered question can be used to hit one alien ship (but see [rules](RULES.md)). In any case, the questions that have been turned in are removed from the game and they cannot be turned in again (if you have them on "cards", you just put the used cards on some sort of discard pile).
4. This repeats until the students either win (by fulfilling the victory condition that you need to set up — see [configuration](CONFIG.md)), or lose (by all five cities being wiped out). The program takes care of that automatically.

### Basic controls for the program

The program just mostly runs and does its own thing. There are only three useful controls:
* Pause/unpause the game at any time by hitting SPACE.
* Hitting Esc quits the game.
* If you move the mouse over an alien ship, its outline will change to yellow. If you click the left mouse button, the highlighted alien will be hit and loses 1 life.

## Tips and tricks

It's good to use this for some questions that are not entirely straightforward and take a bit of time to solve. One thing that I would especially like to **discourage** you from is using multiple choice (it's too quick, easy to guess, and even without that it's a bit random).

The exact numbers depend on your [configuration](CONFIG.md), but in general: don't overdo it with the ships. Keep in mind that some (most) of the ships take multiple hits to defeat.

Keep it light. Emphasize the fact that this is done just for fun. You can start the game with a bit of joke: *"I chose the numbers of ships however it seemed fit to me, but it's certainly unbalanced. So, if you win, it's because you did well, if you lose, it's because it was badly balanced anyway."* You certainly don't want to reinforce the feeling that everything must be done fast in order to be of any value (especially in math).

## Related material

* [Rules of the game](RULES.md)
* [Configuration specs](CONFIG.md)
* [The GitLab repository of this program](https://gitlab.com/ramillies/missile-command) (it is kept in a separate repository and this only has release files).

## Author

Darek Cidlinský, 2021.
