# Graph tokens

This guide describes how to construct physical tokens that represent vertices of a graph. The tokens are two-sided and contain magnets that allow them to be pinned on a whiteboard, instead of drawing them. They are applicable to many different educational activities.

The tokens allow practicing Red-black trees. One side has a black ring, the other red. This allows easier, more explicit visualization of the tree and faster swapping of nodes or changing their colors. The edges between nodes must be drawn on the whiteboard, but they are usually not redrawn often.

TODO fill parameters for the RB tree activity

| Parameters:        |                                     |
| -----------------: | :---------------------------------- |
| **Duration:**      | XX minutes                          |
| **Participants:**  | X–XX students                       |
| **Instructors:**   | X teachers                          |
| **Class:**         | tables/PCs/board/outdoor/...        |
| **Resources:**     | stuff you need to have              |
| **Prerequisites:** | things students need to know before |

## Learning outcomes

* TODO learning goals of the RB tree activity
* What will students learn/practice?
* Several bullet points (about 2–5).

## Setup and preparation

* Nodes must be 3D printed (any 3D printer will suffice). For one token:
    * 2x token.stl (rims of the tokens that contains magnets)
    * 2x token_plate.stl (plates on which user draws)
    * TODO aren't these missing files or something?
* Model is designed for 4x1 mm tokens
* To modify the model, OpenSCAD is required (token.scad)
* Assembly guide:
    * Glue the magnets inside the 3D models (simply try the count of magnets you really need, you do not have to fill all the positions) TODO what do you mean by the note in brackets?
    * Paint the tokens itself, use these layers (used canned sprays):
        * base for plastic
        * filler (parts are 3D printer and this helps) TODO what do you mean by the note in brackets?
        * color
        * lacquer (if you want the color to be durable)
    * Paint the token plates (this is necessary for the surface to work same way as whiteboard):
        * base for plastic
        * 4-5 thin layers of filler
        * use sandpaper to make the surface perfectly level
        * 4-5 thin layers of filler
        * sandpaper again
        * color
        * lacquer 
    * Glue the halfs together (or you can heat the edges of the halfs, so they melt together)

## Activity overview

* TODO What happens during the activity?
* Does it have multiple phases?
* What is the teacher doing/saying?
* Try to keep it short, comprehensible and well-structured.

## Tips and tricks

* When visualizing the tree, slow down if the students need to redraw the tree on their papers.
* When students are writing something down, they are not paying attention.
* The students will not write down each change of the tree made on the table, only the ones that make sense (TODO what do you mean by 'changes that make sense'?) => just insert pauses at appropiate moments

## Related material

* TODO What activities are related to this?
* Are there any relevant web resources, books, etc.?

## Other use cases

### BFS/DFS

Prepare a graph and use only the black side of the tokens to show the graph:

* With BFS: flip tokens which are _in the queue_ to the red side.
* With DFS: flip tokens which are _in the stack_ to the red side.

### Dijsktra's algorithm

You can use the tokens for Dijsktra's algorithm of shortest path between vertices 's' and 't'. Use the black side of the nodes to represent the graph and draw the distance 'g' in the nodes. Once you find the path, flip all vertices on the path to the red side. This should give a nice explicit visualization of the path.

## TODO

TODO?

* three 4x1mm magnets are not strong enough, use different magnets
* design tools for coloring the plastic parts (3D printed holders)

## Gallery

![Render of token](token.png?raw=true)
![Pic1](pics/token-construction.JPG?raw=true)
![Pic2](pics/token-red.JPG?raw=true)
![Pic3](pics/token-black.JPG?raw=true)
![Pic4](pics/token-marked.JPG?raw=true)

## Author

Jan Koniarik, 2019
