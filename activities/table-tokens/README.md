# Table Tokens

This is more a tool than activity. Idea is to make physical tokens that represents nodes of various trees, instead of drawing them on the table. These tokens contains magnets so they can 'stay' on the board. Each token is also double-sided, which is used in case of token for red-black trees.

Tokens are used when various tasks for redblack trees is done with the students on the whiteboard. This is done to reduce the time needed to do those tasks and to make more explicit visualization of tree node.

For the RB trees, one side has black ring, the other one has a red ring. This way to 'change' the color of node on the table, you only need to turn over the physical token. Another operation that is used a lot is 'swapping' the nodes. Again this just means moving the nodes around without heaving to re-draw them.

The edges between each nodes has to be drawn on the table itself, but they are usualy not redrawn much. 

## Learning outcomes

* Reduces time spent drawing/redrawing the trees
* The physicall tokens are also more "explicit" representation of 'node', rather than text on whiteboard.
* In case of graph usage, visualization of queue/stack is easier this way and is no so tedious.

## Setup and preparation

* Nodes has to be 3D printed (any 3d printer will suffice), the file to print is algo.stl
    * The file contains one half of the token
* You have to buy 4x1mm sized circular magnets, or any magnets you want and modify the 3D model
* For modification of model, OpenSCAD is required (algo.scad)
* Assembly guide:
    * paint each half of the token
    * glue the magnets inside the 3d models (simply try the count of magnets you really need, you do not have to fill all the positions)
    * glue the halfs together (or you can heat the edges of the halfs, so they melt together)

## Tips and tricks

* Remember to actually slow down in case you expect the students to write the tree/changes 
* They will do it anyway, it's good to realize that when they are writing something down, they are not paying attention
* My experience is that they won't write down each possible 'change' of the tree you made on the table, only the ones that make sense => just insert pauses at appropiate moments

## Another use cases

### BFS/DFS

Prepare a graph and use only the black side of the tokens to show the graph:

* With BFS: flip tokens which _are in the queue_ to the red side.
* With DFS: flip tokens which _are in the stack_ to the red side.

### Dijsktra

One can use this for dijsktra algorithm of shortest path between vertexes 's' and 't'. Use black side of the nodes to represent graph, drawn distance 'g' in the nodes and once you find the path -> flip all vertexes on the path to the red side.

This should give quite a nice explicit visualization of where the path is.

## Author

Jan Koniarik 2019
