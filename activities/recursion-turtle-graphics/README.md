# Recursion with turtle graphics

The goal of the activity is to practice recursion on a concrete example of a simple code drawing with turtle graphics. The code is executed step-by-step on a whiteboard, and the students individually estimate how will the resulting drawing look like. During the activity, the students can change their opinions.

| Parameters:        |                                      |
| -----------------: | :----------------------------------- |
| **Duration:**      | 20--30 minutes                       |
| **Participants:**  | 1–N students (practically unlimited) |
| **Instructors:**   | 1 teacher                            |
| **Class:**         | any classroom, ideally with a magnetic whiteboard           |
| **Resources:**     | printed code, choices of drawings, markers, magnets         |
| **Prerequisites:** | Turtle graphics commands in Python, the basics of recursion |

## Learning outcomes

* Exercise the concept of recursion.
* Practice code understanding.
* Explain and reason about the code with a peer.

## Setup and preparation

* For a classroom with a magnetic whiteboard, bring whiteboard markers and magnets.
* Print the following files:
  * Three times \(based on the recursion depth\) [the main drawing function](print/main_function.pdf) in a big font \([source code](code/main_function.py)\)
  * (Optional) the same drawing function in a smaller font as a handout for each student
  * [The correct solution](print/tree_correct.pdf) for calling the function _draw\(3\)_ \([source code](code/tree_correct.py)\)
  * [Distractor 1](print/tree_distractor_1.pdf) \([source code](code/tree_distractor_1.py)\)
  * [Distractor 2](print/tree_distractor_2.pdf) \([source code](code/tree_distractor_2.py)\)
  * [Distractor 3](print/tree_distractor_3.pdf) \([source code](code/tree_distractor_3.py)\)
  * [Distractor 4](print/tree_distractor_4.pdf) \([source code](code/tree_distractor_4.py)\)
  * Use one-sided printing.

## Activity overview

The activity has four phases detailed below.

### Phase 1: Beginning

1. Explain the activity. The students are given a recursive function that draws a picture using turtle graphics. The goal is to determine which of the given options is the correct picture that will be drawn when the function is called.
2. Pin the printed code of the function on the whiteboard.
3. (Optional) Give the code handout to each student.
4. Show 3 to 5 choices of possible drawings to the students.
5. Let the students think individually.
6. Commence voting and record the number of votes for each choice.

### Phase 2: Recursive call \(repeat based on recursion depth, the default is 3 times\)

1. Gradually highlight the executed lines on the printed code of the `draw()` function, similarly as a debugger. At the same time, draw the position of the turtle and how it moves on the whiteboard.
2. When the code execution reaches the recursive call, cover the current code with a new printed copy of the function. This imitates a stack.
3. Give the students the option to reconsider their initial choice.
4. Commence new voting and record how the number of votes for each choice changes.

### Phase 3: Backtracking

1. Before the first backtracking, assign students into small groups so that the members have differing opinions on the result. (The groups need not have equal size.)
2. Let the students discuss their opinions in groups and try to convince each other about the correctness of their choice.
3. Selected groups can present their arguments to other groups.
4. When the function execution ends, remove one paper with the code.
5. Finish the simulation by having the students say how should the turtle move.

### Phase 4: Reflection and discussion

You can discuss the learning outcomes and difficulty of the activity with the students. These questions are possible:

* At which moment did you become sure about the result?
* Which line of code did something different than you expected?
* Which line of code did exactly what you expected?
* (Extension) How would you need to change the function so that it draws one of the distractors?
* (Extension) How would the result look like if we removed line X from the drawing function?

## Tips and tricks

* Preparing the activity will take you 15 to 60 minutes, depending on if you will change any of the source files.
* If you don't have a magnetic whiteboard but you have a chalkboard or a flipchart, bring a duct tape and scissors to pin the choices.
* The activity is ideal for the beginning of a lab session as a warm-up.
* The part of this activity is for the students to make mistakes and then re-evaluate and correct their judgment.
* Typically, the students have troubles with the part of the code *after* the recursive call. Consider this when selecting distractors.
* The following modifications are possible:
  * Set a number of recursive calls (parameter _depth_) other than the default 3. Every other recursive call will prolong the activity by 5 minutes. Be careful that if the depth is too large, the activity becomes boring. On the other hand, too small depth is not a challenge.
  * You can change the drawing parameters, such as line length or rotation angle, based on the recursion depth.
  * Instead of Turtle graphics, you can use any other recursive computation (such as a Fibonacci sequence), but this is more abstract and might be more difficult.
  * The activity can be easily modified to another language than Python.

## Related material

* [The official documentation for Python Turtle graphics](https://docs.python.org/3/library/turtle.html)

## Author

Jaroslav Čechák, 2017.
