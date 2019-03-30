#Write a function that takes such collection and counts the points of our team in the championship. Rules for counting points for each match:
#if x>y - 3 points
#if x<y - 0 point
#if x=y - 1 point
#Notes:
#there are 10 matches in the championship
#0 <= x <= 4
#0 <= y <= 4


def points(games):
    Total_point = 0
    for i in games:
        one_game = i.split(':')
        p1_score = int(one_game[0])
        p2_score = int(one_game[1])
        if p1_score > p2_score:
            Total_point += 3
        elif p1_score < p2_score:
            Total_point += 0 
        else:
            Total_point +=  1
    return Total_point
    
    
    #思路： 
    # 1. 先设定一个值用作总分，接下来用于加
    # 2.for-loop整个game
    #   将每个元素按照 ： 来拆分（拆分完return的是一个list）
    #   取出这个list中的两个元素，分别放入两个变量内
    # 3. 按照题目所给标准，用if-elif-else 来计算总分值。
    # 4.返回总分
