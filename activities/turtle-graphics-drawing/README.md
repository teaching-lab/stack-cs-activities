# Turtle graphics drawing

In this exercise, the students draw a simple picture on paper. In pairs, one of them explains the drawing to the other while (s)he draws. Then, both write code that draws the given picture.

| Parameters:        |                            |
| -----------------: | :------------------------- |
| **Duration:**      | 20 minutes                 |
| **Participants:**  | 2–30 students              |
| **Instructors:**   | 1 teacher                  |
| **Class:**         | a standard or PC classroom |
| **Resources:**     | pen, paper, and computers for everyone                |
| **Prerequisites:** | basic turtle graphics commands in a selected language |

## Learning outcomes

* Understand that algorithm specification requires precise instructions.
* Practice using turtle graphics in a selected programming language.

## Setup and preparation

* Prepare exemplary drawings, such as a [house](examples/house.png) \([source](examples/house.py)\) or a [spiral](examples/spiral.png) \([source](examples/spiral.py)\).

## Activity overview

1. Each student thinks about a simple drawing composed of straight lines. Ideally, the picture should be drawn only by moving a pen forward, backward, or rotating.
	* This imitates the basic turtle graphics commands (`forward(length)`, `back(length)`, `left(angle)`, `right(angle)` in Python.)
	* Lifting the pen up and then moving it at a different part of the drawing canvas (paper) is possible (`penup()` and `pendown()` in Python.)
	* Show a few examples, which can be used as a fallback option if someone cannot think of anything.
2. Each student draws their picture on a paper, which they mustn't show to anyone!
3. Let them think about how they would explain the process of drawing the picture.
4. Pair the students and let them decide who will be explaining (A) and who will be drawing (B).
	* Alternative: The one who is taller/born sooner/etc. will be explaining.
5. In each pair, A explains his/her picture and B is drawing based on the instructions. The important thing is that A cannot look whether B is drawing correctly or not. However, B can ask for clarification of certain instructions.
	* A more difficult alternative is that B can't ask for clarification, with the exception when B hasn't heard the instruction.
6. When B finishes drawing, A checks the result. They both discuss any differences and what was their cause.
7. At this point, walk around the groups and ask them if they had any problems and why. They will usually answer that some of the instructions were not precisely given or understood. Make a connection to writing programs: specific instructions are necessary for the computation to be performed.
8. Both A and B write code that draws the given picture using turtle graphics. Afterward, they compare their code and discuss their approach.

## Tips and tricks

* Usually, one round of drawing and explaining is enough. However, offer the students the option to swap roles and repeat the activity. Or, you can assign it as homework.
* The programming phase tends to be quite fast since both students in the pair already understand the process of drawing of the given picture. Point out that when a programmer has this conceptual understanding, the actual coding is easier.

## Related material

* [The official documentation for Python Turtle graphics](https://docs.python.org/3/library/turtle.html)

## Author

Valdemar Švábenský, 2017
