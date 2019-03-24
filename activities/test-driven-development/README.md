# Test-driven development

Students form pairs and write code and tests in the Test Driven Development (TDD) mode while switching developer and tester roles.

| Parameters:        |                   |
| -----------------: | :---------------- |
| **Duration:**      | 20 minutes        |
| **Participants:**  | 2–16 students     |
| **Instructors:**   | 1 teacher         |
| **Class:**         | PCs, projector    |
| **Resources:**     | Distinguishable pairs of cards |
| **Prerequisites:** | Basis of programming (if, while, for) and basic knowledge about unit tests structure (arrange, act, assert) |

## Learning outcomes

* Writing unit tests
* Learning different aproaches to programming and testing

## Setup and preparation

* The only physical item that is useful for the activity is some kind of cards (or anything easily visually distinguishable) where one is, for example, blue (and represents a developer in a pair) and the other is red (tester). Each pair receives one blue and one red card.
* Basic unit test example with clearly separated parts (arrange, act and assert part). Students often do not have any real experience with unit test writing and they get lost very early without this.

## Activity overview

1. Teacher explains the required functionality of the program. A suitable assignment is leap year detection (write a function that takes an integer argument and returns true if it represent a leap year, otherwise it returns false).
2. Teacher divides students into pairs. (If there is an odd number of students, the teacher can join a group or form one trio.)
3. Teacher shows an example of a unit test on a projector. For C\#, you can use the example in the [FactorialProject](FactorialProject) folder. The example remains visible until the end of the activity.
4. Students divide the cards and start working.
     1. Blue card student writes the basic skeleton of classes and methods (without any functionality).
     2. Red card student writes the first basic unit test.
     3. Blue card student writes the functionality for this unit test.
     4. Red card student writes another test that will break the functionality.
     5. The students switch cards.
     6. Repeat 3. and 4. until the assignment is done. (For the leap year assignment, four unit tests should be enough.)

## Tips and tricks

* If you do not like the leap year assignment, you can use anything that is reasonably easy to program and includes various testable functionality.
* The activity was tested in class with about 14 students. Students easily forgot the idea of TDD and (unintentionally) write the whole functionality before tests. Collective coordination of steps 4.1 - 4.6 is very helpful.

## Related material

* https://gist.github.com/alastairs/1142957 (many people have no idea that there are more conditions than `year % 4 == 0`)

## Author

Štefan Bojnák, 2019
