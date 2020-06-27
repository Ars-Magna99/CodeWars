'''
Link:https://www.hackerrank.com/challenges/string-validators/problem?isFullScreen=true

input:
A single line containing a string S.


output:
In the first line, print True if S has any alphanumeric characters. Otherwise, print False.
In the second line, print True if S has any alphabetical characters. Otherwise, print False.
In the third line, print True if S has any digits. Otherwise, print False.
In the fourth line, print True if S has any lowercase characters. Otherwise, print False.
In the fifth line, print True if S has any uppercase characters. Otherwise, print False.
'''



if __name__ == '__main__':
    s = input()
    
    
    score = 0
    #check for alphanumeric
    for i in s:
        if i.isalnum() == True:
            score += 1
    
    if score > 0:
        print(True)
    else:
        print(False)
    
    
    
    score = 0
    #check for alphabetical
    for i in s:
        if i.isalpha() == True:
            score += 1
    
    if score > 0:
        print(True)
    else:
        print(False)
    

    score = 0
    #check for digits
    for i in s:
        if i.isdigit() == True:
            score += 1
    
    if score > 0:
        print(True)
    else:
        print(False)
    
    score = 0
    #check for lower
    for i in s:
        if i.islower() == True:
            score += 1
    
    if score > 0:
        print(True)
    else:
        print(False)
    
    score = 0
    #check for upper
    for i in s:
        if i.isupper() == True:
            score += 1
    
    if score > 0:
        print(True)
    else:
        print(False)
    
