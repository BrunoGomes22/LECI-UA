# Exercise 5 on "How to think like a computer scientist", ch. 11.

import turtle

t = turtle.Turtle()

# Use t.up(), t.down() and t.goto(x, y)

# Put your code here
fileObj = open('drawing.txt', 'r')
for line in fileObj:
    if line == "UP\n":
        t.up()
    elif line == "DOWN\n":
        t.down()
    else:
      x = line.split()
      t.goto(int(x[0]),int(x[1]))

fileObj.close()
# wait
turtle.Screen().exitonclick()

