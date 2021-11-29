# Configuration of Missile Command

There are two files that contain configuration: `aliens.sdl` and `scene.sdl`. The first one can probably be left alone, but you will need to set up the other.

Both of these files are written in [SDLang](https://sdlang.org). I know it's an obscure language, but it's quite expressive and I think it flows quite naturally in this case.

## Scene setup

The file `scene.sdl` controls the whole progress of the game — simply put, it determines what happens when.

It contains instructions of two kinds. One of them is `event`, which is an one-shot thing that happens once and that's it (e. g. a ton of aliens arrives at 15:00). The other is `scene`, which is in effect for longer amount of time and it specifies things that need to occur periodically (e. g. each minute add a bomber).

Each scene starts at the given time and it is in effect until the start of another event. You can provide the events and scenes in any order.

### Scene syntax

The syntax for `scene`s is simple. Here's an example:

    scene at=00:05:30 {
    	each "1 minute" { arrive "bomber" }
    	each "2 minutes 30 seconds" { arrive "mother ship" }
    }

The time after `at` says when the scene comes into effect (measured from the start of the game). It always needs to have hours, minutes and seconds. The effects that take place go into the curly braces (here the opening brace must be on the same line as the `scene` word).

Each of those periodic effects is defined by the word `each` and a string in upright qutes that says how often the effect happens. (You can use minutes and seconds, in this order, so `1 minute`, `35 seconds` or `1 minutes 12 second` is OK (the singular/plural forms can be used freely), but `12 seconds 1 minute` or `1 hour` is not.) The effect itself goes into curly braces again. For the list of possible effects, see below.

The `each` effects are **not** triggered at the start of the scene, so if you have `scene at=00:10:00 { each "10 minutes" { arrive "mother ship" } }`, it means that the first mother ship arrives 20 minutes into the game.

### Event syntax

The syntax for `event`s is almost the same as the syntax for `scenes`; it just uses the word `event` and you cannot use the `each` blocks. An example would be

    event at=00:35:00 {
    	arrive "elite transport"
	arrive "mother ship"
	arrive "leviathan"
    }

### Effect list

You can trigger four different effects:

* `arrive "what"` adds a new alien of type `what`. For the list of aliens along with their internal names, see [rules](RULES.md). If you want several aliens to arrive at once, you must give a separate `arrive` for each. All strings after the first are ignored.
* `arrive-random-choice "alien a" "alien b" (...)` adds a new alien. Its type is randomly chosen from all given types. So `arrive-random-choice "bomber" "bomber" "elite transport"` means that a bomber arrives with a 2/3 chance and an elite transport with a 1/3 chance.
* `lose-game` immediately loses the game.
* `win-game` immediately wins the game.

Put one effect on each line. If you want to put more of them on the same line, separate them with semicolons.

### Example of scene file

    scene at=00:00:00 {
    	each "2 minutes" { arrive-random-choice "bomber" "basic transport" }
    }
    event at=00:07:30 {
    	arrive "command ship"    	
    }
    scene at=00:15:00 {
    	each "1 minutes 20 seconds" { arrive-random-choice "bomber" "bomber" "basic transport" "elite transport" }
	each "4 minutes" { arrive "command ship" }
    }
    event at=00:15:50 {
    	arrive "command ship"    	
    }
    event at=00:25:00 {
    	arrive "mother ship"
    }
    event at=00:30:00 {
    	arrive "mother ship"
    }
    event at=00:35:00 {
    	win
    }

Here the game starts off easy. First two minutes are completely quiet and at 2:00, a first alien (bomber or transport) comes. Then another alien comes each 2 minutes.

At 7:30, we have our first event, and a command ship arrives.

Meanwhile, the aliens keep coming at the rate of one each 2 minutes. At 15:00, the situation changes, and there is considerably more pressure. Aliens now come in each 1:20, and there is a chance that an elite transport comes into the game (it falls faster and it has 2 lives). More command ships also start to show up (at 19:00, 23:00, 27:00 and so on), but before all of that, we have another event at 15:50 which adds another command ship.

A third event at 25:00 adds even more pressure as a mother ship arrives (it has 2 lives AND it sends out more transports and bombers by itself!) And of course the ships still come in according to the second scene, so that's a lot of mess.

At 30:00, a second mother ship appears. Now, if the players endure for another 5 minutes, the victory will be theirs! (Meaning that the technicians have fixed up the power plant, the computers boot up and the missile systems shoot down all the aliens easily.)

## Alien file

Here you can change the parameters of the aliens, and even add your own to the game! The structure of this file is very similar to the scene file. Let's have a look at an example:

    "basic transport" time-to-fall=300 strength=1.0
    "elite transport" time-to-fall=240 strength=1.0 lives=2
    
    "bomber" on-top=true {
    	each "20 seconds" {
    		spawn "bomb"
    	}
    	each "70 seconds" {
    		move "right"
    	}
    }
    
    "bomb" time-to-fall=5 strength=0.1
    
    "command ship" on-top=true lives=2 {
    	command {
    		haste 0.85
    	}
    	each "30 seconds" {
    		move
    	}
    }
    
    "mother ship" on-top=true lives=2 {
    	command {
    		haste 0.85
    	}
    	each "1 minute" {
    		spawn-random-choice "basic transport" "bomber"
    	}
    	each "1 minute 30 seconds" {
    		move
    	}
    }

Each records starts with a string that defines the internal name of the alien (like `"basic transport"`). There are few things to consider with respect to those names:

* First, the scene file refers to the aliens by those names, so make sure they match up.
* Second, each alien needs to have a corresponding texture. You must take care to define the textures `"alien (X)"` and `"alien (X) outline"` in the `data/textures.json` file. Otherwise you will have only red squares instead of aliens.

Next, you can specify the basic parameters: time to fall, strength and lives (the defaults are: time to fall = 5 minutes, strength 100% and 1 life). `on-top=true` means that the alien will stop at the top of the screen and do its thing from there (command, bombing etc.) You can also set `boss=true`, which makes the alien into a boss: if it hits a city, it means an instant loss, if it is destroyed, it means an instant win.

Finally, you can give special abilities in curly braces. The `each` construct works exactly like before. Another possibility is to use `command`, which gives bonuses to all ships in the same column. If you specify `command global=true`, the bonuses are conferred to **all aliens!**

Be warned that aliens with `command` give the bonus to themselves as well! You will need to adjust their falling time and abilities accordingly. Multiple `commands` do not stack; only the best bonus in each category (for now, there is only `haste`) is used.

### Each effects

In `each` blocks, you can use the following effects:

* `spawn` and `spawn-random-choice`. These work just like `arrive` and `arrive-random-choice` in the scene file, but the aliens are spawned below the spawning ship, not on the top of random column.
* `move` moves the alien randomly either one column to the left or to the right. You can also specify the direction with `move "left"` or `move "right"`.
* `win-game` and `lose-game` work exactly like in the scene file.

### Command effects

There is only one command effect so far. It is called `haste` and it makes all affected aliens fall faster and perform their abilities more often. Specifically, `haste X` (where `X` is a floating-point number) means that the time to fall and the periods of all `each` blocks are multiplied by `X`. So `haste 0.85` means that the affected aliens need only 85% of the time to fall down and perform abilities.
