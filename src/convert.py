#!/usr/bin/python3

point_pos = 6

cnt = 0
while True:
    try:
        x = input()
        if cnt == 0:
            cnt = cnt + 1
            continue

        upper = int(x[:point_pos], 16)
        lower = int(x[point_pos:], 16) * 1.0/(2**8)



        print (upper + lower)
        cnt = cnt + 1
    except EOFError:
            break
