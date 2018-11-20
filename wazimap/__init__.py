def my_reduce(func, seq, init):
    r = [init]
    for i in range(len(seq)):
        r.append(func(r[i], seq[i]))

    return r[1:]


oper_array(sum, a, 0) = > [18, 87, -3, -81, -16, 24]

a = [18, 69, -90, -78, 65, 40]