from turtle import Turtle
julie = Turtle()
julie.speed(3)
julie.left(90)


def tree(length):
    if length < 20:
        return
    julie.forward(length)
    julie.left(40)
    tree(length/2)
    julie.left(100)
    tree(length/2)
    julie.left(40)
    julie.forward(length)


tree(100)

julie.getscreen().getcanvas().postscript(file='tree_distractor_1.eps')
