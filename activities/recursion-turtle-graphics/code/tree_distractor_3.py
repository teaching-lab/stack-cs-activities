from turtle import Turtle
julie = Turtle()
julie.speed(3)
julie.left(90)


def tree(depth):
    if depth < 0:
        return
    julie.forward(100)
    julie.left(40)
    tree(depth-1)
    julie.left(100)
    tree(depth-1)
    julie.left(40)
    julie.forward(100)


tree(3)

julie.getscreen().getcanvas().postscript(file='tree_distractor_3.eps')
