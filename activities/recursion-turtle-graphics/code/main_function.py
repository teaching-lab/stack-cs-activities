def draw(depth):
    if depth < 1:
        return
    turtle.forward(100)
    turtle.left(40)
    draw(depth-1)
    turtle.left(100)
    draw(depth-1)
    turtle.left(40)
    turtle.forward(100)
