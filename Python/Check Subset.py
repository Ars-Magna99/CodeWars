if __name__ == '__main__':
    T = int(input())
    for _ in range(T):
        A_num = int(input())
        a = [int(x) for x in input().split(maxsplit=A_num)[:A_num]]
        B_num = int(input())
        b = [int(x) for x in input().split(maxsplit=B_num)[:B_num]]

        if set(a) <= set(b):
            print(True)
        else:
            print(False)
