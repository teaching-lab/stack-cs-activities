from turtle import *
from math import sqrt

def polygon(num_sides, length):
    for _ in range(num_sides):
        forward(length)
        left(360 / num_sides)


def cross(length):
    for _ in range(2):
        forward(length / 2)
        right(180)
        forward(length)
        right(180)
        forward(length / 2)
        right(90)


def house(length):
    polygon(3, 100)
    right(90)
    polygon(4, 100)
    left(45)
    forward((sqrt(2) / 2) * length)
    cross((sqrt(2)) * length)
