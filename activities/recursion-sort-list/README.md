# Recursive sort

Students in each row in a classroom cooperatively sort a list using recursion.

| Parameters:        |                                     |
| -----------------: | :---------------------------------- |
| **Duration:**      | 5-10 minutes                        |
| **Participants:**  | 6–X students                        |
| **Instructors:**   | 1 teacher                           |
| **Class:**         | tables                              | 
| **Resources:**     | printed sticky note frames, sticky notes, and a marker              |
| **Prerequisites:** | knowledge of lists and integers     |

## Learning outcomes

* Usage of a recursive algorithm with no prior knowledge of recursion.
* Ability to realize how recursion works from the program execution point of view.

## Setup and preparation

* Prepare sticky note frames
    * The [file](frames.png) contains a matrix of frames `3 x N`, where `N` is the number of students per row in your classroom (the default is 6).
	* You can modify the [SVG file](frames.svg) according to your needs.
* Print `(M // 3) + 1` papers, where `M` is the number of rows you have.
* Cut each paper to three strips containing `N` sticky note frames.
* Place a sticky note with an integer into each frame on each strip (choose arbitrary integers).
* Provide the following instructions to the students -- either prepare a copy for each student or display a slide (in such case, there is [LaTex source](slide.tex) available and an [example picture](frames_example.png)):

1. **if** anyone *asks me for the help*:
    * **if** the list has only one element
        * **return** it to the caller with words: "Here you are"
    * **else**
        * take the sticky note with the *greatest element* from the list and keep it
        * ask your neighbour to the help you sort the rest of the list with words: "Please, sort this list for me"
2. **if** anyone *returns you a list*:
    * place your sticky note at the end of the list
    * **return** your list to the caller with words: "Here you are"

## Activity overview

* Tell the students that from now on, they are not allowed to talk except following the provided instructions (now it is suitable to read the instructions or just let the students to do it on their own).
* Visit each row and give your prepared strip to the first student with words "Please, sort this list for me".
* Now just wait until each of the lists **returns** to you.

## Tips and tricks

* If the list gets stuck at some place, try to consult with the student what is unclear about the instructions.
* If there are some shorter rows formed in the room, just remove the suitable number of sticky notes from the paper.
* It can be useful to first check the size of your sticky notes before printing the papers (default size is 4x5cm).

## Related material

* [Recursive selection sort](https://www.geeksforgeeks.org/recursive-selection-sort/)

## Author

Matej Troják, 2019