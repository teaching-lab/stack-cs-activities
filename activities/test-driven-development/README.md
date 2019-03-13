# Activity template

Students form into pairs and they write code and tests in Test Driven Development mode with switching developer and tester role.

| Parameters:        |                                     |
| -----------------: | :---------------------------------- |
| **Duration:**      | 20 minutes                          |
| **Participants:**  | 2–16 students                       |
| **Instructors:**   | 1 teacher                          |
| **Class:**         | PCs        |
| **Resources:**     | Distinguishable pairs of cards             |
| **Prerequisites:** | Basis of programming (if, while, for) and basic knowledge about unit tests structure (arrange, act, assert) |

## Learning outcomes

* Writing unit tests.
* Learning different aproach to the programming and testing

## Setup and preparation

* The only physical tool which is good to bring for the activity is some kind of cards (or anything easily visually distinguishable) where one have for example blue color (which represents a developer in a pair) and red color (tester). Each pair receives one blue and one red card.
* Basic unit test example with clearly separated parts (arrange, act and assert part). Students often do not have any real experience with unit test writing and they get lost very early without this.

## Activity overview

1. Teacher explains, what functionality he requires. 
Good and easy assignment here is leap year (write function, which takes an integer as argument and returns true if it represent a leap year, otherwise it returns false).
2. Teacher divides students into pairs (if odd number of students, teacher can join or make one improvised trio)
3. Unit test example is shown on a projector (and it should be there until the end of activity)
4. Students divide cards and start working
     1. Blue card student writes basic skeleton of class and method (without any functionality).
     2. Red card student writes first basic unit test.
     3. Blue card student writes functionality for this unit test.
     4. Red card student writes another test which will break the functionality.
     5. -- switching cards --
     6. Repeat 3. and 4. until it is done (for this 4 unit tests should be enough)


## Tips and tricks

* If you do not like leap year function, you can use anything. It should be easy to programming and to find different testable functionality.
* Tested in class with about 14 students, no problem with that.
* Students very easy forget the idea of TDD and they write whole functionality before test (often without an intention). Collective coordination of steps 4.1 - 4.6 is very helpful.

## Related material
https://gist.github.com/alastairs/1142957 (many people have no idea there is more conditions than "year % 4 == 0")

## Author

Štefan Bojnák, 2019