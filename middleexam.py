
### Python middle exam
##
#



##################### ---------- TASK 1 ---------- ################################


# Write a Python program that checks if a given word is a palindrome (reads the same forward and backward).

# Example: kiyik, aziza

# Solution 1: With creating Function

def palindrome_checker(string : str) -> bool:
    if string.lower() == string.lower()[::-1]:
        return True
    else:
        return False
    
print(palindrome_checker("anNa"))
    
# Solution 2: For better view

string = "Hello"

if string.lower() == string.lower()[::-1]:
    print(f"{string} is palindrome.")
else:
    print(f"'{string}' is not palindrome.")

##################### ---------- TASK 2 ---------- ################################


# Write a Python script to print a dictionary where the keys are numbers between 1 and 15 (both included) and the values 
# are the square of the keys.

# Expected_output = {1: 1, 2: 4, 3: 9, 4: 16, 5: 25, 6: 36, 7: 49, 8: 64, 9: 81, 10: 100, 11: 121, 12: 144, 13: 169, 14: 196, 15: 225}

# Solution:


my_dict = {}
for i in range(1, 16):
    my_dict[i] = i ** 2

print(my_dict)



##################### ---------- TASK 3 ---------- ##################################

# Given an integer, n, perform the following conditional actions:

# If n is odd, print Weird
# If n is even and in the inclusive range of 2 to 5, print Not Weird
# If n is even and in the inclusive range of 6 to 20, print Weird
# If n is even and greater than 20, print Not Weird

# Example:
# Input:
# 3
# Output:
# Weird

# Solution:

num = 3


if num % 2 == 0: 
    if num in range(2,6):
        print("Not Weird")
    elif num in range(6,21):
        print("Weird")
    else:
        print("Not Weird")
else: 
    print("Weird")   


##################### ---------- TASK 4 ---------- ################################



# Print reverse number pattern

# 5 4 3 2 1
# 4 3 2 1
# 3 2 1
# 2 1
# 1

# Solution:

for i in range(5, 0, -1):        
    for j in range(i, 0, -1):    
        print(j, end=' ')
    print()                      

##################### ---------- TASK 5 ---------- ##################################


# Berilgan N sonidan oshmaydigan barcha 2 ning darajalarini (ya'ni, 2**k shaklidagi sonlarni) 
# chop etuvchi funksiyani yozing.

# Misol:
# Kiritish:
# 10
# Natija:
# 2 4 8
# (Izoh: 10 dan kichik yoki teng bo'lgan 2 ning darajalari: 2, 4, 8.)

# Solution:
n = 10
num = []
p = 1 
while 2 ** p <= n:
    print(2 ** p, end= ' ')
    p += 1


