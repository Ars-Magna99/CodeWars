def convert(s): 
  
    # initialization of string to "" 
    new = "" 
  
    # traverse in the string  
    for x in s: 
        new += x  
  
    # return string  
    return new 

 
import copy

def swap_case(s):
    s_list = [char for char in s]
    s_changed = copy.deepcopy(s_list)
    for i in range(len(s_changed)):
        if s_changed[i].isupper() == True:
            s_changed[i] = s_changed[i].lower()
        elif s_changed[i].islower() == True:
            s_changed[i] = s_changed[i].upper()
    #print(s_changed)
    return convert(s_changed)
    

if __name__ == '__main__':
    s = input()
    result = swap_case(s)
    print(result)
