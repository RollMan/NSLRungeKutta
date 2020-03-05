#!/usr/bin/python3
import matplotlib.pyplot as plt

cnt = 0
y = []
while True:
    try:
        x = float(input())
        
        y.append(x)
        cnt = cnt + 1
    except EOFError:
            break

plt.plot(range(len(y)), y)
plt.show()
