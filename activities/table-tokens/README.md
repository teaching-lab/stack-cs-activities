![Render of token](token.png?raw=true)

# Table Tokens

This is more a tool than activity. Idea is to make physical tokens, that represents nodes of trees or vertices of graph, instead of drawing them on the table.
These tokens stick to the whiteboard (magnets) and are doublesided.

Tokens were designed because of various tasks for redblack trees.
These task are done on the whiteboard during the course and this physical tokens make mroe explicit visualization of  the tree, and it's also faster to make operations such as swaping the nodes, or changing colors.

For the RB trees, one side has black ring, the other one has a red ring. This way to 'change' the color of node on the table, you only need to turn over the physical token. Another operation that is used a lot is 'swap' of the nodes. This just means moving the nodes around without heaving to re-draw them.

The edges between each nodes has to be drawn on the table itself, but they are usualy not redrawn much. 

## Learning outcomes

* Reduces time spent drawing/redrawing the trees
* The physicall tokens are also more "explicit" representation of 'node', rather than text on whiteboard.
* In case of graph usage, visualization of queue/stack is easier this way and is not so tedious.

## Setup and preparation

* Nodes has to be 3D printed (any 3d printer will suffice), for one token:
    * 2x token.stl (rims of the tokens that contains magnets)
    * 2x token_plate.stl (plates on which user draws)
* Model is designed for 4x1mm tokens
* For modification of model, OpenSCAD is required (token.scad)
* Assembly guide:
    * glue the magnets inside the 3d models (simply try the count of magnets you really need, you do not have to fill all the positions)
    * paint the tokens itself, use these layers (used canned sprays):
        * base for plastic
        * filler (parts are 3D printer and this helps)
        * color
        * lacquer (if you want the color to be durable)
    * paint the token plates (this is necessary for the surface to work same way as whiteboard):
        * base for plastic
        * 4-5 thin layers of filler
        * use sandpaper to make the surface perfectly level
        * 4-5 thin layers of filler
        * sandpaper again
        * color
        * lacquer 
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

## TODO

* three 4x1mm magnets are not strong enough, use different magnets
* design tools for coloring the plastic parts (3D printed holders)

## Gallery

![Pic1](pics/IMG0221.JPG?raw=true)
![Pic1](pics/IMG0222.JPG?raw=true)
![Pic1](pics/IMG0223.JPG?raw=true)
![Pic1](pics/IMG0224.JPG?raw=true)

## Author

Jan Koniarik 2019
