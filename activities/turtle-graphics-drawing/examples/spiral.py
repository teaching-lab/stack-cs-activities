from turtle import *

def spiral(num_lines, angle):
    for step in range(num_lines):
        forward(step * 10)
        right(angle)
