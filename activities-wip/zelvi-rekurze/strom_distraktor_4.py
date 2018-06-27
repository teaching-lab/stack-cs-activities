from turtle import Turtle
julie = Turtle()
julie.speed(3)
julie.left(90)


def tree(depth):
    if depth < 1:
        julie.left(180)
        return
    julie.forward(100)
    julie.left(40)
    tree(depth-1)
    if depth > 1:
        julie.left(100)
        julie.forward(100)
        julie.left(180)
        julie.forward(100)
        julie.left(40)
    else:
        julie.right(40)
    julie.forward(100)


tree(3)

julie.getscreen().getcanvas().postscript(file='strom_distraktor_4.eps')
