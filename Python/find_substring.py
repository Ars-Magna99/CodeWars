'''
Input Format

The first line of input contains the original string. The next line contains the substring.

Output Format

Output the integer number indicating the total number of occurrences of the substring in the original string.

LINK: https://www.hackerrank.com/challenges/find-a-string/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
'''

def count_substring(string, sub_string):
    count = 0
    len_sub = len(sub_string)
    for i in range(0,len(string)):
        if string[i:i+len_sub] == sub_string:
            #print(string[i:i+len_sub])
            count += 1
    return count

if __name__ == '__main__':
    string = input().strip()
    sub_string = input().strip()
    
    count = count_substring(string, sub_string)
    print(count)
